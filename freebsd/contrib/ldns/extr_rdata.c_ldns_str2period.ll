; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_str2period.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rdata.c_ldns_str2period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_str2period(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8**, i8*** %5, align 8
  store i8* %9, i8** %10, align 8
  br label %11

11:                                               ; preds = %82, %2
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %11
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %76 [
    i32 32, label %21
    i32 9, label %21
    i32 45, label %22
    i32 43, label %29
    i32 115, label %36
    i32 83, label %36
    i32 109, label %40
    i32 77, label %40
    i32 104, label %45
    i32 72, label %45
    i32 100, label %51
    i32 68, label %51
    i32 119, label %58
    i32 87, label %58
    i32 48, label %66
    i32 49, label %66
    i32 50, label %66
    i32 51, label %66
    i32 52, label %66
    i32 53, label %66
    i32 54, label %66
    i32 55, label %66
    i32 56, label %66
    i32 57, label %66
  ]

21:                                               ; preds = %16, %16
  br label %81

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %91

28:                                               ; preds = %25
  br label %81

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %32
  br label %81

36:                                               ; preds = %16, %16
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %81

40:                                               ; preds = %16, %16
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 60
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %81

45:                                               ; preds = %16, %16
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 60
  %48 = mul nsw i32 %47, 60
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %81

51:                                               ; preds = %16, %16
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %52, 60
  %54 = mul nsw i32 %53, 60
  %55 = mul nsw i32 %54, 24
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %81

58:                                               ; preds = %16, %16
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 60
  %61 = mul nsw i32 %60, 60
  %62 = mul nsw i32 %61, 24
  %63 = mul nsw i32 %62, 7
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %81

66:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, 10
  store i32 %68, i32* %7, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 48
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %81

76:                                               ; preds = %16
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %91

81:                                               ; preds = %66, %58, %51, %45, %40, %36, %35, %28, %21
  br label %82

82:                                               ; preds = %81
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  br label %11

86:                                               ; preds = %11
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %76, %33, %26
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
