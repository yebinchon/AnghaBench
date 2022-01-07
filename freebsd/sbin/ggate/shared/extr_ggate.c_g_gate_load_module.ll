; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/shared/extr_ggate.c_g_gate_load_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/shared/extr_ggate.c_g_gate_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"g_gate\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"geom_gate\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"geom_gate module not available!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_gate_load_module() #0 {
  %1 = call i32 @modfind(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = call i32 @kldload(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = call i32 @modfind(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %6, %3
  %10 = load i64, i64* @errno, align 8
  %11 = load i64, i64* @EEXIST, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @errx(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16, %6
  br label %18

18:                                               ; preds = %17, %0
  ret void
}

declare dso_local i32 @modfind(i8*) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
