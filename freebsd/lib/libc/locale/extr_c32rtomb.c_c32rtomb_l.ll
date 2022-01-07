; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_c32rtomb.c_c32rtomb_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_c32rtomb.c_c32rtomb_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c32rtomb_l(i8* noalias %0, i32 %1, i32* noalias %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 55296
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 57343
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 1114111
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @EILSEQ, align 4
  store i32 %19, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @FIX_LOCALE(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @wcrtomb_l(i8* %30, i32 %31, i32* %32, i32 %33)
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_2__* @XLOCALE_CTYPE(i32) #1

declare dso_local i64 @wcrtomb_l(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
