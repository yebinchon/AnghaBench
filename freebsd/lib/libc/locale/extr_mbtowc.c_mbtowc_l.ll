; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbtowc.c_mbtowc_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbtowc.c_mbtowc_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*, i8*, i64, i32*)*, i32 }

@mbtowc_l.initial = internal constant i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbtowc_l(i32* noalias %0, i8* noalias %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @FIX_LOCALE(i32 %11)
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* @mbtowc_l.initial, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  store i32 0, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (i32*, i8*, i64, i32*)*, i64 (i32*, i8*, i64, i32*)** %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i64 %24(i32* %25, i8* %26, i64 %27, i32* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  switch i64 %32, label %36 [
    i64 -2, label %33
    i64 -1, label %35
  ]

33:                                               ; preds = %20
  %34 = load i32, i32* @EILSEQ, align 4
  store i32 %34, i32* @errno, align 4
  br label %35

35:                                               ; preds = %20, %33
  store i32 -1, i32* %5, align 4
  br label %39

36:                                               ; preds = %20
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %35, %15
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_2__* @XLOCALE_CTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
