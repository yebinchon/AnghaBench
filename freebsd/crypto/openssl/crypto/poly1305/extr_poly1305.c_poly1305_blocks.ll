; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305.c_poly1305_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305.c_poly1305_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@POLY1305_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32)* @poly1305_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_blocks(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
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
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 2
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %54, %4
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %133

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = call i32 @U8TOU64(i8* %57)
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %17, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %17, align 4
  %62 = ashr i32 %61, 64
  %63 = add nsw i32 %60, %62
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 8
  %66 = call i32 @U8TOU64(i8* %65)
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %18, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %18, align 4
  %69 = ashr i32 %68, 64
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %12, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %17, align 4
  %97 = ashr i32 %96, 64
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %18, align 4
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %18, align 4
  %101 = ashr i32 %100, 64
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = ashr i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = and i64 %108, -4
  %110 = add i64 %106, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = and i32 %112, 3
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @CONSTANT_TIME_CARRY(i32 %117, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @CONSTANT_TIME_CARRY(i32 %122, i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %15, align 4
  %127 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 %127
  store i8* %129, i8** %6, align 8
  %130 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %131 = load i64, i64* %7, align 8
  %132 = sub i64 %131, %130
  store i64 %132, i64* %7, align 8
  br label %50

133:                                              ; preds = %50
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %144, i32* %148, align 4
  ret void
}

declare dso_local i32 @U8TOU64(i8*) #1

declare dso_local i32 @CONSTANT_TIME_CARRY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
