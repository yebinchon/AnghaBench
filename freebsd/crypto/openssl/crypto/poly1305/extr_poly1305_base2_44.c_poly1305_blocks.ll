; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305_base2_44.c_poly1305_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305_base2_44.c_poly1305_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32* }

@POLY1305_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poly1305_blocks(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 40
  store i32 %29, i32* %22, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %74, %4
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %170

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = call i32 @U8TOU64(i8* %76)
  store i32 %77, i32* %23, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %80 = call i32 @U8TOU64(i8* %79)
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %23, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %82, 17592186044415
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %23, align 4
  %89 = ashr i32 %88, 44
  %90 = load i32, i32* %24, align 4
  %91 = shl i32 %90, 20
  %92 = or i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = and i64 %93, 17592186044415
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %24, align 4
  %100 = ashr i32 %99, 24
  %101 = load i32, i32* %22, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %13, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %122, %125
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %12, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %129, %132
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %10, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %133, %136
  store i32 %137, i32* %21, align 4
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = and i64 %139, 17592186044415
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %19, align 4
  %143 = ashr i32 %142, 44
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = and i64 %146, 17592186044415
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %20, align 4
  %150 = ashr i32 %149, 44
  %151 = load i32, i32* %21, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = and i64 %153, 4398046511103
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %21, align 4
  %157 = ashr i32 %156, 42
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = shl i32 %159, 2
  %161 = add nsw i32 %158, %160
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %15, align 4
  %164 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 %164
  store i8* %166, i8** %6, align 8
  %167 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %168 = load i64, i64* %7, align 8
  %169 = sub i64 %168, %167
  store i64 %169, i64* %7, align 8
  br label %70

170:                                              ; preds = %70
  %171 = load i32, i32* %15, align 4
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32 %181, i32* %185, align 4
  ret void
}

declare dso_local i32 @U8TOU64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
