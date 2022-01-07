; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_mincore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_mincore_args = type { i32, i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_mincore(%struct.thread* %0, %struct.linux_mincore_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_mincore_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_mincore_args* %1, %struct.linux_mincore_args** %5, align 8
  %6 = load %struct.linux_mincore_args*, %struct.linux_mincore_args** %5, align 8
  %7 = getelementptr inbounds %struct.linux_mincore_args, %struct.linux_mincore_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PAGE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load %struct.linux_mincore_args*, %struct.linux_mincore_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_mincore_args, %struct.linux_mincore_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.linux_mincore_args*, %struct.linux_mincore_args** %5, align 8
  %20 = getelementptr inbounds %struct.linux_mincore_args, %struct.linux_mincore_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.linux_mincore_args*, %struct.linux_mincore_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_mincore_args, %struct.linux_mincore_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kern_mincore(%struct.thread* %15, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @kern_mincore(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
