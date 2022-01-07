; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_normdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc.c_mandoc_normdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MANDOCERR_DATE_MISSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"$Mdocdate$\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"$Mdocdate: %b %d %Y $\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%b %d, %Y\00", align 1
@MANDOCERR_DATE_FUTURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MANDOCERR_DATE_NORM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@MANDOCERR_DATE_BAD = common dso_local global i32 0, align 4
@MACROSET_MDOC = common dso_local global i64 0, align 8
@MANDOCERR_DATE_LEGACY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Dd %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mandoc_normdate(%struct.roff_man* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %13 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %19 ], [ %21, %20 ]
  %24 = call i8* @mandoc_strdup(i8* %23)
  store i8* %24, i8** %5, align 8
  br label %132

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @MANDOCERR_DATE_MISSING, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %34, i32 %35, i32 %36, i8* null)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %41, %38
  %51 = call i64 @time(i32* null)
  %52 = call i8* @time2a(i64 %51)
  store i8* %52, i8** %5, align 8
  br label %132

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @a2time(i64* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @a2time(i64* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %57, %53
  %62 = load i64, i64* %11, align 8
  %63 = call i8* @time2a(i64 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @time(i32* null)
  %66 = add nsw i64 %65, 86400
  %67 = icmp sgt i64 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @MANDOCERR_DATE_FUTURE, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %69, i32 %70, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  br label %91

74:                                               ; preds = %61
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 36
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i64 @strcmp(i8* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @MANDOCERR_DATE_NORM, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %84, %79, %74
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %5, align 8
  br label %132

93:                                               ; preds = %57
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @a2time(i64* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* @MANDOCERR_DATE_BAD, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %98, i32 %99, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  br label %129

103:                                              ; preds = %93
  %104 = load i64, i64* %11, align 8
  %105 = call i64 @time(i32* null)
  %106 = add nsw i64 %105, 86400
  %107 = icmp sgt i64 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* @MANDOCERR_DATE_FUTURE, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %109, i32 %110, i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  br label %128

114:                                              ; preds = %103
  %115 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %116 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MACROSET_MDOC, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i32, i32* @MANDOCERR_DATE_LEGACY, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %122, i32 %123, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %121, %114
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %128, %97
  %130 = load i8*, i8** %7, align 8
  %131 = call i8* @mandoc_strdup(i8* %130)
  store i8* %131, i8** %5, align 8
  br label %132

132:                                              ; preds = %129, %91, %50, %22
  %133 = load i8*, i8** %5, align 8
  ret i8* %133
}

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @time2a(i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @a2time(i64*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
