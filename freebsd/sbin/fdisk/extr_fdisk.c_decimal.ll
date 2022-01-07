; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_decimal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_decimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Supply a decimal value for \22%s\22 [%d] \00", align 1
@stdout = common dso_local global i32 0, align 4
@lbuf = common dso_local global i8* null, align 8
@LBUF = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"%s exceeds maximum value allowed for this field. The value has been reduced to %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s is an invalid decimal number.  Try again.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i64)* @decimal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decimal(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  br label %13

13:                                               ; preds = %4, %139
  store i64 0, i64* %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fflush(i32 %17)
  %19 = load i8*, i8** @lbuf, align 8
  %20 = load i32, i32* @LBUF, align 4
  %21 = load i32, i32* @stdin, align 4
  %22 = call i32* @fgets(i8* %19, i32 %20, i32 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %13
  %27 = load i8*, i8** @lbuf, align 8
  %28 = load i8*, i8** @lbuf, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** @lbuf, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %140

37:                                               ; preds = %26
  %38 = load i8*, i8** @lbuf, align 8
  store i8* %38, i8** %12, align 8
  br label %39

39:                                               ; preds = %54, %37
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 9
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ true, %44 ], [ %49, %47 ]
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi i1 [ false, %39 ], [ %51, %50 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  br label %39

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %140

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %90, %61
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = icmp sle i32 %69, 57
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = icmp sge i32 %72, 48
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %9, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78, %74
  %82 = load i64, i64* %10, align 8
  %83 = mul nsw i64 %82, 10
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = sub nsw i64 %86, 48
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %81, %78
  br label %90

89:                                               ; preds = %71, %68
  br label %91

90:                                               ; preds = %88
  br label %62

91:                                               ; preds = %89, %62
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %97, label %117

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i8*, i8** %12, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  store i32 %101, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 32
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 9
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ true, %103 ], [ %108, %106 ]
  br label %111

111:                                              ; preds = %109, %98
  %112 = phi i1 [ false, %98 ], [ %110, %109 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %12, align 8
  br label %98

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %94
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %9, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %10, align 8
  %129 = load i8*, i8** @lbuf, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i8* %129, i64 %130)
  br label %132

132:                                              ; preds = %127, %123, %120
  %133 = load i64, i64* %10, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32*, i32** %7, align 8
  store i32 %134, i32* %135, align 4
  store i32 1, i32* %5, align 4
  br label %140

136:                                              ; preds = %117
  %137 = load i8*, i8** @lbuf, align 8
  %138 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %136
  br label %13

140:                                              ; preds = %132, %60, %36
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
