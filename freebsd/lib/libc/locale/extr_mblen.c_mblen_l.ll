; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mblen.c_mblen_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mblen.c_mblen_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*, i8*, i64, i32*)*, i32 }

@mblen_l.initial = internal constant i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mblen_l(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @FIX_LOCALE(i32 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @mblen_l.initial, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (i32*, i8*, i64, i32*)*, i64 (i32*, i8*, i64, i32*)** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i64 %22(i32* null, i8* %23, i64 %24, i32* %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, -2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %18
  store i32 -1, i32* %4, align 4
  br label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %34, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_2__* @XLOCALE_CTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
