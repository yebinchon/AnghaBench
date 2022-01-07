; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_method.c_advanced_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_method.c_advanced_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@ZSTD_reset_session_and_parameters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @advanced_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advanced_config(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @ZSTD_reset_session_and_parameters, align 4
  %12 = call i32 @ZSTD_CCtx_reset(i32* %10, i32 %11)
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %39, %3
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %25
  %27 = bitcast %struct.TYPE_10__* %9 to i8*
  %28 = bitcast %struct.TYPE_10__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ZSTD_CCtx_setParameter(i32* %29, i32 %31, i32 %33)
  %35 = call i64 @ZSTD_isError(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %63

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %13

42:                                               ; preds = %13
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ZSTD_CCtx_loadDictionary(i32* %48, i32 %52, i32 %56)
  %58 = call i64 @ZSTD_isError(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %63

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %42
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %60, %37
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ZSTD_CCtx_reset(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_CCtx_setParameter(i32*, i32, i32) #1

declare dso_local i32 @ZSTD_CCtx_loadDictionary(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
