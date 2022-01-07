; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-syslog.c_syslog_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-syslog.c_syslog_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SYSLOG_MAX_DIGITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@SYSLOG_FACILITY_MASK = common dso_local global i32 0, align 4
@SYSLOG_SEVERITY_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SYSLOG %s.%s, length: %u\00", align 1
@syslog_facility_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unknown (%u)\00", align 1
@syslog_severity_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"SYSLOG, length: %u\0A\09Facility %s (%u), Severity %s (%u)\0A\09Msg: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syslog_print(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i32 @ND_TCHECK2(i8 signext %12, i32 1)
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 60
  br i1 %20, label %21, label %88

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @ND_TCHECK2(i8 signext %28, i32 1)
  br label %30

30:                                               ; preds = %52, %21
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 57
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SYSLOG_MAX_DIGITS, align 4
  %49 = icmp sle i32 %47, %48
  br label %50

50:                                               ; preds = %46, %38, %30
  %51 = phi i1 [ false, %38 ], [ false, %30 ], [ %49, %46 ]
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 10
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 48
  %62 = add nsw i32 %54, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @ND_TCHECK2(i8 signext %69, i32 1)
  br label %30

71:                                               ; preds = %50
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 62
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = load i32, i32* @tstr, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to %struct.TYPE_6__*
  %84 = call i32 @ND_PRINT(%struct.TYPE_6__* %83)
  br label %170

85:                                               ; preds = %71
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %94

88:                                               ; preds = %3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = load i32, i32* @tstr, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to %struct.TYPE_6__*
  %93 = call i32 @ND_PRINT(%struct.TYPE_6__* %92)
  br label %170

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SYSLOG_FACILITY_MASK, align 4
  %97 = and i32 %95, %96
  %98 = ashr i32 %97, 3
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @SYSLOG_SEVERITY_MASK, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %118

106:                                              ; preds = %94
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = load i32, i32* @syslog_facility_values, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @tok2str(i32 %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @syslog_severity_values, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @tok2str(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to %struct.TYPE_6__*
  %117 = call i32 @ND_PRINT(%struct.TYPE_6__* %116)
  br label %170

118:                                              ; preds = %94
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @syslog_facility_values, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @tok2str(i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @syslog_severity_values, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @tok2str(i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to %struct.TYPE_6__*
  %131 = call i32 @ND_PRINT(%struct.TYPE_6__* %130)
  br label %132

132:                                              ; preds = %150, %118
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @ND_TCHECK2(i8 signext %141, i32 1)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = call i32 @safeputchar(%struct.TYPE_6__* %143, i8 signext %148)
  br label %150

150:                                              ; preds = %136
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %132

153:                                              ; preds = %132
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @print_unknown_data(%struct.TYPE_6__* %159, i8* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %158, %153
  br label %170

164:                                              ; No predecessors!
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = load i32, i32* @tstr, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to %struct.TYPE_6__*
  %169 = call i32 @ND_PRINT(%struct.TYPE_6__* %168)
  br label %170

170:                                              ; preds = %164, %163, %106, %88, %79
  ret void
}

declare dso_local i32 @ND_TCHECK2(i8 signext, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @safeputchar(%struct.TYPE_6__*, i8 signext) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_6__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
