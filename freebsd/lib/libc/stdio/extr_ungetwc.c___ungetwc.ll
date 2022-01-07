; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_ungetwc.c___ungetwc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_ungetwc.c___ungetwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.xlocale_ctype = type { i64 (i8*, i32, i32*)* }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ungetwc(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xlocale_ctype*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MB_LEN_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.xlocale_ctype* @XLOCALE_CTYPE(i32 %17)
  store %struct.xlocale_ctype* %18, %struct.xlocale_ctype** %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @WEOF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @WEOF, align 4
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

24:                                               ; preds = %3
  %25 = load %struct.xlocale_ctype*, %struct.xlocale_ctype** %11, align 8
  %26 = getelementptr inbounds %struct.xlocale_ctype, %struct.xlocale_ctype* %25, i32 0, i32 0
  %27 = load i64 (i8*, i32, i32*)*, i64 (i8*, i32, i32*)** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i64 %27(i8* %16, i32 %28, i32* %30)
  store i64 %31, i64* %10, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32, i32* @__SERR, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @WEOF, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %10, align 8
  %44 = icmp ne i64 %42, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %16, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = call i64 @__ungetc(i8 zeroext %48, %struct.TYPE_4__* %49)
  %51 = load i64, i64* @EOF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @WEOF, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

55:                                               ; preds = %45
  br label %41

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %53, %33, %22
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.xlocale_ctype* @XLOCALE_CTYPE(i32) #2

declare dso_local i64 @__ungetc(i8 zeroext, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
