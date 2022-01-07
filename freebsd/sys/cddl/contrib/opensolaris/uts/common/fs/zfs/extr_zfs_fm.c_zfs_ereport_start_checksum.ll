; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_fm.c_zfs_ereport_start_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_fm.c_zfs_ereport_start_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.zio = type { %struct.TYPE_17__*, %struct.TYPE_15__*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i32 (i32, i32)*, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.zio*, %struct.TYPE_18__*, i8*)* }

@KM_SLEEP = common dso_local global i32 0, align 4
@FM_EREPORT_ZFS_CHECKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_ereport_start_checksum(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.zio* %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.zio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store %struct.zio* %2, %struct.zio** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* @KM_SLEEP, align 4
  %17 = call i8* @kmem_zalloc(i32 56, i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %15, align 8
  %19 = load %struct.zio*, %struct.zio** %10, align 8
  %20 = getelementptr inbounds %struct.zio, %struct.zio* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load %struct.zio*, %struct.zio** %10, align 8
  %25 = getelementptr inbounds %struct.zio, %struct.zio* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32 (%struct.zio*, %struct.TYPE_18__*, i8*)*, i32 (%struct.zio*, %struct.TYPE_18__*, i8*)** %27, align 8
  %29 = load %struct.zio*, %struct.zio** %10, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 %28(%struct.zio* %29, %struct.TYPE_18__* %30, i8* %31)
  br label %38

33:                                               ; preds = %7
  %34 = load %struct.zio*, %struct.zio** %10, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @zio_vsd_default_cksum_report(%struct.zio* %34, %struct.TYPE_18__* %35, i8* %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load i32*, i32** %14, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* @KM_SLEEP, align 4
  %43 = call i8* @kmem_zalloc(i32 4, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_18__*
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %46, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = call i32 @bcopy(i32* %47, %struct.TYPE_18__* %50, i32 4)
  br label %52

52:                                               ; preds = %41, %38
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = shl i64 1, %57
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = call i32 @mutex_enter(i32* %65)
  %67 = load %struct.zio*, %struct.zio** %10, align 8
  %68 = getelementptr inbounds %struct.zio, %struct.zio* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %75 = load %struct.zio*, %struct.zio** %10, align 8
  %76 = getelementptr inbounds %struct.zio, %struct.zio* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = call i32 @mutex_exit(i32* %80)
  ret void
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @zio_vsd_default_cksum_report(%struct.zio*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
