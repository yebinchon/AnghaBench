; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_float.c_exponent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_float.c_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXEXPDIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exponent(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @MAXEXPDIG, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %7, align 8
  store i8 %17, i8* %18, align 1
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 45, i8* %25, align 1
  br label %30

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  store i8 43, i8* %28, align 1
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* @MAXEXPDIG, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %14, i64 %32
  store i8* %33, i8** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 9
  br i1 %35, label %36, label %68

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %44, %36
  %38 = load i32, i32* %5, align 4
  %39 = srem i32 %38, 10
  %40 = call i8* @to_char(i32 %39)
  %41 = ptrtoint i8* %40 to i8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 -1
  store i8* %43, i8** %8, align 8
  store i8 %41, i8* %43, align 1
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 10
  store i32 %46, i32* %5, align 4
  %47 = icmp sgt i32 %46, 9
  br i1 %47, label %37, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @to_char(i32 %49)
  %51 = ptrtoint i8* %50 to i8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %8, align 8
  store i8 %51, i8* %53, align 1
  br label %54

54:                                               ; preds = %61, %48
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @MAXEXPDIG, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %14, i64 %57
  %59 = icmp ult i8* %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8, i8* %62, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  store i8 %64, i8* %65, align 1
  br label %54

67:                                               ; preds = %54
  br label %83

68:                                               ; preds = %30
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 101
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 69
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  store i8 48, i8* %75, align 1
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %5, align 4
  %79 = call i8* @to_char(i32 %78)
  %80 = ptrtoint i8* %79 to i8
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  store i8 %80, i8* %81, align 1
  br label %83

83:                                               ; preds = %77, %67
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  ret i32 %89
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
