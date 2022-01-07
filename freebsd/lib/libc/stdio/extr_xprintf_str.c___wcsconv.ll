; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_str.c___wcsconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_str.c___wcsconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__wcsconv.initial = internal constant i32 0, align 4
@MB_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @__wcsconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__wcsconv(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @MB_LEN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* @__wcsconv.initial, align 4
  store i32 %22, i32* %6, align 4
  %23 = call i64 @wcsrtombs(i8* null, i32** %9, i64 0, i32* %6)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %82

27:                                               ; preds = %20
  br label %61

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 128
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  br label %60

34:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %9, align 8
  %36 = load i32, i32* @__wcsconv.initial, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %55, %34
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i64 @wcrtomb(i8* %17, i32 %40, i32* %6)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %11, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %44, %37
  br label %59

55:                                               ; preds = %47
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %37

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  %64 = call i8* @malloc(i64 %63)
  store i8* %64, i8** %10, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %82

67:                                               ; preds = %61
  %68 = load i32*, i32** %4, align 8
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* @__wcsconv.initial, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @wcsrtombs(i8* %70, i32** %9, i64 %71, i32* %6)
  store i64 %72, i64* %12, align 8
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @free(i8* %75)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %82

77:                                               ; preds = %67
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %10, align 8
  store i8* %81, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %82

82:                                               ; preds = %77, %74, %66, %26
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i8*, i8** %3, align 8
  ret i8* %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wcsrtombs(i8*, i32**, i64, i32*) #2

declare dso_local i64 @wcrtomb(i8*, i32, i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
