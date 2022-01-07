; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_to_bsd_ipc_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ipc.c_linux_to_bsd_ipc_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_ipc64_perm = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc_perm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l_ipc64_perm*, %struct.ipc_perm*)* @linux_to_bsd_ipc_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_to_bsd_ipc_perm(%struct.l_ipc64_perm* %0, %struct.ipc_perm* %1) #0 {
  %3 = alloca %struct.l_ipc64_perm*, align 8
  %4 = alloca %struct.ipc_perm*, align 8
  store %struct.l_ipc64_perm* %0, %struct.l_ipc64_perm** %3, align 8
  store %struct.ipc_perm* %1, %struct.ipc_perm** %4, align 8
  %5 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %3, align 8
  %6 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %9 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %3, align 8
  %11 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %14 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %3, align 8
  %16 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %19 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %3, align 8
  %21 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %24 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %3, align 8
  %26 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %29 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %3, align 8
  %31 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %34 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.l_ipc64_perm*, %struct.l_ipc64_perm** %3, align 8
  %36 = getelementptr inbounds %struct.l_ipc64_perm, %struct.l_ipc64_perm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipc_perm*, %struct.ipc_perm** %4, align 8
  %39 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
