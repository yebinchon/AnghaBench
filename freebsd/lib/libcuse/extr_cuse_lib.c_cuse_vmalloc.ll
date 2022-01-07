; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_vmalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_vmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.cuse_alloc_info = type { i32, i32 }

@f_cuse = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@CUSE_ALLOC_UNIT_MAX = common dso_local global i32 0, align 4
@a_cuse = common dso_local global %struct.TYPE_2__* null, align 8
@CUSE_IOCTL_ALLOC_MEMORY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@CUSE_ALLOC_PAGES_MAX = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@CUSE_IOCTL_FREE_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cuse_vmalloc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cuse_alloc_info, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i64, i64* @f_cuse, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %121

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.cuse_alloc_info* %4, i32 0, i32 8)
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %121

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @howmany(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = call i32 (...) @CUSE_LOCK()
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %116, %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CUSE_ALLOC_UNIT_MAX, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %119

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %116

35:                                               ; preds = %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32* inttoptr (i64 1 to i32*), i32** %40, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = call i32 (...) @CUSE_UNLOCK()
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %4, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* @f_cuse, align 8
  %50 = load i32, i32* @CUSE_IOCTL_ALLOC_MEMORY, align 4
  %51 = call i32 @ioctl(i64 %49, i32 %50, %struct.cuse_alloc_info* %4)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %35
  %55 = call i32 (...) @CUSE_LOCK()
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EBUSY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %116

65:                                               ; preds = %54
  br label %119

66:                                               ; preds = %35
  %67 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* @PROT_READ, align 4
  %72 = load i32, i32* @PROT_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MAP_SHARED, align 4
  %75 = load i64, i64* @f_cuse, align 8
  %76 = load i32, i32* @CUSE_ALLOC_PAGES_MAX, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 %78, %79
  %81 = call i8* @mmap(i32* null, i32 %70, i32 %73, i32 %74, i64 %75, i32 %80)
  store i8* %81, i8** %5, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** @MAP_FAILED, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %66
  %86 = load i64, i64* @f_cuse, align 8
  %87 = load i32, i32* @CUSE_IOCTL_FREE_MEMORY, align 4
  %88 = call i32 @ioctl(i64 %86, i32 %87, %struct.cuse_alloc_info* %4)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %85
  %93 = call i32 (...) @CUSE_LOCK()
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32* null, i32** %98, align 8
  br label %119

99:                                               ; preds = %66
  %100 = call i32 (...) @CUSE_LOCK()
  %101 = load i8*, i8** %5, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32* %102, i32** %107, align 8
  %108 = load i32, i32* %3, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @a_cuse, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  %114 = call i32 (...) @CUSE_UNLOCK()
  %115 = load i8*, i8** %5, align 8
  store i8* %115, i8** %2, align 8
  br label %121

116:                                              ; preds = %64, %34
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %22

119:                                              ; preds = %92, %65, %22
  %120 = call i32 (...) @CUSE_UNLOCK()
  store i8* null, i8** %2, align 8
  br label %121

121:                                              ; preds = %119, %99, %15, %10
  %122 = load i8*, i8** %2, align 8
  ret i8* %122
}

declare dso_local i32 @memset(%struct.cuse_alloc_info*, i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @CUSE_LOCK(...) #1

declare dso_local i32 @CUSE_UNLOCK(...) #1

declare dso_local i32 @ioctl(i64, i32, %struct.cuse_alloc_info*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
