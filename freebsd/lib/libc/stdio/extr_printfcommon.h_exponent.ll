; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h_exponent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXEXPDIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8)* @exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exponent(i8* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %11 = load i32, i32* @MAXEXPDIG, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8, i8* %6, align 1
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  store i8 %16, i8* %17, align 1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  store i8 45, i8* %24, align 1
  br label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  store i8 43, i8* %27, align 1
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* @MAXEXPDIG, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %14, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 9
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %43, %35
  %37 = load i32, i32* %5, align 4
  %38 = srem i32 %37, 10
  %39 = call i8* @to_char(i32 %38)
  %40 = ptrtoint i8* %39 to i8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %8, align 8
  store i8 %40, i8* %42, align 1
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = sdiv i32 %44, 10
  store i32 %45, i32* %5, align 4
  %46 = icmp sgt i32 %45, 9
  br i1 %46, label %36, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = call i8* @to_char(i32 %48)
  %50 = ptrtoint i8* %49 to i8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %8, align 8
  store i8 %50, i8* %52, align 1
  br label %53

53:                                               ; preds = %60, %47
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @MAXEXPDIG, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %14, i64 %56
  %58 = icmp ult i8* %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  %63 = load i8, i8* %61, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  store i8 %63, i8* %64, align 1
  br label %53

66:                                               ; preds = %53
  br label %84

67:                                               ; preds = %29
  %68 = load i8, i8* %6, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 101
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8, i8* %6, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 69
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  store i8 48, i8* %76, align 1
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %5, align 4
  %80 = call i8* @to_char(i32 %79)
  %81 = ptrtoint i8* %80 to i8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  store i8 %81, i8* %82, align 1
  br label %84

84:                                               ; preds = %78, %66
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @to_char(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
