; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wctob.c_wctob_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wctob.c_wctob_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32, i32*)* }

@wctob_l.initial = internal constant i32 0, align 4
@MB_LEN_MAX = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wctob_l(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @wctob_l.initial, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @MB_LEN_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @FIX_LOCALE(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @WEOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_2__* @XLOCALE_CTYPE(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %24(i8* %14, i32 %25, i32* %6)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %2
  %29 = load i32, i32* @EOF, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i8, i8* %14, align 16
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FIX_LOCALE(i32) #2

declare dso_local %struct.TYPE_2__* @XLOCALE_CTYPE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
