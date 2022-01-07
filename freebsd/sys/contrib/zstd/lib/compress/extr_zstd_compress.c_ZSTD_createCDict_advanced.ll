; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_createCDict_advanced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_createCDict_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ZSTD_createCDict_advanced, mode %u\00", align 1
@HUF_WORKSPACE_SIZE = common dso_local global i32 0, align 4
@ZSTD_dlm_byRef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ZSTD_createCDict_advanced(i8* %0, i64 %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = bitcast %struct.TYPE_9__* %8 to i64*
  store i64 %5, i64* %18, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  %19 = load i64, i64* %12, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @DEBUGLOG(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = xor i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %97

35:                                               ; preds = %6
  %36 = call i64 @ZSTD_cwksp_alloc_size(i32 24)
  %37 = load i32, i32* @HUF_WORKSPACE_SIZE, align 4
  %38 = call i64 @ZSTD_cwksp_alloc_size(i32 %37)
  %39 = add i64 %36, %38
  %40 = call i64 @ZSTD_sizeof_matchState(i32* %13, i32 0)
  %41 = add i64 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @ZSTD_dlm_byRef, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @ZSTD_cwksp_align(i64 %47, i32 8)
  %49 = call i64 @ZSTD_cwksp_alloc_size(i32 %48)
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i64 [ 0, %45 ], [ %49, %46 ]
  %52 = add i64 %41, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = bitcast %struct.TYPE_9__* %8 to i64*
  %55 = load i64, i64* %54, align 4
  %56 = call i8* @ZSTD_malloc(i64 %53, i64 %55)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %50
  %60 = load i8*, i8** %15, align 8
  %61 = bitcast %struct.TYPE_9__* %8 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i32 @ZSTD_free(i8* %60, i64 %62)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %97

64:                                               ; preds = %50
  %65 = load i8*, i8** %15, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @ZSTD_cwksp_init(i32* %16, i8* %65, i64 %66)
  %68 = call i64 @ZSTD_cwksp_reserve_object(i32* %16, i32 24)
  %69 = inttoptr i64 %68 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %17, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = call i32 @ZSTD_cwksp_move(i32* %75, i32* %16)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = bitcast %struct.TYPE_9__* %78 to i8*
  %80 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 4 %80, i64 8, i1 false)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @ZSTD_initCDict_internal(%struct.TYPE_10__* %83, i8* %84, i64 %85, i32 %86, i64 %87, i32 %88)
  %90 = call i64 @ZSTD_isError(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %64
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %94 = call i32 @ZSTD_freeCDict(%struct.TYPE_10__* %93)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %97

95:                                               ; preds = %64
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %7, align 8
  br label %97

97:                                               ; preds = %95, %92, %59, %34
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %98
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i64 @ZSTD_cwksp_alloc_size(i32) #1

declare dso_local i64 @ZSTD_sizeof_matchState(i32*, i32) #1

declare dso_local i32 @ZSTD_cwksp_align(i64, i32) #1

declare dso_local i8* @ZSTD_malloc(i64, i64) #1

declare dso_local i32 @ZSTD_free(i8*, i64) #1

declare dso_local i32 @ZSTD_cwksp_init(i32*, i8*, i64) #1

declare dso_local i64 @ZSTD_cwksp_reserve_object(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_cwksp_move(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_initCDict_internal(%struct.TYPE_10__*, i8*, i64, i32, i64, i32) #1

declare dso_local i32 @ZSTD_freeCDict(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
