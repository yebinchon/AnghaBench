; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_prompt_longestline.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_dialog_prompt_longestline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_dialog = common dso_local global i64 0, align 8
@use_libdialog = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@use_color = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dialog_prompt_longestline(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %130

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %119, %109, %55, %22
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %23
  %29 = load i64, i64* @use_dialog, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @use_libdialog, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %31, %28
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i64, i64* @use_libdialog, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %48
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  br label %23

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 92
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = xor i32 %66, 1
  store i32 %67, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %65
  br label %119

73:                                               ; preds = %60
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 110
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i64, i64* @use_libdialog, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %89, %84
  store i32 0, i32* %10, align 4
  br label %114

92:                                               ; preds = %81, %76
  %93 = load i64, i64* @use_color, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 90
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %8, align 8
  br label %109

109:                                              ; preds = %106, %100
  store i32 0, i32* %6, align 4
  br label %23

110:                                              ; preds = %95, %92
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113, %91
  store i32 0, i32* %6, align 4
  br label %118

115:                                              ; preds = %73
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %115, %114
  br label %119

119:                                              ; preds = %118, %72
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %8, align 8
  br label %23

122:                                              ; preds = %23
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %21, %15
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
