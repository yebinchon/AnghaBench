; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_numeric.c_optionShowRange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_numeric.c_optionShowRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.anon = type { i64, i64 }

@zTabHyp = common dso_local global i8* null, align 8
@tab_skip_ct = common dso_local global i32 0, align 4
@OPTPROC_EMIT_USAGE = common dso_local global %struct.TYPE_10__* null, align 8
@OPTPROC_EMIT_LIMIT = common dso_local global %struct.TYPE_10__* null, align 8
@ONE_TAB_STR = common dso_local global i8* null, align 8
@option_usage_fp = common dso_local global i32 0, align 4
@zRangeErr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPTST_SCALED_NUM = common dso_local global i32 0, align 4
@zRangeScaled = common dso_local global i8* null, align 8
@zRangeLie = common dso_local global i8* null, align 8
@zRangeOnly = common dso_local global i8* null, align 8
@zTabSpace = common dso_local global i8* null, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@zRangeExact = common dso_local global i8* null, align 8
@zRangeUpto = common dso_local global i8* null, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@zRangeAbove = common dso_local global i8* null, align 8
@zRange = common dso_local global i8* null, align 8
@NL = common dso_local global i32 0, align 4
@zRangeOr = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionShowRange(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.anon*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.anon*
  store %struct.anon* %12, %struct.anon** %9, align 8
  %13 = load i8*, i8** @zTabHyp, align 8
  %14 = load i32, i32* @tab_skip_ct, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @OPTPROC_EMIT_USAGE, align 8
  %19 = icmp ne %struct.TYPE_10__* %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @OPTPROC_EMIT_LIMIT, align 8
  %23 = icmp ule %struct.TYPE_10__* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %156

25:                                               ; preds = %20
  %26 = load i8*, i8** @ONE_TAB_STR, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i32, i32* @option_usage_fp, align 4
  %28 = load i8*, i8** @zRangeErr, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %27, i8* %28, i8* %31, i64 %34, i64 %38)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %40

40:                                               ; preds = %25, %4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @OPTST_SCALED_NUM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @option_usage_fp, align 4
  %49 = load i8*, i8** @zRangeScaled, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %48, i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* @option_usage_fp, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i8*, i8** @zRangeLie, align 8
  br label %60

58:                                               ; preds = %52
  %59 = load i8*, i8** @zRangeOnly, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i8* [ %57, %56 ], [ %59, %58 ]
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %53, i8* %61, i8* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @OPTPROC_EMIT_USAGE, align 8
  %66 = icmp ne %struct.TYPE_10__* %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i8*, i8** @ONE_TAB_STR, align 8
  br label %74

69:                                               ; preds = %60
  %70 = load i8*, i8** @zTabSpace, align 8
  %71 = load i32, i32* @tab_skip_ct, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  br label %74

74:                                               ; preds = %69, %67
  %75 = phi i8* [ %68, %67 ], [ %73, %69 ]
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %139, %74
  %77 = load %struct.anon*, %struct.anon** %9, align 8
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LONG_MIN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* @option_usage_fp, align 4
  %84 = load i8*, i8** @zRangeExact, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.anon*, %struct.anon** %9, align 8
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %83, i8* %84, i8* %85, i64 %88)
  br label %131

90:                                               ; preds = %76
  %91 = load %struct.anon*, %struct.anon** %9, align 8
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LONG_MIN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load i32, i32* @option_usage_fp, align 4
  %98 = load i8*, i8** @zRangeUpto, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load %struct.anon*, %struct.anon** %9, align 8
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %97, i8* %98, i8* %99, i64 %102)
  br label %130

104:                                              ; preds = %90
  %105 = load %struct.anon*, %struct.anon** %9, align 8
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LONG_MAX, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i32, i32* @option_usage_fp, align 4
  %112 = load i8*, i8** @zRangeAbove, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load %struct.anon*, %struct.anon** %9, align 8
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %111, i8* %112, i8* %113, i64 %116)
  br label %129

118:                                              ; preds = %104
  %119 = load i32, i32* @option_usage_fp, align 4
  %120 = load i8*, i8** @zRange, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.anon*, %struct.anon** %9, align 8
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.anon*, %struct.anon** %9, align 8
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %119, i8* %120, i8* %121, i64 %124, i64 %127)
  br label %129

129:                                              ; preds = %118, %110
  br label %130

130:                                              ; preds = %129, %96
  br label %131

131:                                              ; preds = %130, %82
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %8, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @NL, align 4
  %137 = load i32, i32* @option_usage_fp, align 4
  %138 = call i32 @fputc(i32 %136, i32 %137)
  br label %145

139:                                              ; preds = %131
  %140 = load i32, i32* @zRangeOr, align 4
  %141 = load i32, i32* @option_usage_fp, align 4
  %142 = call i32 @fputs(i32 %140, i32 %141)
  %143 = load %struct.anon*, %struct.anon** %9, align 8
  %144 = getelementptr inbounds %struct.anon, %struct.anon* %143, i32 1
  store %struct.anon* %144, %struct.anon** %9, align 8
  br label %76

145:                                              ; preds = %135
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @OPTPROC_EMIT_LIMIT, align 8
  %148 = icmp ugt %struct.TYPE_10__* %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = load i32, i32* @EXIT_FAILURE, align 4
  %155 = call i32 %152(%struct.TYPE_10__* %153, i32 %154)
  br label %156

156:                                              ; preds = %24, %149, %145
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @fputc(i32, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
