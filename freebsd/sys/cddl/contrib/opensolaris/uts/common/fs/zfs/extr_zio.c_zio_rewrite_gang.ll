; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_rewrite_gang.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_rewrite_gang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@SPA_GANGBLOCKSIZE = common dso_local global i32 0, align 4
@zio_gang_issue_func_done = common dso_local global i32 0, align 4
@ZIO_FLAG_INDUCE_DAMAGE = common dso_local global i32 0, align 4
@ZIO_VDEV_IO_STAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_12__*, i32*, %struct.TYPE_13__*, i32*, i32)* @zio_rewrite_gang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @zio_rewrite_gang(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %78

16:                                               ; preds = %5
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %21 = call i32* @abd_get_from_buf(i32 %19, i32 %20)
  store i32* %21, i32** %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %32 = load i32, i32* @zio_gang_issue_func_done, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = call i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call %struct.TYPE_12__* @zio_rewrite(%struct.TYPE_12__* %22, i32 %25, i32 %28, i32* %29, i32* %30, i32 %31, i32 %32, i32* null, i32 %35, i32 %37, i32* %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %11, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp ne %struct.TYPE_13__* %41, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %16
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32* @abd_get_offset(i32* %49, i32 %50)
  store i32* %51, i32** %13, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @BP_GET_CHECKSUM(i32* %53)
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @BP_GET_PSIZE(i32* %56)
  %58 = call i32 @zio_checksum_compute(%struct.TYPE_12__* %52, i32 %54, i32* %55, i32 %57)
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @abd_put(i32* %59)
  br label %61

61:                                               ; preds = %48, %16
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ZIO_FLAG_INDUCE_DAMAGE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i32, i32* @ZIO_VDEV_IO_STAGES, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %61
  br label %101

78:                                               ; preds = %5
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32* @abd_get_offset(i32* %87, i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @BP_GET_PSIZE(i32* %90)
  %92 = load i32, i32* @zio_gang_issue_func_done, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = call i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_12__* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = call %struct.TYPE_12__* @zio_rewrite(%struct.TYPE_12__* %79, i32 %82, i32 %85, i32* %86, i32* %89, i32 %91, i32 %92, i32* null, i32 %95, i32 %97, i32* %99)
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %11, align 8
  br label %101

101:                                              ; preds = %78, %77
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  ret %struct.TYPE_12__* %102
}

declare dso_local i32* @abd_get_from_buf(i32, i32) #1

declare dso_local %struct.TYPE_12__* @zio_rewrite(%struct.TYPE_12__*, i32, i32, i32*, i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_12__*) #1

declare dso_local i32* @abd_get_offset(i32*, i32) #1

declare dso_local i32 @zio_checksum_compute(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @BP_GET_CHECKSUM(i32*) #1

declare dso_local i32 @BP_GET_PSIZE(i32*) #1

declare dso_local i32 @abd_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
