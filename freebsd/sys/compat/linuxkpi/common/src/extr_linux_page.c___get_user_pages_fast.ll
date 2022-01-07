; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c___get_user_pages_fast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c___get_user_pages_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.page = type { i64 }

@curthread = common dso_local global %struct.TYPE_10__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__get_user_pages_fast(i64 %0, i32 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.page**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = call i64 (...) @in_interrupt()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  store i32 0, i32* %5, align 4
  br label %108

22:                                               ; preds = %18
  %23 = load %struct.page**, %struct.page*** %9, align 8
  %24 = icmp ne %struct.page** %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curthread, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = shl i64 %36, %37
  %39 = add i64 %34, %38
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = call i64 @vm_map_min(%struct.TYPE_9__* %41)
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %22
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = call i64 @vm_map_max(%struct.TYPE_9__* %46)
  %48 = icmp ugt i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %22
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %108

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @VM_PROT_READ, align 4
  %57 = load i32, i32* @VM_PROT_WRITE, align 4
  %58 = or i32 %56, %57
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @VM_PROT_READ, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %58, %55 ], [ %60, %59 ]
  store i32 %62, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %63 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page** %63, %struct.page*** %11, align 8
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %98, %61
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call %struct.page* @pmap_extract_and_hold(i32 %72, i64 %73, i32 %74)
  %76 = load %struct.page**, %struct.page*** %11, align 8
  store %struct.page* %75, %struct.page** %76, align 8
  %77 = load %struct.page**, %struct.page*** %11, align 8
  %78 = load %struct.page*, %struct.page** %77, align 8
  %79 = icmp eq %struct.page* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %106

81:                                               ; preds = %69
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @VM_PROT_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.page**, %struct.page*** %11, align 8
  %88 = load %struct.page*, %struct.page** %87, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.page**, %struct.page*** %11, align 8
  %95 = load %struct.page*, %struct.page** %94, align 8
  %96 = call i32 @vm_page_dirty(%struct.page* %95)
  br label %97

97:                                               ; preds = %93, %86, %81
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.page**, %struct.page*** %11, align 8
  %100 = getelementptr inbounds %struct.page*, %struct.page** %99, i32 1
  store %struct.page** %100, %struct.page*** %11, align 8
  %101 = load i64, i64* @PAGE_SIZE, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %65

106:                                              ; preds = %80, %65
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %49, %21
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @vm_map_min(%struct.TYPE_9__*) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_9__*) #1

declare dso_local %struct.page* @pmap_extract_and_hold(i32, i64, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
