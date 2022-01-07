; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_interp.c_interact.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_interp.c_interact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interact.input = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"\0AType '?' for a list of commands, 'help' for more detailed help.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"${interpret}\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"interpret\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interact() #0 {
  %1 = call i32 (...) @interp_init()
  %2 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @autoboot_maybe()
  %4 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %14

14:                                               ; preds = %12, %9
  br label %15

15:                                               ; preds = %15, %14
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @interact.input, i64 0, i64 0), align 16
  %16 = call i32 (...) @interp_emit_prompt()
  %17 = call i32 @ngets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @interact.input, i64 0, i64 0), i32 256)
  %18 = call i32 @interp_run(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @interact.input, i64 0, i64 0))
  br label %15
}

declare dso_local i32 @interp_init(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @autoboot_maybe(...) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @interp_emit_prompt(...) #1

declare dso_local i32 @ngets(i8*, i32) #1

declare dso_local i32 @interp_run(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
