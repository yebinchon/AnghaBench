; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__pthread_attr_setaffinity_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_attr.c__pthread_attr_setaffinity_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_attr_setaffinity_np(%struct.TYPE_3__** %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %13 = icmp eq %struct.TYPE_3__** %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %9, align 4
  br label %99

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free(i32* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %101

41:                                               ; preds = %23
  %42 = call i64 (...) @_get_kern_cpuset_size()
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @ERANGE, align 4
  store i32 %47, i32* %4, align 4
  br label %101

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %68, %52
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %4, align 4
  br label %101

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %54

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %48
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i64, i64* %10, align 8
  %79 = call i32* @calloc(i32 1, i64 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @errno, align 4
  store i32 %87, i32* %4, align 4
  br label %101

88:                                               ; preds = %77
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %72
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @memcpy(i32* %95, i32* %96, i64 %97)
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %92, %18
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %86, %65, %46, %40
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @_get_kern_cpuset_size(...) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
