; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/delta/extr_delta_decoder.c_delta_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/delta/extr_delta_decoder.c_delta_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* @delta_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_decode(i8* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %19, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %26, align 8
  %28 = icmp ne i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64*, i64** %16, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %20, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i64*, i64** %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i64*, i64** %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i32, i32* %18, align 4
  %49 = call i32 %36(i32 %40, i32* %41, i32* %42, i64* %43, i64 %44, i32* %45, i64* %46, i64 %47, i32 %48)
  store i32 %49, i32* %21, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load i64, i64* %20, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i64*, i64** %16, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %20, align 8
  %57 = sub i64 %55, %56
  %58 = call i32 @decode_buffer(%struct.TYPE_5__* %50, i32* %53, i64 %57)
  %59 = load i32, i32* %21, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @decode_buffer(%struct.TYPE_5__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
