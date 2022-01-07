; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_machdep.c_linux_mmap2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_machdep.c_linux_mmap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_mmap2_args = type { i32, i32, i32, i32, i32, i32 }

@machdep = common dso_local global i32 0, align 4
@todo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_mmap2(%struct.thread* %0, %struct.linux_mmap2_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_mmap2_args*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_mmap2_args* %1, %struct.linux_mmap2_args** %4, align 8
  %5 = load i32, i32* @machdep, align 4
  %6 = load i32, i32* @todo, align 4
  %7 = call i32 @LIN_SDT_PROBE0(i32 %5, i32 (%struct.thread*, %struct.linux_mmap2_args*)* @linux_mmap2, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = load %struct.linux_mmap2_args*, %struct.linux_mmap2_args** %4, align 8
  %10 = getelementptr inbounds %struct.linux_mmap2_args, %struct.linux_mmap2_args* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @PTROUT(i32 %11)
  %13 = load %struct.linux_mmap2_args*, %struct.linux_mmap2_args** %4, align 8
  %14 = getelementptr inbounds %struct.linux_mmap2_args, %struct.linux_mmap2_args* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.linux_mmap2_args*, %struct.linux_mmap2_args** %4, align 8
  %17 = getelementptr inbounds %struct.linux_mmap2_args, %struct.linux_mmap2_args* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.linux_mmap2_args*, %struct.linux_mmap2_args** %4, align 8
  %20 = getelementptr inbounds %struct.linux_mmap2_args, %struct.linux_mmap2_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.linux_mmap2_args*, %struct.linux_mmap2_args** %4, align 8
  %23 = getelementptr inbounds %struct.linux_mmap2_args, %struct.linux_mmap2_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.linux_mmap2_args*, %struct.linux_mmap2_args** %4, align 8
  %26 = getelementptr inbounds %struct.linux_mmap2_args, %struct.linux_mmap2_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @linux_mmap_common(%struct.thread* %8, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  ret i32 %28
}

declare dso_local i32 @LIN_SDT_PROBE0(i32, i32 (%struct.thread*, %struct.linux_mmap2_args*)*, i32) #1

declare dso_local i32 @linux_mmap_common(%struct.thread*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PTROUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
