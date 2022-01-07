; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___smdr_iterator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___smdr_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cvmx_shmem_dscptr* }
%struct.cvmx_shmem_dscptr = type { i32 }

@__CHECK_APP_SMDR = common dso_local global i32 0, align 4
@CVMX_SHMEM_NUM_DSCPTR = common dso_local global i32 0, align 4
@__smdr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)*, i8*)* @__smdr_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_shmem_dscptr* @__smdr_iterator(%struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)* %0, i8* %1) #0 {
  %3 = alloca %struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %6 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %7 = alloca i32, align 4
  store %struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)* %0, %struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.cvmx_shmem_dscptr* null, %struct.cvmx_shmem_dscptr** %6, align 8
  %8 = load i32, i32* @__CHECK_APP_SMDR, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @CVMX_SHMEM_NUM_DSCPTR, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__smdr, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %16, i64 %18
  store %struct.cvmx_shmem_dscptr* %19, %struct.cvmx_shmem_dscptr** %5, align 8
  %20 = load %struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)*, %struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)** %3, align 8
  %21 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.cvmx_shmem_dscptr* %20(%struct.cvmx_shmem_dscptr* %21, i8* %22)
  store %struct.cvmx_shmem_dscptr* %23, %struct.cvmx_shmem_dscptr** %6, align 8
  %24 = icmp ne %struct.cvmx_shmem_dscptr* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %30

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %9

30:                                               ; preds = %25, %9
  %31 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %6, align 8
  ret %struct.cvmx_shmem_dscptr* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
