; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_FUZ_createDictionary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_FUZ_createDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@kBuffNull = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i64, i64, i64)* @FUZ_createDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FUZ_createDictionary(%struct.TYPE_5__* noalias sret %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 %4, i64* %9, align 8
  %15 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_5__* @kBuffNull to i8*), i64 24, i1 false)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 1
  %19 = add i64 %16, %18
  %20 = load i64, i64* %8, align 8
  %21 = udiv i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = mul i64 %22, 8
  %24 = call i64 @malloc(i64 %23)
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %12, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = bitcast %struct.TYPE_5__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.TYPE_5__* @kBuffNull to i8*), i64 24, i1 false)
  br label %89

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i64*, i64** %12, align 8
  %39 = call i32 @free(i64* %38)
  %40 = bitcast %struct.TYPE_5__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 bitcast (%struct.TYPE_5__* @kBuffNull to i8*), i64 24, i1 false)
  br label %89

41:                                               ; preds = %30
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %11, align 8
  %45 = sub i64 %44, 1
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %42

55:                                               ; preds = %42
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = sub i64 %58, 1
  %60 = mul i64 %57, %59
  %61 = sub i64 %56, %60
  %62 = load i64*, i64** %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @ZDICT_trainFromBuffer(i64 %67, i64 %68, i8* %69, i64* %70, i32 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64*, i64** %12, align 8
  %75 = call i32 @free(i64* %74)
  %76 = load i64, i64* %14, align 8
  %77 = call i64 @ZDICT_isError(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %55
  %80 = call i32 @FUZ_freeDictionary(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %10)
  %81 = bitcast %struct.TYPE_5__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 bitcast (%struct.TYPE_5__* @kBuffNull to i8*), i64 24, i1 false)
  br label %89

82:                                               ; preds = %55
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  %87 = bitcast %struct.TYPE_5__* %0 to i8*
  %88 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 24, i1 false)
  br label %89

89:                                               ; preds = %82, %79, %37, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @free(i64*) #2

declare dso_local i64 @ZDICT_trainFromBuffer(i64, i64, i8*, i64*, i32) #2

declare dso_local i64 @ZDICT_isError(i64) #2

declare dso_local i32 @FUZ_freeDictionary(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
