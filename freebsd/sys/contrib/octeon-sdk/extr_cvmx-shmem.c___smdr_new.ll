; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___smdr_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___smdr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_shmem_smdr = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32*, i32*, i64, i64, i32 }

@CVMX_SHMEM_NUM_DSCPTR = common dso_local global i32 0, align 4
@CVMX_SHMEM_OWNER_NONE = common dso_local global i32 0, align 4
@CVMX_SHMEM_VADDR64_START = common dso_local global i64 0, align 8
@__CHECK_APP_SMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvmx_shmem_smdr*)* @__smdr_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__smdr_new(%struct.cvmx_shmem_smdr* %0) #0 {
  %2 = alloca %struct.cvmx_shmem_smdr*, align 8
  %3 = alloca i32, align 4
  store %struct.cvmx_shmem_smdr* %0, %struct.cvmx_shmem_smdr** %2, align 8
  %4 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %5 = icmp ne %struct.cvmx_shmem_smdr* %4, null
  br i1 %5, label %6, label %86

6:                                                ; preds = %1
  %7 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %8 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %7, i32 0, i32 0
  %9 = call i32 @cvmx_spinlock_init(i32* %8)
  %10 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %11 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %10, i32 0, i32 0
  %12 = call i32 @cvmx_spinlock_lock(i32* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %75, %6
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CVMX_SHMEM_NUM_DSCPTR, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %78

17:                                               ; preds = %13
  %18 = load i32, i32* @CVMX_SHMEM_OWNER_NONE, align 4
  %19 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %20 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  store i32 %18, i32* %25, align 8
  %26 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %27 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %34 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %41 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %48 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %55 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %62 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %69 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %17
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %13

78:                                               ; preds = %13
  %79 = load i64, i64* @CVMX_SHMEM_VADDR64_START, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %82 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.cvmx_shmem_smdr*, %struct.cvmx_shmem_smdr** %2, align 8
  %84 = getelementptr inbounds %struct.cvmx_shmem_smdr, %struct.cvmx_shmem_smdr* %83, i32 0, i32 0
  %85 = call i32 @cvmx_spinlock_unlock(i32* %84)
  br label %86

86:                                               ; preds = %78, %1
  %87 = load i32, i32* @__CHECK_APP_SMDR, align 4
  ret void
}

declare dso_local i32 @cvmx_spinlock_init(i32*) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
