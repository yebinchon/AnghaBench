; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/GBK2K/extr_citrus_gbk2k.c__citrus_GBK2K_stdenc_cstowc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/GBK2K/extr_citrus_gbk2k.c__citrus_GBK2K_stdenc_cstowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32)* @_citrus_GBK2K_stdenc_cstowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_GBK2K_stdenc_cstowc(%struct.TYPE_3__* noalias %0, i32* noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %31 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %18
    i32 3, label %21
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  br label %33

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %15, 32896
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  br label %33

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %33

21:                                               ; preds = %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @EILSEQ, align 4
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %28, %18, %14, %11
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %31, %26
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
