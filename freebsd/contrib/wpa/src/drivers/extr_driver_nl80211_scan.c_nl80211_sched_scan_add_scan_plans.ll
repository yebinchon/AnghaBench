; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_sched_scan_add_scan_plans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_sched_scan_add_scan_plans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.nl_msg = type { i32 }
%struct.wpa_driver_scan_params = type { i32, %struct.sched_scan_plan* }
%struct.sched_scan_plan = type { i64, i64 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_SCHED_SCAN_PLANS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"nl80211: sched scan plan no. %u: Invalid interval: %u\00", align 1
@NL80211_SCHED_SCAN_PLAN_INTERVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"nl80211: sched scan plan no. %u: Invalid number of iterations: %u\00", align 1
@NL80211_SCHED_SCAN_PLAN_ITERATIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"nl80211: All sched scan plans but the last must specify number of iterations\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, %struct.wpa_driver_scan_params*)* @nl80211_sched_scan_add_scan_plans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_sched_scan_add_scan_plans(%struct.wpa_driver_nl80211_data* %0, %struct.nl_msg* %1, %struct.wpa_driver_scan_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %6 = alloca %struct.nl_msg*, align 8
  %7 = alloca %struct.wpa_driver_scan_params*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.sched_scan_plan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr*, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %5, align 8
  store %struct.nl_msg* %1, %struct.nl_msg** %6, align 8
  store %struct.wpa_driver_scan_params* %2, %struct.wpa_driver_scan_params** %7, align 8
  %12 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %13 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %12, i32 0, i32 1
  %14 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %13, align 8
  store %struct.sched_scan_plan* %14, %struct.sched_scan_plan** %9, align 8
  %15 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %16 = load i32, i32* @NL80211_ATTR_SCHED_SCAN_PLANS, align 4
  %17 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %8, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %150

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %133, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %25 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %136

28:                                               ; preds = %22
  %29 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  %32 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %29, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %11, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %150

36:                                               ; preds = %28
  %37 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %37, i64 %39
  %41 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %45, i64 %47
  %49 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %44, %36
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %59, i64 %61
  %63 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %64)
  store i32 -1, i32* %4, align 4
  br label %150

66:                                               ; preds = %44
  %67 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %68 = load i32, i32* @NL80211_SCHED_SCAN_PLAN_INTERVAL, align 4
  %69 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %69, i64 %71
  %73 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @nla_put_u32(%struct.nl_msg* %67, i32 %68, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %150

78:                                               ; preds = %66
  %79 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %79, i64 %81
  %83 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %86 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %84, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %78
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %93, i64 %95
  %97 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %92, i64 %98)
  store i32 -1, i32* %4, align 4
  br label %150

100:                                              ; preds = %78
  %101 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %101, i64 %103
  %105 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %110 = load i32, i32* @NL80211_SCHED_SCAN_PLAN_ITERATIONS, align 4
  %111 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %111, i64 %113
  %115 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @nla_put_u32(%struct.nl_msg* %109, i32 %110, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store i32 -1, i32* %4, align 4
  br label %150

120:                                              ; preds = %108, %100
  %121 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %122 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %123 = call i32 @nla_nest_end(%struct.nl_msg* %121, %struct.nlattr* %122)
  %124 = load %struct.sched_scan_plan*, %struct.sched_scan_plan** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %124, i64 %126
  %128 = getelementptr inbounds %struct.sched_scan_plan, %struct.sched_scan_plan* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %120
  br label %136

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %22

136:                                              ; preds = %131, %22
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %7, align 8
  %139 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub i32 %140, 1
  %142 = icmp ne i32 %137, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, i32* @MSG_DEBUG, align 4
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %150

146:                                              ; preds = %136
  %147 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %148 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %149 = call i32 @nla_nest_end(%struct.nl_msg* %147, %struct.nlattr* %148)
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %143, %119, %90, %77, %56, %35, %20
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.nl_msg*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @nla_put_u32(%struct.nl_msg*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.nl_msg*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
