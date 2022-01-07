; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_bsd_to_linux_shminfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_bsd_to_linux_shminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shminfo = type { i32, i32, i32, i32, i32 }
%struct.l_shminfo64 = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shminfo*, %struct.l_shminfo64*)* @bsd_to_linux_shminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_shminfo(%struct.shminfo* %0, %struct.l_shminfo64* %1) #0 {
  %3 = alloca %struct.shminfo*, align 8
  %4 = alloca %struct.l_shminfo64*, align 8
  store %struct.shminfo* %0, %struct.shminfo** %3, align 8
  store %struct.l_shminfo64* %1, %struct.l_shminfo64** %4, align 8
  %5 = load %struct.shminfo*, %struct.shminfo** %3, align 8
  %6 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.l_shminfo64*, %struct.l_shminfo64** %4, align 8
  %9 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.shminfo*, %struct.shminfo** %3, align 8
  %11 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.l_shminfo64*, %struct.l_shminfo64** %4, align 8
  %14 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.shminfo*, %struct.shminfo** %3, align 8
  %16 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.l_shminfo64*, %struct.l_shminfo64** %4, align 8
  %19 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.shminfo*, %struct.shminfo** %3, align 8
  %21 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.l_shminfo64*, %struct.l_shminfo64** %4, align 8
  %24 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.shminfo*, %struct.shminfo** %3, align 8
  %26 = getelementptr inbounds %struct.shminfo, %struct.shminfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.l_shminfo64*, %struct.l_shminfo64** %4, align 8
  %29 = getelementptr inbounds %struct.l_shminfo64, %struct.l_shminfo64* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
