; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_optionPrintParagraphs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_optionPrintParagraphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ppara\00", align 1
@NL = common dso_local global i8 0, align 1
@HT = common dso_local global i8 0, align 1
@NUL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionPrintParagraphs(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %18, 256
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %3
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @print_one_paragraph(i8* %21, i32 %22, i32* %23)
  br label %135

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @AGDUPSTR(i8* %26, i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %128, %25
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %31, 256
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @print_one_paragraph(i8* %35, i32 %36, i32* %37)
  br label %132

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %103, %73, %55, %39
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* @NL, align 1
  %44 = call i8* @strchr(i8* %42, i8 signext %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %34

48:                                               ; preds = %41
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 40
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  br label %41

58:                                               ; preds = %48
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 @isspace(i32 %63) #3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @HT, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %58
  br label %41

74:                                               ; preds = %66
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @NL, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %90, %81
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @NL, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %82

91:                                               ; preds = %82
  br label %109

92:                                               ; preds = %74
  %93 = load i8*, i8** %9, align 8
  store i8* %93, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %105, %92
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = icmp sge i32 %101, 8
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i8*, i8** %10, align 8
  store i8* %104, i8** %9, align 8
  br label %41

105:                                              ; preds = %99
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  br label %94

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %91
  %110 = load i8*, i8** %9, align 8
  %111 = load i8, i8* %110, align 1
  store i8 %111, i8* %12, align 1
  %112 = load i8, i8* @NUL, align 1
  %113 = load i8*, i8** %9, align 8
  store i8 %112, i8* %113, align 1
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @print_one_paragraph(i8* %114, i32 %115, i32* %116)
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = load i64, i64* %7, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp ule i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %109
  br label %132

128:                                              ; preds = %109
  %129 = load i8, i8* %12, align 1
  %130 = load i8*, i8** %9, align 8
  store i8 %129, i8* %130, align 1
  %131 = load i8*, i8** %9, align 8
  store i8* %131, i8** %8, align 8
  br label %30

132:                                              ; preds = %127, %34
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @AGFREE(i8* %133)
  br label %135

135:                                              ; preds = %132, %20
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @print_one_paragraph(i8*, i32, i32*) #1

declare dso_local i32 @AGDUPSTR(i8*, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i32 @AGFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
