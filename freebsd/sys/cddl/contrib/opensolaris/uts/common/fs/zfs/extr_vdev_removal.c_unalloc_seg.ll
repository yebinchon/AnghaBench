; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_unalloc_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_unalloc_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32*, i32 }

@TXG_INITIAL = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_OFF = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @unalloc_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unalloc_seg(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* @TXG_INITIAL, align 4
  %17 = load i32, i32* @TXG_INITIAL, align 4
  %18 = call i32 @BP_SET_BIRTH(%struct.TYPE_14__* %9, i32 %16, i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @BP_SET_LSIZE(%struct.TYPE_14__* %9, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @BP_SET_PSIZE(%struct.TYPE_14__* %9, i64 %21)
  %23 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %24 = call i32 @BP_SET_COMPRESS(%struct.TYPE_14__* %9, i32 %23)
  %25 = load i32, i32* @ZIO_CHECKSUM_OFF, align 4
  %26 = call i32 @BP_SET_CHECKSUM(%struct.TYPE_14__* %9, i32 %25)
  %27 = load i32, i32* @DMU_OT_NONE, align 4
  %28 = call i32 @BP_SET_TYPE(%struct.TYPE_14__* %9, i32 %27)
  %29 = call i32 @BP_SET_LEVEL(%struct.TYPE_14__* %9, i32 0)
  %30 = call i32 @BP_SET_DEDUP(%struct.TYPE_14__* %9, i32 0)
  %31 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %32 = call i32 @BP_SET_BYTEORDER(%struct.TYPE_14__* %9, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DVA_GET_VDEV(i32 %38)
  %40 = call i32 @DVA_SET_VDEV(i32* %35, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @DVA_GET_OFFSET(i32 %46)
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @DVA_SET_OFFSET(i32* %43, i64 %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @DVA_SET_ASIZE(i32* %53, i64 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @zio_free(i32* %56, i32 %59, %struct.TYPE_14__* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BP_SET_BIRTH(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @BP_SET_LSIZE(%struct.TYPE_14__*, i64) #2

declare dso_local i32 @BP_SET_PSIZE(%struct.TYPE_14__*, i64) #2

declare dso_local i32 @BP_SET_COMPRESS(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @BP_SET_CHECKSUM(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @BP_SET_TYPE(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @BP_SET_LEVEL(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @BP_SET_DEDUP(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @BP_SET_BYTEORDER(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @DVA_SET_VDEV(i32*, i32) #2

declare dso_local i32 @DVA_GET_VDEV(i32) #2

declare dso_local i32 @DVA_SET_OFFSET(i32*, i64) #2

declare dso_local i64 @DVA_GET_OFFSET(i32) #2

declare dso_local i32 @DVA_SET_ASIZE(i32*, i64) #2

declare dso_local i32 @zio_free(i32*, i32, %struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
