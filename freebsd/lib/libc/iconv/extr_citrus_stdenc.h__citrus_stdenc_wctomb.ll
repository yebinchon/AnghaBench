; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.h__citrus_stdenc_wctomb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_stdenc.h__citrus_stdenc_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_stdenc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.iconv_hooks = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_stdenc*, i8*, i64, i32, i8*, i64*, %struct.iconv_hooks*)* @_citrus_stdenc_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_stdenc_wctomb(%struct._citrus_stdenc* noalias %0, i8* noalias %1, i64 %2, i32 %3, i8* noalias %4, i64* noalias %5, %struct.iconv_hooks* %6) #0 {
  %8 = alloca %struct._citrus_stdenc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.iconv_hooks*, align 8
  store %struct._citrus_stdenc* %0, %struct._citrus_stdenc** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.iconv_hooks* %6, %struct.iconv_hooks** %14, align 8
  %15 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %8, align 8
  %16 = getelementptr inbounds %struct._citrus_stdenc, %struct._citrus_stdenc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct._citrus_stdenc*, i8*, i64, i32, i8*, i64*, %struct.iconv_hooks*)**
  %20 = load i32 (%struct._citrus_stdenc*, i8*, i64, i32, i8*, i64*, %struct.iconv_hooks*)*, i32 (%struct._citrus_stdenc*, i8*, i64, i32, i8*, i64*, %struct.iconv_hooks*)** %19, align 8
  %21 = load %struct._citrus_stdenc*, %struct._citrus_stdenc** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i64*, i64** %13, align 8
  %27 = load %struct.iconv_hooks*, %struct.iconv_hooks** %14, align 8
  %28 = call i32 %20(%struct._citrus_stdenc* %21, i8* %22, i64 %23, i32 %24, i8* %25, i64* %26, %struct.iconv_hooks* %27)
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
