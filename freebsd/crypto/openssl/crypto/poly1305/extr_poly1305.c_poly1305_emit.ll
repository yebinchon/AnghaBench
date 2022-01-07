; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305.c_poly1305_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/poly1305/extr_poly1305.c_poly1305_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64*)* @poly1305_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_emit(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %7, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 5
  store i32 %34, i32* %14, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %14, align 4
  %37 = ashr i32 %36, 64
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %14, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %14, align 4
  %41 = ashr i32 %40, 64
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %43, 2
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %15, align 4
  %53 = xor i32 %52, -1
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %15, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %6, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i64*, i64** %6, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = shl i32 %73, 32
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %69, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %14, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64*, i64** %6, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 32
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %83, %89
  %91 = load i32, i32* %14, align 4
  %92 = ashr i32 %91, 64
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  store i32 %95, i32* %9, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @U64TO8(i8* %97, i32 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @U64TO8(i8* %101, i32 %102)
  ret void
}

declare dso_local i32 @U64TO8(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
