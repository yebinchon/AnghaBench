; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_fix_grouping.c___fix_locale_grouping_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_fix_grouping.c___fix_locale_grouping_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nogrouping = common dso_local global i8* null, align 8
@CHAR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__fix_locale_grouping_str(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** @nogrouping, align 8
  store i8* %15, i8** %2, align 8
  br label %107

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %101, %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %104

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 59
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %101

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 49
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @CHAR_MAX, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  br label %101

48:                                               ; preds = %35, %30
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isdigit(i8 zeroext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** @nogrouping, align 8
  store i8* %54, i8** %2, align 8
  br label %107

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %6, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isdigit(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %55
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = mul nsw i32 %70, 10
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %6, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 48
  %77 = load i8, i8* %6, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %78, %76
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %6, align 1
  br label %81

81:                                               ; preds = %66, %55
  %82 = load i8, i8* %6, align 1
  %83 = load i8*, i8** %5, align 8
  store i8 %82, i8* %83, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i8*, i8** @nogrouping, align 8
  br label %96

94:                                               ; preds = %88
  %95 = load i8*, i8** %3, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  store i8* %97, i8** %2, align 8
  br label %107

98:                                               ; preds = %81
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %98, %41, %29
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  br label %19

104:                                              ; preds = %19
  %105 = load i8*, i8** %5, align 8
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %3, align 8
  store i8* %106, i8** %2, align 8
  br label %107

107:                                              ; preds = %104, %96, %53, %14
  %108 = load i8*, i8** %2, align 8
  ret i8* %108
}

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
