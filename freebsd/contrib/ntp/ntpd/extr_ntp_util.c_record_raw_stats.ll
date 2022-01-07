; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_raw_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_raw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@stats_control = common dso_local global i32 0, align 4
@rawstats = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MJD_1900 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"%lu %s %s %s %s %s %s %s %d %d %d %d %d %d %.6f %.6f %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %d: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_raw_stats(i32* %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, double %12, double %13, i32 %14, i32 %15, i32* %16) #0 {
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca %struct.TYPE_10__, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store i32* %0, i32** %18, align 8
  store i32* %1, i32** %19, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %23, align 8
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store double %12, double* %30, align 8
  store double %13, double* %31, align 8
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  store i32* %16, i32** %34, align 8
  %38 = load i32, i32* @stats_control, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %17
  br label %124

41:                                               ; preds = %17
  %42 = call i32 @get_systime(%struct.TYPE_10__* %35)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @filegen_setup(%struct.TYPE_11__* @rawstats, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 86400
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @MJD_1900, align 8
  %51 = add nsw i64 %49, %50
  store i64 %51, i64* %36, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 86400
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rawstats, i32 0, i32 0), align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %124

57:                                               ; preds = %41
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rawstats, i32 0, i32 0), align 8
  %59 = load i64, i64* %36, align 8
  %60 = call i32 @ulfptoa(%struct.TYPE_10__* %35, i32 3)
  %61 = load i32*, i32** %18, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32*, i32** %18, align 8
  %65 = call i8* @stoa(i32* %64)
  br label %67

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i8* [ %65, %63 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %66 ]
  %69 = load i32*, i32** %19, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %19, align 8
  %73 = call i8* @stoa(i32* %72)
  br label %75

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i8* [ %73, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %74 ]
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %78 = call i32 @ulfptoa(%struct.TYPE_10__* %77, i32 9)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %80 = call i32 @ulfptoa(%struct.TYPE_10__* %79, i32 9)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %82 = call i32 @ulfptoa(%struct.TYPE_10__* %81, i32 9)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %84 = call i32 @ulfptoa(%struct.TYPE_10__* %83, i32 9)
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %28, align 4
  %90 = load i32, i32* %29, align 4
  %91 = load double, double* %30, align 8
  %92 = load double, double* %31, align 8
  %93 = load i32, i32* %32, align 4
  %94 = load i32, i32* %27, align 4
  %95 = call i32 @refid_str(i32 %93, i32 %94)
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %59, i32 %60, i8* %68, i8* %76, i32 %78, i32 %80, i32 %82, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, double %91, double %92, i32 %95)
  %97 = load i32, i32* %33, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %75
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rawstats, i32 0, i32 0), align 8
  %101 = load i32, i32* %33, align 4
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 0, i32* %37, align 4
  br label %103

103:                                              ; preds = %115, %99
  %104 = load i32, i32* %37, align 4
  %105 = load i32, i32* %33, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rawstats, i32 0, i32 0), align 8
  %109 = load i32*, i32** %34, align 8
  %110 = load i32, i32* %37, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %37, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %37, align 4
  br label %103

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118, %75
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rawstats, i32 0, i32 0), align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rawstats, i32 0, i32 0), align 8
  %123 = call i32 @fflush(i32* %122)
  br label %124

124:                                              ; preds = %40, %119, %41
  ret void
}

declare dso_local i32 @get_systime(%struct.TYPE_10__*) #1

declare dso_local i32 @filegen_setup(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @ulfptoa(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i32 @refid_str(i32, i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
