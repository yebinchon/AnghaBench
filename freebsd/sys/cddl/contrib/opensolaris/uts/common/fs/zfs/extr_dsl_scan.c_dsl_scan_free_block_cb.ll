; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_free_block_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_free_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@DMU_OT_OBJSET = common dso_local global i64 0, align 8
@ERESTART = common dso_local global i32 0, align 4
@DD_USED_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_12__*)* @dsl_scan_free_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_scan_free_block_cb(i8* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @BP_GET_LEVEL(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @BP_GET_TYPE(i32* %20)
  %22 = load i64, i64* @DMU_OT_OBJSET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %19, %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = call i64 @dsl_scan_async_block_should_pause(%struct.TYPE_11__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @ERESTART, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %19, %15
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = call i32 @dmu_tx_get_txg(%struct.TYPE_12__* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @BP_GET_PSIZE(i32* %44)
  %46 = call i32 @zio_free_sync(i32 %35, i32 %40, i32 %42, i32* %43, i32 %45, i32 0)
  %47 = call i32 @zio_nowait(i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DD_USED_HEAD, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @bp_get_dsize_sync(i32 %58, i32* %59)
  %61 = sub nsw i32 0, %60
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @BP_GET_PSIZE(i32* %62)
  %64 = sub nsw i32 0, %63
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @BP_GET_UCSIZE(i32* %65)
  %67 = sub nsw i32 0, %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = call i32 @dsl_dir_diduse_space(i32 %52, i32 %53, i32 %61, i32 %64, i32 %67, %struct.TYPE_12__* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %32, %28
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @BP_GET_LEVEL(i32*) #1

declare dso_local i64 @BP_GET_TYPE(i32*) #1

declare dso_local i64 @dsl_scan_async_block_should_pause(%struct.TYPE_11__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_free_sync(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_get_txg(%struct.TYPE_12__*) #1

declare dso_local i32 @BP_GET_PSIZE(i32*) #1

declare dso_local i32 @dsl_dir_diduse_space(i32, i32, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @bp_get_dsize_sync(i32, i32*) #1

declare dso_local i32 @BP_GET_UCSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
