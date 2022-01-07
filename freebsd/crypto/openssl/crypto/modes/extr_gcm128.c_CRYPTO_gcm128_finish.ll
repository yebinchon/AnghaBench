; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_gcm128.c_CRYPTO_gcm128_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_gcm128.c_CRYPTO_gcm128_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.TYPE_14__ = type { void (i32*, %struct.TYPE_13__*)*, void (i32*, %struct.TYPE_13__*, i32*, i64)*, i32, %struct.TYPE_12__, %struct.TYPE_11__, i64, %struct.TYPE_10__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32*, i32* }

@__const.CRYPTO_gcm128_finish.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_gcm128_finish(%struct.TYPE_14__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.anon, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = bitcast %union.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%union.anon* @__const.CRYPTO_gcm128_finish.is_endian to i8*), i64 8, i1 false)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 3
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 3
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %3
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i32 @GCM_MUL(%struct.TYPE_14__* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = bitcast %union.anon* %8 to i8*
  %41 = load i8, i8* %40, align 8
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %39
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %54, i32* %59, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @GETU32(i32* %60)
  %62 = shl i32 %61, 32
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = call i32 @GETU32(i32* %64)
  %66 = or i32 %62, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = call i32 @GETU32(i32* %68)
  %70 = shl i32 %69, 32
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 12
  %73 = call i32 @GETU32(i32* %72)
  %74 = or i32 %70, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %43, %39
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %82, %76
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %84
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = call i32 @GCM_MUL(%struct.TYPE_14__* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, %99
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, %112
  store i32 %119, i32* %117, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %75
  %123 = load i64, i64* %7, align 8
  %124 = icmp ule i64 %123, 16
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @CRYPTO_memcmp(i32 %129, i8* %130, i64 %131)
  store i32 %132, i32* %4, align 4
  br label %134

133:                                              ; preds = %122, %75
  store i32 -1, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %125
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GCM_MUL(%struct.TYPE_14__*) #2

declare dso_local i32 @GETU32(i32*) #2

declare dso_local i32 @CRYPTO_memcmp(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
