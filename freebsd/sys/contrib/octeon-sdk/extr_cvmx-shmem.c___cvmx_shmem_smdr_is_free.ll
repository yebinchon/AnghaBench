; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_smdr_is_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_smdr_is_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_shmem_dscptr = type { i64 }

@CVMX_SHMEM_OWNER_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)* @__cvmx_shmem_smdr_is_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_shmem_dscptr* @__cvmx_shmem_smdr_is_free(%struct.cvmx_shmem_dscptr* %0, i8* %1) #0 {
  %3 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %4 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %5 = alloca i8*, align 8
  store %struct.cvmx_shmem_dscptr* %0, %struct.cvmx_shmem_dscptr** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  %7 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CVMX_SHMEM_OWNER_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  store %struct.cvmx_shmem_dscptr* %12, %struct.cvmx_shmem_dscptr** %3, align 8
  br label %14

13:                                               ; preds = %2
  store %struct.cvmx_shmem_dscptr* null, %struct.cvmx_shmem_dscptr** %3, align 8
  br label %14

14:                                               ; preds = %13, %11
  %15 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %3, align 8
  ret %struct.cvmx_shmem_dscptr* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
