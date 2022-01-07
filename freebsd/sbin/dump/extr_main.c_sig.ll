; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pipeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Signal on pipe: cannot recover\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Rewriting attempted as response to unknown signal.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@X_REWRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SIGSEGV: ABORTING!\0A\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sig(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %23 [
    i32 134, label %4
    i32 133, label %4
    i32 132, label %4
    i32 131, label %4
    i32 129, label %4
    i32 128, label %4
    i32 130, label %18
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1
  %5 = load i32, i32* @pipeout, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 @quit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %4
  %10 = call i32 @msg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fflush(i32 %11)
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fflush(i32 %13)
  %15 = call i32 (...) @close_rewind()
  %16 = load i32, i32* @X_REWRITE, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %1
  %19 = call i32 @msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @SIG_DFL, align 4
  %21 = call i32 @signal(i32 130, i32 %20)
  %22 = call i32 @kill(i32 0, i32 130)
  br label %23

23:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @quit(i8*) #1

declare dso_local i32 @msg(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @close_rewind(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
