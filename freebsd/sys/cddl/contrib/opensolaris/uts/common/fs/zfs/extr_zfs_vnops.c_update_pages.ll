; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_update_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_update_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }
%struct.sf_buf = type { i32 }

@UIO_NOCOPY = common dso_local global i32 0, align 4
@PAGEOFFSET = common dso_local global i32 0, align 4
@PAGEMASK = common dso_local global i32 0, align 4
@PAGESIZE = common dso_local global i64 0, align 8
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32*, i32, i32, i32*)* @update_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pages(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sf_buf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @UIO_NOCOPY, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PAGEOFFSET, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @zfs_vmobject_wlock(i32* %42)
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @vm_object_pip_add(i32* %44, i32 1)
  %46 = load i32, i32* @PAGEMASK, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %91, %7
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %49
  %53 = load i64, i64* @PAGESIZE, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @imin(i64 %56, i32 %57)
  store i32 %58, i32* %20, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32* @page_busy(%struct.TYPE_4__* %59, i32 %60, i32 %61, i32 %62)
  store i32* %63, i32** %19, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %52
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @zfs_vmobject_wunlock(i32* %66)
  %68 = load i32*, i32** %19, align 8
  %69 = call i32 @zfs_map_page(i32* %68, %struct.sf_buf** %16)
  store i32 %69, i32* %17, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %80 = call i32 @dmu_read(i32* %70, i32 %71, i32 %74, i32 %75, i32 %78, i32 %79)
  %81 = load %struct.sf_buf*, %struct.sf_buf** %16, align 8
  %82 = call i32 @zfs_unmap_page(%struct.sf_buf* %81)
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @zfs_vmobject_wlock(i32* %83)
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @page_unbusy(i32* %85)
  br label %87

87:                                               ; preds = %65, %52
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %87
  %92 = load i64, i64* @PAGESIZE, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %49

97:                                               ; preds = %49
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @vm_object_pip_wakeup(i32* %98)
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @zfs_vmobject_wunlock(i32* %100)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_vmobject_wlock(i32*) #1

declare dso_local i32 @vm_object_pip_add(i32*, i32) #1

declare dso_local i32 @imin(i64, i32) #1

declare dso_local i32* @page_busy(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @zfs_vmobject_wunlock(i32*) #1

declare dso_local i32 @zfs_map_page(i32*, %struct.sf_buf**) #1

declare dso_local i32 @dmu_read(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zfs_unmap_page(%struct.sf_buf*) #1

declare dso_local i32 @page_unbusy(i32*) #1

declare dso_local i32 @vm_object_pip_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
