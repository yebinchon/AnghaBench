; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32 (%struct.TYPE_18__*, i64)*, i32*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@R_EOF = common dso_local global i32 0, align 4
@R_INMEM = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@SEARCH = common dso_local global i32 0, align 4
@B_DB_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_get(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %10, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @mpool_put(i32 %24, i32* %27, i32 0)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %21, %4
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34, %31
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* @errno, align 4
  %43 = load i32, i32* @RET_ERROR, align 4
  store i32 %43, i32* %5, align 4
  br label %106

44:                                               ; preds = %34
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = load i32, i32* @R_EOF, align 4
  %53 = load i32, i32* @R_INMEM, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @F_ISSET(%struct.TYPE_18__* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %58, i32* %5, align 4
  br label %106

59:                                               ; preds = %50
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_18__*, i64)*, i32 (%struct.TYPE_18__*, i64)** %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 %62(%struct.TYPE_18__* %63, i64 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @RET_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %106

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %12, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* @SEARCH, align 4
  %77 = call %struct.TYPE_15__* @__rec_search(%struct.TYPE_18__* %74, i64 %75, i32 %76)
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %11, align 8
  %78 = icmp eq %struct.TYPE_15__* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @RET_ERROR, align 4
  store i32 %80, i32* %5, align 4
  br label %106

81:                                               ; preds = %71
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = call i32 @__rec_ret(%struct.TYPE_18__* %82, %struct.TYPE_15__* %83, i32 0, i32* null, %struct.TYPE_16__* %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = load i32, i32* @B_DB_LOCK, align 4
  %88 = call i64 @F_ISSET(%struct.TYPE_18__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @mpool_put(i32 %93, i32* %96, i32 0)
  br label %104

98:                                               ; preds = %81
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  br label %104

104:                                              ; preds = %98, %90
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %79, %68, %57, %41
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @mpool_put(i32, i32*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_15__* @__rec_search(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @__rec_ret(%struct.TYPE_18__*, %struct.TYPE_15__*, i32, i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
