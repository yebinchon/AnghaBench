; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri_chan_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_uri_chan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"DPP: URI channel-list: opclass=%d channel=%d ==> freq=%d\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"DPP: Ignore unknown URI channel-list channel (opclass=%d channel=%d)\00", align 1
@DPP_BOOTSTRAP_MAX_FREQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"DPP: Too many channels in URI channel-list - ignore list\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"DPP: Invalid URI channel-list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_parse_uri_chan_list(%struct.dpp_bootstrap_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_bootstrap_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpp_bootstrap_info* %0, %struct.dpp_bootstrap_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  store i32 -1, i32* %8, align 4
  br label %12

12:                                               ; preds = %135, %2
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 59
  br label %25

25:                                               ; preds = %20, %15, %12
  %26 = phi i1 [ false, %15 ], [ false, %12 ], [ %24, %20 ]
  br i1 %26, label %27, label %138

27:                                               ; preds = %25
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %41, %27
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  br label %29

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %139

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %139

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 48
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %73, 57
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ false, %65 ], [ %74, %70 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  br label %65

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ieee80211_chan_to_freq(i32* null, i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %118

96:                                               ; preds = %80
  %97 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %98 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DPP_BOOTSTRAP_MAX_FREQ, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %106 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %138

107:                                              ; preds = %96
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %110 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %4, align 8
  %113 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %108, i32* %116, align 4
  br label %117

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %91
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 59
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %6, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %118
  br label %138

129:                                              ; preds = %123
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 44
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %139

135:                                              ; preds = %129
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %6, align 8
  br label %12

138:                                              ; preds = %128, %102, %25
  store i32 0, i32* %3, align 4
  br label %142

139:                                              ; preds = %134, %63, %57
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %138
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ieee80211_chan_to_freq(i32*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
