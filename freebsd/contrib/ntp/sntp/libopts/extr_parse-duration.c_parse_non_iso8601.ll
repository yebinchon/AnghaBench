; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_non_iso8601.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_parse-duration.c_parse_non_iso8601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTHING_IS_DONE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@MINUTE_IS_DONE = common dso_local global i64 0, align 8
@HOUR_IS_DONE = common dso_local global i64 0, align 8
@SEC_PER_HR = common dso_local global i64 0, align 8
@YEAR_IS_DONE = common dso_local global i64 0, align 8
@SEC_PER_YEAR = common dso_local global i32 0, align 4
@MONTH_IS_DONE = common dso_local global i64 0, align 8
@SEC_PER_MONTH = common dso_local global i32 0, align 4
@WEEK_IS_DONE = common dso_local global i64 0, align 8
@SEC_PER_WEEK = common dso_local global i32 0, align 4
@DAY_IS_DONE = common dso_local global i64 0, align 8
@SEC_PER_DAY = common dso_local global i32 0, align 4
@SEC_PER_MIN = common dso_local global i32 0, align 4
@SECOND_IS_DONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@BAD_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @parse_non_iso8601 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_non_iso8601(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @NOTHING_IS_DONE, align 8
  store i64 %8, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %139, %1
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @str_const_to_l(i8* %10, i8** %3, i32 10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @errno, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %144

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @MINUTE_IS_DONE, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %143

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @parse_hr_min_sec(i64 %26, i8* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @HOUR_IS_DONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @SEC_PER_HR, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %143

37:                                               ; preds = %32, %25
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @scale_n_add(i64 %38, i64 %39, i32 1)
  store i64 %40, i64* %2, align 8
  br label %147

41:                                               ; preds = %15
  br label %42

42:                                               ; preds = %47, %41
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  br label %42

50:                                               ; preds = %42
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %54 [
    i32 128, label %55
    i32 121, label %59
    i32 89, label %59
    i32 77, label %67
    i32 87, label %75
    i32 100, label %83
    i32 68, label %83
    i32 104, label %91
    i32 109, label %100
    i32 115, label %108
  ]

54:                                               ; preds = %50
  br label %144

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @scale_n_add(i64 %56, i64 %57, i32 1)
  store i64 %58, i64* %2, align 8
  br label %147

59:                                               ; preds = %50, %50
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @YEAR_IS_DONE, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %144

64:                                               ; preds = %59
  %65 = load i32, i32* @SEC_PER_YEAR, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i64, i64* @YEAR_IS_DONE, align 8
  store i64 %66, i64* %4, align 8
  br label %110

67:                                               ; preds = %50
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @MONTH_IS_DONE, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %144

72:                                               ; preds = %67
  %73 = load i32, i32* @SEC_PER_MONTH, align 4
  store i32 %73, i32* %7, align 4
  %74 = load i64, i64* @MONTH_IS_DONE, align 8
  store i64 %74, i64* %4, align 8
  br label %110

75:                                               ; preds = %50
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @WEEK_IS_DONE, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %144

80:                                               ; preds = %75
  %81 = load i32, i32* @SEC_PER_WEEK, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i64, i64* @WEEK_IS_DONE, align 8
  store i64 %82, i64* %4, align 8
  br label %110

83:                                               ; preds = %50, %50
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @DAY_IS_DONE, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %144

88:                                               ; preds = %83
  %89 = load i32, i32* @SEC_PER_DAY, align 4
  store i32 %89, i32* %7, align 4
  %90 = load i64, i64* @DAY_IS_DONE, align 8
  store i64 %90, i64* %4, align 8
  br label %110

91:                                               ; preds = %50
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @HOUR_IS_DONE, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %144

96:                                               ; preds = %91
  %97 = load i64, i64* @SEC_PER_HR, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i64, i64* @HOUR_IS_DONE, align 8
  store i64 %99, i64* %4, align 8
  br label %110

100:                                              ; preds = %50
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @MINUTE_IS_DONE, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %144

105:                                              ; preds = %100
  %106 = load i32, i32* @SEC_PER_MIN, align 4
  store i32 %106, i32* %7, align 4
  %107 = load i64, i64* @MINUTE_IS_DONE, align 8
  store i64 %107, i64* %4, align 8
  br label %110

108:                                              ; preds = %50
  store i32 1, i32* %7, align 4
  %109 = load i64, i64* @SECOND_IS_DONE, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %108, %105, %96, %88, %80, %72, %64
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i64 @scale_n_add(i64 %111, i64 %112, i32 %113)
  store i64 %114, i64* %5, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %3, align 8
  br label %117

117:                                              ; preds = %122, %110
  %118 = load i8*, i8** %3, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @isspace(i8 zeroext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  br label %117

125:                                              ; preds = %117
  %126 = load i8*, i8** %3, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i64, i64* %5, align 8
  store i64 %131, i64* %2, align 8
  br label %147

132:                                              ; preds = %125
  %133 = load i8*, i8** %3, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @isdigit(i8 zeroext %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  br label %143

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* @SECOND_IS_DONE, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %9, label %143

143:                                              ; preds = %139, %137, %36, %24
  br label %144

144:                                              ; preds = %143, %104, %95, %87, %79, %71, %63, %54, %14
  %145 = load i64, i64* @EINVAL, align 8
  store i64 %145, i64* @errno, align 8
  %146 = load i64, i64* @BAD_TIME, align 8
  store i64 %146, i64* %2, align 8
  br label %147

147:                                              ; preds = %144, %130, %55, %37
  %148 = load i64, i64* %2, align 8
  ret i64 %148
}

declare dso_local i64 @str_const_to_l(i8*, i8**, i32) #1

declare dso_local i64 @parse_hr_min_sec(i64, i8*) #1

declare dso_local i64 @scale_n_add(i64, i64, i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
