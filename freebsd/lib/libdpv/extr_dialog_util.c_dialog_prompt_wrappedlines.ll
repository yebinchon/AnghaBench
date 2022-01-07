; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_prompt_wrappedlines.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_prompt_wrappedlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_dialog = common dso_local global i64 0, align 8
@use_libdialog = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@use_color = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_prompt_wrappedlines(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %145

19:                                               ; preds = %3
  %20 = load i8*, i8** %11, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %145

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %140, %95, %25
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %143

31:                                               ; preds = %26
  %32 = load i64, i64* @use_dialog, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @use_libdialog, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34, %31
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i64, i64* @use_dialog, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %42
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %37
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = xor i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %57
  br label %105

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 110
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i64, i64* @use_libdialog, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %100

78:                                               ; preds = %73, %68
  %79 = load i64, i64* @use_color, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 90
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %11, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %11, align 8
  br label %95

95:                                               ; preds = %92, %86
  store i32 0, i32* %8, align 4
  br label %26

96:                                               ; preds = %81, %78
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %76
  store i32 0, i32* %8, align 4
  br label %104

101:                                              ; preds = %65
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %100
  br label %105

105:                                              ; preds = %104, %64
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %105
  %110 = load i8*, i8** %11, align 8
  store i8* %110, i8** %10, align 8
  br label %111

111:                                              ; preds = %122, %109
  %112 = load i32, i32* %12, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i8*, i8** %10, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @isspace(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %114, %111
  %121 = phi i1 [ false, %111 ], [ %119, %114 ]
  br i1 %121, label %122, label %127

122:                                              ; preds = %120
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %124, i8** %10, align 8
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %12, align 4
  br label %111

127:                                              ; preds = %120
  %128 = load i32, i32* %12, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i8*, i8** %10, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @isspace(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i8*, i8** %10, align 8
  store i8* %136, i8** %11, align 8
  br label %137

137:                                              ; preds = %135, %130, %127
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %140

140:                                              ; preds = %137, %105
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %11, align 8
  br label %26

143:                                              ; preds = %26
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %24, %18
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
