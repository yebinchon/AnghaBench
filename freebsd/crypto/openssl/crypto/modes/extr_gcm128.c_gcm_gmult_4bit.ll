; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_gcm128.c_gcm_gmult_4bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_gcm128.c_gcm_gmult_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@__const.gcm_gmult_4bit.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8
@rem_4bit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @gcm_gmult_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_gmult_4bit(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.anon, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 15, i32* %6, align 4
  %13 = bitcast %union.anon* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%union.anon* @__const.gcm_gmult_4bit.is_endian to i8*), i64 8, i1 false)
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to i64*
  %16 = getelementptr inbounds i64, i64* %15, i64 15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = lshr i64 %18, 4
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = and i64 %20, 15
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %2, %78
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 15
  store i64 %38, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 60
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 4
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** @rem_4bit, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %34
  br label %128

78:                                               ; preds = %34
  %79 = load i32*, i32** %3, align 8
  %80 = bitcast i32* %79 to i64*
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = lshr i64 %85, 4
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = and i64 %87, 15
  store i64 %88, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = and i64 %91, 15
  store i64 %92, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 60
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 4
  %99 = or i32 %95, %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** @rem_4bit, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = xor i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %34

128:                                              ; preds = %77
  %129 = bitcast %union.anon* %10 to i8*
  %130 = load i8, i8* %129, align 8
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %128
  %133 = load i32*, i32** %3, align 8
  %134 = bitcast i32* %133 to i64*
  store i64* %134, i64** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 32
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %12, align 8
  %139 = load i64*, i64** %11, align 8
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @PUTU32(i64* %139, i64 %140)
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %12, align 8
  %145 = load i64*, i64** %11, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 4
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @PUTU32(i64* %146, i64 %147)
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 32
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %12, align 8
  %153 = load i64*, i64** %11, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 8
  %155 = load i64, i64* %12, align 8
  %156 = call i32 @PUTU32(i64* %154, i64 %155)
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %12, align 8
  %160 = load i64*, i64** %11, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 12
  %162 = load i64, i64* %12, align 8
  %163 = call i32 @PUTU32(i64* %161, i64 %162)
  br label %173

164:                                              ; preds = %128
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %3, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %166, i32* %168, align 4
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %3, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %164, %132
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PUTU32(i64*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
