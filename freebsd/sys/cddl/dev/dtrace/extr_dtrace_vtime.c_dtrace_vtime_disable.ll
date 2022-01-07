; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_vtime.c_dtrace_vtime_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_vtime.c_dtrace_vtime_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dtrace_vtime_active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DTrace virtual time already disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_vtime_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i32, i32* @dtrace_vtime_active, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  switch i32 %5, label %10 [
    i32 131, label %6
    i32 130, label %7
    i32 129, label %8
    i32 128, label %8
  ]

6:                                                ; preds = %3
  store i32 129, i32* %2, align 4
  br label %10

7:                                                ; preds = %3
  store i32 128, i32* %2, align 4
  br label %10

8:                                                ; preds = %3, %3
  %9 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %3, %7, %6
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @dtrace_cas32(i32* @dtrace_vtime_active, i32 %12, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %3, label %17

17:                                               ; preds = %11
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @dtrace_cas32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
