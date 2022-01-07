; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_gbk.c__GBK_wcrtomb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_gbk.c__GBK_wcrtomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32*)* @_GBK_wcrtomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_GBK_wcrtomb(i8* noalias %0, i32 %1, i32* noalias %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 1, i64* %4, align 8
  br label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 32768
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  store i8 %29, i8* %30, align 1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  store i8 %34, i8* %35, align 1
  store i64 2, i64* %4, align 8
  br label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  store i64 1, i64* %4, align 8
  br label %41

41:                                               ; preds = %36, %25, %20, %15
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
