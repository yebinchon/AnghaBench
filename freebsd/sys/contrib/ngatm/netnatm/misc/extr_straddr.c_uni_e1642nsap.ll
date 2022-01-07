; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_e1642nsap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_e1642nsap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_e1642nsap(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = icmp ugt i64 %10, 15
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %103

16:                                               ; preds = %12
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isdigit(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %103

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  store i32 69, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 15, %36
  %38 = udiv i64 %37, 2
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %44, %33
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %4, align 8
  store i32 0, i32* %45, align 4
  br label %40

47:                                               ; preds = %40
  %48 = load i64, i64* %6, align 8
  %49 = and i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 48
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %51, %47
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i64, i64* %6, align 8
  %64 = icmp ugt i64 %63, 1
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = sub i64 %66, 2
  store i64 %67, i64* %6, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 48
  %73 = shl i32 %72, 4
  %74 = load i32*, i32** %4, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = sub nsw i32 %77, 48
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %4, align 8
  %81 = load i32, i32* %79, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %79, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  %86 = load i8, i8* %84, align 1
  %87 = sext i8 %86 to i32
  %88 = sub nsw i32 %87, 48
  %89 = shl i32 %88, 4
  %90 = or i32 %89, 15
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %4, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %99, %83
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 11
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %4, align 8
  store i32 0, i32* %97, align 4
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %93

102:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %28, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
