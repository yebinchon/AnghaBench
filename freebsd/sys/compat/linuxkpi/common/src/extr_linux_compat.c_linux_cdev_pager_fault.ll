; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_cdev_pager_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_cdev_pager_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32* }

@PG_FICTITIOUS = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i32, %struct.TYPE_14__**)* @linux_cdev_pager_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_cdev_pager_fault(%struct.TYPE_15__* %0, i64 %1, i32 %2, %struct.TYPE_14__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %9, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.vm_area_struct* @linux_cdev_handle_find(i64 %15)
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %10, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %18 = icmp ne %struct.vm_area_struct* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br label %40

40:                                               ; preds = %34, %4
  %41 = phi i1 [ false, %4 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %40
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IDX_TO_OFF(i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %49, %50
  store i64 %51, i64* %11, align 8
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PG_FICTITIOUS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %45
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %12, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vm_page_updatefake(%struct.TYPE_14__* %62, i64 %63, i32 %66)
  br label %92

68:                                               ; preds = %45
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_15__* %69)
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.TYPE_14__* @vm_page_getfake(i64 %71, i32 %74)
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %12, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_15__* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = call i32 @vm_page_replace_checked(%struct.TYPE_14__* %78, %struct.TYPE_15__* %79, i32 %83, %struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = call i32 @vm_page_free(%struct.TYPE_14__* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %91 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %91, align 8
  br label %92

92:                                               ; preds = %68, %59
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = call i32 @vm_page_valid(%struct.TYPE_14__* %93)
  %95 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %95, i32* %5, align 4
  br label %98

96:                                               ; preds = %40
  %97 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.vm_area_struct* @linux_cdev_handle_find(i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i32 @vm_page_updatefake(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @vm_page_getfake(i64, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_replace_checked(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
