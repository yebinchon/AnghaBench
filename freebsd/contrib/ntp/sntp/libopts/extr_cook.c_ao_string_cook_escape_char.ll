; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_cook.c_ao_string_cook_escape_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_cook.c_ao_string_cook_escape_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ao_string_cook_escape_char(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8, i8* %14, align 1
  %17 = load i8*, i8** %6, align 8
  store i8 %16, i8* %17, align 1
  %18 = sext i8 %16 to i32
  switch i32 %18, label %131 [
    i32 128, label %19
    i32 13, label %20
    i32 129, label %29
    i32 97, label %34
    i32 98, label %36
    i32 102, label %38
    i32 110, label %40
    i32 114, label %42
    i32 116, label %44
    i32 118, label %46
    i32 120, label %48
    i32 88, label %48
    i32 48, label %87
    i32 49, label %87
    i32 50, label %87
    i32 51, label %87
    i32 52, label %87
    i32 53, label %87
    i32 54, label %87
    i32 55, label %87
  ]

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 129
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %134

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %3, %26
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i8
  %32 = load i8*, i8** %6, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %134

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  store i8 7, i8* %35, align 1
  br label %132

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  store i8 8, i8* %37, align 1
  br label %132

38:                                               ; preds = %3
  %39 = load i8*, i8** %6, align 8
  store i8 12, i8* %39, align 1
  br label %132

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  store i8 -127, i8* %41, align 1
  br label %132

42:                                               ; preds = %3
  %43 = load i8*, i8** %6, align 8
  store i8 13, i8* %43, align 1
  br label %132

44:                                               ; preds = %3
  %45 = load i8*, i8** %6, align 8
  store i8 9, i8* %45, align 1
  br label %132

46:                                               ; preds = %3
  %47 = load i8*, i8** %6, align 8
  store i8 11, i8* %47, align 1
  br label %132

48:                                               ; preds = %3, %3
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @IS_HEX_DIGIT_CHAR(i8 signext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %61
  store i8 %59, i8* %62, align 1
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = icmp uge i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %76

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @IS_HEX_DIGIT_CHAR(i8 signext %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %54, label %76

76:                                               ; preds = %68, %66
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %78
  store i8 -128, i8* %79, align 1
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %81 = call i64 @strtoul(i8* %80, i32* null, i32 16)
  %82 = trunc i64 %81 to i8
  %83 = load i8*, i8** %6, align 8
  store i8 %82, i8* %83, align 1
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %134

86:                                               ; preds = %48
  br label %132

87:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i32 0, i32* %13, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %93
  store i8 %90, i8* %94, align 1
  br label %95

95:                                               ; preds = %116, %87
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @IS_OCT_DIGIT_CHAR(i8 signext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %95
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %110
  store i8 %108, i8* %111, align 1
  %112 = load i32, i32* %13, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %13, align 4
  %114 = icmp uge i32 %113, 3
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %117

116:                                              ; preds = %103
  br label %95

117:                                              ; preds = %115, %95
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %119
  store i8 -128, i8* %120, align 1
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %122 = call i64 @strtoul(i8* %121, i32* null, i32 8)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp ugt i64 %123, 255
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i64 255, i64* %12, align 8
  br label %126

126:                                              ; preds = %125, %117
  %127 = load i64, i64* %12, align 8
  %128 = trunc i64 %127 to i8
  %129 = load i8*, i8** %6, align 8
  store i8 %128, i8* %129, align 1
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %4, align 4
  br label %134

131:                                              ; preds = %3
  br label %132

132:                                              ; preds = %131, %86, %46, %44, %42, %40, %38, %36, %34
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %126, %76, %29, %25, %19
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @IS_HEX_DIGIT_CHAR(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @IS_OCT_DIGIT_CHAR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
