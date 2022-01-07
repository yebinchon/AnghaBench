; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_putshell.c_optionQuoteString.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_putshell.c_optionQuoteString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"quot str\00", align 1
@NL = common dso_local global i8 0, align 1
@MK_STR_OCT_FMT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @optionQuoteString(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @string_size(i8* %11, i64 %12)
  %14 = call i8* @AGALOC(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  store i8 34, i8* %15, align 1
  br label %17

17:                                               ; preds = %120, %94, %2
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %8, align 1
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sge i32 %21, 32
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sle i32 %25, 126
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 34
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  store i8 92, i8* %36, align 1
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i8, i8* %8, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  store i8 %39, i8* %40, align 1
  br label %120

42:                                               ; preds = %23, %17
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  switch i32 %44, label %112 [
    i32 135, label %45
    i32 134, label %50
    i32 131, label %55
    i32 128, label %60
    i32 132, label %65
    i32 133, label %70
    i32 130, label %75
    i32 129, label %107
  ]

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  store i8 92, i8* %46, align 1
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  store i8 97, i8* %48, align 1
  br label %119

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 92, i8* %51, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 98, i8* %53, align 1
  br label %119

55:                                               ; preds = %42
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  store i8 92, i8* %56, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  store i8 116, i8* %58, align 1
  br label %119

60:                                               ; preds = %42
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  store i8 92, i8* %61, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i8 118, i8* %63, align 1
  br label %119

65:                                               ; preds = %42
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  store i8 92, i8* %66, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  store i8 102, i8* %68, align 1
  br label %119

70:                                               ; preds = %42
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 92, i8* %71, align 1
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  store i8 114, i8* %73, align 1
  br label %119

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %84, %75
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %3, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* @NL, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 92, i8* %85, align 1
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8 110, i8* %87, align 1
  br label %76

89:                                               ; preds = %76
  %90 = load i8*, i8** %3, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 129
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @memcpy(i8* %95, i8* %96, i64 %97)
  %99 = load i64, i64* %5, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8* %101, i8** %6, align 8
  br label %17

102:                                              ; preds = %89
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %6, align 8
  store i8 92, i8* %103, align 1
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  store i8 110, i8* %105, align 1
  br label %107

107:                                              ; preds = %42, %102
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  store i8 34, i8* %108, align 1
  %110 = load i8*, i8** %6, align 8
  store i8 -127, i8* %110, align 1
  %111 = load i8*, i8** %7, align 8
  ret i8* %111

112:                                              ; preds = %42
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** @MK_STR_OCT_FMT, align 8
  %115 = load i8, i8* %8, align 1
  %116 = call i32 @sprintf(i8* %113, i8* %114, i8 zeroext %115)
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  store i8* %118, i8** %6, align 8
  br label %119

119:                                              ; preds = %112, %70, %65, %60, %55, %50, %45
  br label %120

120:                                              ; preds = %119, %38
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %3, align 8
  br label %17
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @AGALOC(i32, i8*) #1

declare dso_local i32 @string_size(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
