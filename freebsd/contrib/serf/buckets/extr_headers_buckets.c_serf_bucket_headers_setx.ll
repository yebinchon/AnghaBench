; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_headers_buckets.c_serf_bucket_headers_setx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_headers_buckets.c_serf_bucket_headers_setx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_8__*, i32, i8*, i8* }

@ALLOC_HEADER = common dso_local global i32 0, align 4
@ALLOC_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serf_bucket_headers_setx(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %15, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_8__* @serf_bucket_mem_alloc(i32 %22, i32 48)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %16, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %7
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i8* @serf_bstrmemdup(i32 %39, i8* %40, i8* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @ALLOC_HEADER, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %54

50:                                               ; preds = %7
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %36
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i8* @serf_bstrmemdup(i32 %60, i8* %61, i8* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @ALLOC_VALUE, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %75

71:                                               ; preds = %54
  %72 = load i8*, i8** %12, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %71, %57
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %85, align 8
  br label %90

86:                                               ; preds = %75
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %89, align 8
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %93, align 8
  ret void
}

declare dso_local %struct.TYPE_8__* @serf_bucket_mem_alloc(i32, i32) #1

declare dso_local i8* @serf_bstrmemdup(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
