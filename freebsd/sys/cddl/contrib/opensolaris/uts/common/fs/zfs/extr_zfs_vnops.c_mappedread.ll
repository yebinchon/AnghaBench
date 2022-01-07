; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_mappedread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_mappedread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sf_buf = type { i32 }

@PAGEOFFSET = common dso_local global i32 0, align 4
@PAGEMASK = common dso_local global i32 0, align 4
@PAGESIZE = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, %struct.TYPE_14__*)* @mappedread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mappedread(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.sf_buf*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = call %struct.TYPE_12__* @VTOZ(%struct.TYPE_13__* %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PAGEOFFSET, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @zfs_vmobject_wlock(i32* %40)
  %42 = load i32, i32* @PAGEMASK, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %99, %3
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %45
  %49 = load i64, i64* @PAGESIZE, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @MIN(i64 %52, i32 %53)
  store i64 %54, i64* %15, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @page_wire(%struct.TYPE_13__* %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %48
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @zfs_vmobject_wunlock(i32* %60)
  %62 = load i32, i32* %14, align 4
  %63 = call i64 @zfs_map_page(i32 %62, %struct.sf_buf** %16)
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i64, i64* %15, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = call i32 @vn_io_fault_uiomove(i64 %67, i64 %68, %struct.TYPE_14__* %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.sf_buf*, %struct.sf_buf** %16, align 8
  %72 = call i32 @zfs_unmap_page(%struct.sf_buf* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @zfs_vmobject_wlock(i32* %73)
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @page_unwire(i32 %75)
  br label %89

77:                                               ; preds = %48
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @zfs_vmobject_wunlock(i32* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sa_get_db(i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @dmu_read_uio_dbuf(i32 %83, %struct.TYPE_14__* %84, i64 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @zfs_vmobject_wlock(i32* %87)
  br label %89

89:                                               ; preds = %77, %59
  %90 = load i64, i64* %15, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %105

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* @PAGESIZE, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %9, align 4
  br label %45

105:                                              ; preds = %97, %45
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @zfs_vmobject_wunlock(i32* %106)
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_12__* @VTOZ(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_vmobject_wlock(i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @page_wire(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @zfs_vmobject_wunlock(i32*) #1

declare dso_local i64 @zfs_map_page(i32, %struct.sf_buf**) #1

declare dso_local i32 @vn_io_fault_uiomove(i64, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @zfs_unmap_page(%struct.sf_buf*) #1

declare dso_local i32 @page_unwire(i32) #1

declare dso_local i32 @dmu_read_uio_dbuf(i32, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @sa_get_db(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
