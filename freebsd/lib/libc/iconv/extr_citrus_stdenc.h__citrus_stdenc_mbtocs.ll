; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.h__citrus_stdenc_mbtocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.h__citrus_stdenc_mbtocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_stdenc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.iconv_hooks = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_stdenc*, i32*, i32*, i8**, i64, i8*, i64*, %struct.iconv_hooks*)* @_citrus_stdenc_mbtocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_stdenc_mbtocs(%struct._citrus_stdenc* noalias %0, i32* noalias %1, i32* noalias %2, i8** noalias %3, i64 %4, i8* noalias %5, i64* noalias %6, %struct.iconv_hooks* %7) #0 {
  %9 = alloca %struct._citrus_stdenc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.iconv_hooks*, align 8
  store %struct._citrus_stdenc* %0, %struct._citrus_stdenc** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64* %6, i64** %15, align 8
  store %struct.iconv_hooks* %7, %struct.iconv_hooks** %16, align 8
  %17 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %9, align 8
  %18 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct._citrus_stdenc*, i32*, i32*, i8**, i64, i8*, i64*, %struct.iconv_hooks*)**
  %22 = load i32 (%struct._citrus_stdenc*, i32*, i32*, i8**, i64, i8*, i64*, %struct.iconv_hooks*)*, i32 (%struct._citrus_stdenc*, i32*, i32*, i8**, i64, i8*, i64*, %struct.iconv_hooks*)** %21, align 8
  %23 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i8**, i8*** %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i64*, i64** %15, align 8
  %30 = load %struct.iconv_hooks*, %struct.iconv_hooks** %16, align 8
  %31 = call i32 %22(%struct._citrus_stdenc* %23, i32* %24, i32* %25, i8** %26, i64 %27, i8* %28, i64* %29, %struct.iconv_hooks* %30)
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
