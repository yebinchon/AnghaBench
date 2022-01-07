; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_repair_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_repair_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@ddt_repair_entry_done = common dso_local global i32 0, align 4
@DDT_PHYS_TYPES = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_17__*)* @ddt_repair_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddt_repair_entry(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ddt_repair_entry_done, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_17__* @zio_null(%struct.TYPE_17__* %26, i32 %29, i32* null, i32 %30, %struct.TYPE_20__* %31, i32 %34)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %13, align 8
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %84, %4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @DDT_PHYS_TYPES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @bcmp(i32 %56, i32 %59, i32 4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %45, %40
  br label %84

63:                                               ; preds = %53
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = call i32 @ddt_bp_create(i32 %66, i32* %67, %struct.TYPE_19__* %68, i32* %14)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @DDK_GET_PSIZE(i32* %77)
  %79 = load i32, i32* @ZIO_PRIORITY_SYNC_WRITE, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %81 = call i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_17__* %80)
  %82 = call %struct.TYPE_17__* @zio_rewrite(%struct.TYPE_17__* %70, i32 %73, i32 0, i32* %14, i32 %76, i32 %78, i32* null, i32* null, i32 %79, i32 %81, i32* null)
  %83 = call i32 @zio_nowait(%struct.TYPE_17__* %82)
  br label %84

84:                                               ; preds = %63, %62
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 1
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %9, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 1
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %10, align 8
  br label %36

91:                                               ; preds = %36
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %93 = call i32 @zio_nowait(%struct.TYPE_17__* %92)
  ret void
}

declare dso_local %struct.TYPE_17__* @zio_null(%struct.TYPE_17__*, i32, i32*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i32 @ddt_bp_create(i32, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @zio_rewrite(%struct.TYPE_17__*, i32, i32, i32*, i32, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @DDK_GET_PSIZE(i32*) #1

declare dso_local i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
