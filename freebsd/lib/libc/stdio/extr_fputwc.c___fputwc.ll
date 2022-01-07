; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fputwc.c___fputwc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fputwc.c___fputwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.xlocale_ctype = type { i64 (i8*, i64, i32*)* }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fputwc(i64 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xlocale_ctype*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MB_LEN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.xlocale_ctype* @XLOCALE_CTYPE(i32 %18)
  store %struct.xlocale_ctype* %19, %struct.xlocale_ctype** %12, align 8
  %20 = load %struct.xlocale_ctype*, %struct.xlocale_ctype** %12, align 8
  %21 = getelementptr inbounds %struct.xlocale_ctype, %struct.xlocale_ctype* %20, i32 0, i32 0
  %22 = load i64 (i8*, i64, i32*)*, i64 (i8*, i64, i32*)** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i64 %22(i8* %17, i64 %23, i32* %25)
  store i64 %26, i64* %11, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @__SERR, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @WEOF, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

35:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i8, i8* %17, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = call i64 @__sputc(i8 zeroext %43, %struct.TYPE_4__* %44)
  %46 = load i64, i64* @EOF, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @WEOF, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %36

54:                                               ; preds = %36
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %48, %28
  %58 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.xlocale_ctype* @XLOCALE_CTYPE(i32) #2

declare dso_local i64 @__sputc(i8 zeroext, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
