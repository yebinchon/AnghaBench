; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_read_bandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_read_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"duplicate token, override bandwidth value!\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no if support\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"interface name truncated\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Bi\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Bit/s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"by\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"bandwidth too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i32)* @read_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_bandwidth(i8* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 97
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 122
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IFNAMSIZ, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @strlcpy(i8* %42, i8* %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  store i32 0, i32* %46, align 4
  br label %127

47:                                               ; preds = %22, %16
  store i8* null, i8** %10, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strtoul(i8* %48, i8** %10, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 75
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 107
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %47
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 1000
  store i32 %63, i32* %9, align 4
  br label %96

64:                                               ; preds = %54
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 77
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 109
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %64
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %77, 1000000
  store i32 %78, i32* %9, align 4
  br label %95

79:                                               ; preds = %69
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 71
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 103
  br i1 %88, label %89, label %94

89:                                               ; preds = %84, %79
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 %92, 1000000000
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %59
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 66
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = call i64 @_substrcmp2(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101, %96
  %106 = load i8*, i8** %10, align 8
  %107 = call i64 @_substrcmp2(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %9, align 4
  %111 = mul nsw i32 %110, 8
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @EX_DATAERR, align 4
  %117 = call i32 @errx(i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 0, i8* %125, align 1
  br label %126

126:                                              ; preds = %123, %118
  br label %127

127:                                              ; preds = %126, %39
  ret void
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @_substrcmp2(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
