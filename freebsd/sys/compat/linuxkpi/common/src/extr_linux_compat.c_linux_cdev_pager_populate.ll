; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_cdev_pager_populate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_cdev_pager_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64*, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.vm_area_struct*, %struct.vm_fault*)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32*, i64, i32, i8* }

@curthread = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@PRI_USER = common dso_local global i32 0, align 4
@VM_PAGER_AGAIN = common dso_local global i32 0, align 4
@VM_PAGER_BAD = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i32, i32, i64*, i64*)* @linux_cdev_pager_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_cdev_pager_populate(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_fault, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load i32, i32* @curthread, align 4
  %17 = call i32 @linux_set_current(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.vm_area_struct* @linux_cdev_handle_find(i64 %20)
  store %struct.vm_area_struct* %21, %struct.vm_area_struct** %13, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_9__* %35)
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = call i32 @down_write(i32* %40)
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 5
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp eq %struct.TYPE_7__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %6
  store i32 128, i32* %14, align 4
  br label %106

50:                                               ; preds = %6
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @IDX_TO_OFF(i64 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @VM_PROT_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %68 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 0
  store %struct.vm_area_struct* %67, %struct.vm_area_struct** %68, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 1
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 2
  store i64* %72, i64** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 6
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %77, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 5
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)** %81, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %84 = call i32 %82(%struct.vm_area_struct* %83, %struct.vm_fault* %15)
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %95, %62
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 130
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi i1 [ false, %85 ], [ %92, %90 ]
  br i1 %94, label %95, label %105

95:                                               ; preds = %93
  %96 = load i32, i32* @PRI_USER, align 4
  %97 = call i32 @kern_yield(i32 %96)
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 5
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)** %101, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %104 = call i32 %102(%struct.vm_area_struct* %103, %struct.vm_fault* %15)
  store i32 %104, i32* %14, align 4
  br label %85

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %49
  %107 = load i32, i32* %14, align 4
  switch i32 %107, label %126 [
    i32 129, label %108
    i32 128, label %110
    i32 130, label %112
  ]

108:                                              ; preds = %106
  %109 = load i32, i32* @VM_PAGER_AGAIN, align 4
  store i32 %109, i32* %14, align 4
  br label %128

110:                                              ; preds = %106
  %111 = load i32, i32* @VM_PAGER_BAD, align 4
  store i32 %111, i32* %14, align 4
  br label %128

112:                                              ; preds = %106
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %11, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = sub nsw i64 %122, 1
  %124 = load i64*, i64** %12, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %125, i32* %14, align 4
  br label %128

126:                                              ; preds = %106
  %127 = load i32, i32* @VM_PAGER_ERROR, align 4
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %126, %112, %110, %108
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = call i32 @up_write(i32* %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_9__* %134)
  %136 = load i32, i32* %14, align 4
  ret i32 %136
}

declare dso_local i32 @linux_set_current(i32) #1

declare dso_local %struct.vm_area_struct* @linux_cdev_handle_find(i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IDX_TO_OFF(i64) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
