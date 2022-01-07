; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_txparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_txparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ieee80211_txparam* }
%struct.ieee80211_txparam = type { i32, i32, i32, i32 }

@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_MAX = common dso_local global i32 0, align 4
@txparams = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%-7.7s ucast NONE    mgmt %2u %s mcast %2u %s maxretry %u\00", align 1
@modename = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"%-7.7s ucast %2u MCS  mgmt %2u %s mcast %2u %s maxretry %u\00", align 1
@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"%-7.7s ucast NONE    mgmt %2u Mb/s mcast %2u Mb/s maxretry %u\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"%-7.7s ucast %2u Mb/s mgmt %2u Mb/s mcast %2u Mb/s maxretry %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_txparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_txparams(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_txparam*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @gettxparams(i32 %5)
  %7 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %156, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IEEE80211_MODE_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %159

12:                                               ; preds = %8
  %13 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @txparams, i32 0, i32 0), align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %13, i64 %15
  store %struct.ieee80211_txparam* %16, %struct.ieee80211_txparam** %3, align 8
  %17 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %156

27:                                               ; preds = %21, %12
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IEEE80211_MODE_VHT_2GHZ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %108

43:                                               ; preds = %39, %35, %31, %27
  %44 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load i32*, i32** @modename, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @get_rate_value(i32 %57)
  %59 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @get_mcs_mbs_rate_str(i32 %61)
  %63 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @get_rate_value(i32 %65)
  %67 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @get_mcs_mbs_rate_str(i32 %69)
  %71 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, i32, i32, i32, ...) @LINE_CHECK(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %73)
  br label %107

75:                                               ; preds = %43
  %76 = load i32*, i32** @modename, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %82 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @get_rate_value(i32 %89)
  %91 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @get_mcs_mbs_rate_str(i32 %93)
  %95 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @get_rate_value(i32 %97)
  %99 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @get_mcs_mbs_rate_str(i32 %101)
  %103 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %104 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, i32, i32, i32, i32, ...) @LINE_CHECK(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %86, i32 %90, i32 %94, i32 %98, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %75, %49
  br label %155

108:                                              ; preds = %39
  %109 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %110 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = load i32*, i32** @modename, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %121 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 2
  %124 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %125 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sdiv i32 %126, 2
  %128 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, i32, i32, i32, i32, ...) @LINE_CHECK(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %123, i32 %127, i32 %130)
  br label %154

132:                                              ; preds = %108
  %133 = load i32*, i32** @modename, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 2
  %142 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %143 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, 2
  %146 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %147 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 2
  %150 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %3, align 8
  %151 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i32, i32, i32, i32, ...) @LINE_CHECK(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %141, i32 %145, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %132, %114
  br label %155

155:                                              ; preds = %154, %107
  br label %156

156:                                              ; preds = %155, %26
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %8

159:                                              ; preds = %8
  ret void
}

declare dso_local i32 @gettxparams(i32) #1

declare dso_local i32 @LINE_CHECK(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @get_rate_value(i32) #1

declare dso_local i32 @get_mcs_mbs_rate_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
