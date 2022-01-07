; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__pthread_attr_getaffinity_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__pthread_attr_getaffinity_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_attr_getaffinity_np(%struct.TYPE_3__** %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %12 = icmp eq %struct.TYPE_3__** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %9, align 4
  br label %59

19:                                               ; preds = %13
  %20 = call i64 (...) @_get_kern_cpuset_size()
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ERANGE, align 4
  store i32 %25, i32* %4, align 4
  br label %61

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MIN(i64 %36, i32 %39)
  %41 = call i32 @memcpy(i8* %32, i32* %35, i32 %40)
  br label %46

42:                                               ; preds = %26
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @memset(i8* %43, i32 -1, i64 %44)
  br label %46

46:                                               ; preds = %42, %31
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %54, %55
  %57 = call i32 @memset(i8* %53, i32 0, i64 %56)
  br label %58

58:                                               ; preds = %50, %46
  br label %59

59:                                               ; preds = %58, %17
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @_get_kern_cpuset_size(...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
