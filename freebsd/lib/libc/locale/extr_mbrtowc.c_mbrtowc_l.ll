; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbrtowc.c_mbrtowc_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mbrtowc.c_mbrtowc_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*, i8*, i64, i32*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbrtowc_l(i32* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @FIX_LOCALE(i32 %11)
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %15, %5
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (i32*, i8*, i64, i32*)*, i64 (i32*, i8*, i64, i32*)** %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 %23(i32* %24, i8* %25, i64 %26, i32* %27)
  ret i64 %28
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_2__* @XLOCALE_CTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
