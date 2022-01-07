; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_smdr_match_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_smdr_match_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_shmem_dscptr = type { i64, i32 }

@CVMX_SHMEM_OWNER_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_shmem_dscptr* (%struct.cvmx_shmem_dscptr*, i8*)* @__cvmx_shmem_smdr_match_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_shmem_dscptr* @__cvmx_shmem_smdr_match_name(%struct.cvmx_shmem_dscptr* %0, i8* %1) #0 {
  %3 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %4 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cvmx_shmem_dscptr*, align 8
  store %struct.cvmx_shmem_dscptr* %0, %struct.cvmx_shmem_dscptr** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  store %struct.cvmx_shmem_dscptr* null, %struct.cvmx_shmem_dscptr** %7, align 8
  %9 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  %10 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CVMX_SHMEM_OWNER_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.cvmx_shmem_dscptr* null, %struct.cvmx_shmem_dscptr** %3, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  %17 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strcmp(i32 %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %4, align 8
  store %struct.cvmx_shmem_dscptr* %23, %struct.cvmx_shmem_dscptr** %7, align 8
  br label %24

24:                                               ; preds = %22, %15
  %25 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %7, align 8
  store %struct.cvmx_shmem_dscptr* %25, %struct.cvmx_shmem_dscptr** %3, align 8
  br label %26

26:                                               ; preds = %24, %14
  %27 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %3, align 8
  ret %struct.cvmx_shmem_dscptr* %27
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
