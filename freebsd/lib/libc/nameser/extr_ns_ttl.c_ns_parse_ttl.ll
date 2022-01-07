; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_ttl.c_ns_parse_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_ttl.c_ns_parse_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_parse_ttl(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %66, %30, %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %11
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @isascii(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @isprint(i32 %22) #3
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %17
  br label %90

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @isdigit(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 10
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 48
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %11

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %90

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @islower(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @toupper(i32 %48) #3
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %65 [
    i32 87, label %52
    i32 68, label %55
    i32 72, label %58
    i32 77, label %61
    i32 83, label %64
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 7
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %52
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 24
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %55
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 60
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %50, %58
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %62, 60
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %50, %61
  br label %66

65:                                               ; preds = %50
  br label %90

66:                                               ; preds = %64
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %11

70:                                               ; preds = %11
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %90

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77
  br label %87

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %90

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %92

90:                                               ; preds = %85, %76, %65, %42, %25
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @isascii(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @islower(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
