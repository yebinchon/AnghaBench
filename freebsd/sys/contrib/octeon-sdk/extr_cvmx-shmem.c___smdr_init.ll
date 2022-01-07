; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___smdr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___smdr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_shmem_smdr = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@CVMX_SHMEM_DSCPTR_NAME = common dso_local global i8* null, align 8
@__smdr = common dso_local global %struct.cvmx_shmem_smdr* null, align 8
@.str = private unnamed_addr constant [92 x i8] c"SMDR named block is created by another application with different size %lu, expecting %lu \0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"cvmx_shmem: Failed to allocate or find SMDR from bootmem \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_shmem_smdr* ()* @__smdr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_shmem_smdr* @__smdr_init() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %1, align 8
  store i64 4, i64* %2, align 8
  %4 = load i8*, i8** @CVMX_SHMEM_DSCPTR_NAME, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @cvmx_bootmem_alloc_named(i64 %5, i32 65536, i8* %6)
  %8 = inttoptr i64 %7 to %struct.cvmx_shmem_smdr*
  store %struct.cvmx_shmem_smdr* %8, %struct.cvmx_shmem_smdr** @__smdr, align 8
  %9 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** @__smdr, align 8
  %10 = icmp ne %struct.cvmx_shmem_smdr* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** @__smdr, align 8
  %13 = call i32 @__smdr_new(%struct.cvmx_shmem_smdr* %12)
  br label %44

14:                                               ; preds = %0
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.TYPE_3__* @cvmx_bootmem_find_named_block(i8* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %1, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @cvmx_phys_to_ptr(i32 %22)
  %24 = inttoptr i64 %23 to %struct.cvmx_shmem_smdr*
  store %struct.cvmx_shmem_smdr* %24, %struct.cvmx_shmem_smdr** @__smdr, align 8
  %25 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** @__smdr, align 8
  %26 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %25, i32 0, i32 0
  %27 = call i32 @cvmx_spinlock_lock(i32* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %2, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %2, align 8
  %38 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  store %struct.cvmx_shmem_smdr* null, %struct.cvmx_shmem_smdr** @__smdr, align 8
  br label %39

39:                                               ; preds = %33, %19
  %40 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** @__smdr, align 8
  %41 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %40, i32 0, i32 0
  %42 = call i32 @cvmx_spinlock_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %14
  br label %44

44:                                               ; preds = %43, %11
  %45 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** @__smdr, align 8
  %46 = icmp ne %struct.cvmx_shmem_smdr* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** @__smdr, align 8
  ret %struct.cvmx_shmem_smdr* %50
}

declare dso_local i64 @cvmx_bootmem_alloc_named(i64, i32, i8*) #1

declare dso_local i32 @__smdr_new(%struct.cvmx_shmem_smdr*) #1

declare dso_local %struct.TYPE_3__* @cvmx_bootmem_find_named_block(i8*) #1

declare dso_local i64 @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
