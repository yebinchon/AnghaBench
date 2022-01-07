; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_process_bss_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_process_bss_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.i802_bss = type { i32, i32 }
%struct.genlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_MAX = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"nl80211: BSS Event %d (%s) received for %s\00", align 1
@NL80211_ATTR_FRAME = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_TIMED_OUT = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_ACK = common dso_local global i64 0, align 8
@NL80211_ATTR_COOKIE = common dso_local global i64 0, align 8
@NL80211_ATTR_RX_SIGNAL_DBM = common dso_local global i64 0, align 8
@NL80211_ATTR_STA_WME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"nl80211: Ignored unknown event (cmd=%d)\00", align 1
@NL_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_bss_event(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i802_bss*, align 8
  %6 = alloca %struct.genlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.i802_bss*
  store %struct.i802_bss* %10, %struct.i802_bss** %5, align 8
  %11 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %12 = call i32 @nlmsg_hdr(%struct.nl_msg* %11)
  %13 = call %struct.genlmsghdr* @nlmsg_data(i32 %12)
  store %struct.genlmsghdr* %13, %struct.genlmsghdr** %6, align 8
  %14 = load i32, i32* @NL80211_ATTR_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @NL80211_ATTR_MAX, align 4
  %20 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %21 = call i32 @genlmsg_attrdata(%struct.genlmsghdr* %20, i32 0)
  %22 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %23 = call i32 @genlmsg_attrlen(%struct.genlmsghdr* %22, i32 0)
  %24 = call i32 @nla_parse(%struct.nlattr** %18, i32 %19, i32 %21, i32 %23, i32* null)
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %27 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %30 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nl80211_command_to_string(i32 %31)
  %33 = load %struct.i802_bss*, %struct.i802_bss** %5, align 8
  %34 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %35)
  %37 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %38 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %81 [
    i32 131, label %40
    i32 130, label %40
    i32 128, label %70
    i32 129, label %73
    i32 132, label %76
  ]

40:                                               ; preds = %2, %2
  %41 = load %struct.i802_bss*, %struct.i802_bss** %5, align 8
  %42 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %43 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @NL80211_ATTR_FRAME, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = load i64, i64* @NL80211_ATTR_TIMED_OUT, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = load i64, i64* @NL80211_ATTR_ACK, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = load i64, i64* @NL80211_ATTR_COOKIE, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = load i64, i64* @NL80211_ATTR_RX_SIGNAL_DBM, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = load i64, i64* @NL80211_ATTR_STA_WME, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @mlme_event(%struct.i802_bss* %41, i32 %44, %struct.nlattr* %47, %struct.nlattr* %50, %struct.nlattr* %53, %struct.nlattr* %56, %struct.nlattr* %59, %struct.nlattr* %62, %struct.nlattr* %65, %struct.nlattr* %68, i32* null)
  br label %87

70:                                               ; preds = %2
  %71 = load %struct.i802_bss*, %struct.i802_bss** %5, align 8
  %72 = call i32 @nl80211_spurious_frame(%struct.i802_bss* %71, %struct.nlattr** %18, i32 0)
  br label %87

73:                                               ; preds = %2
  %74 = load %struct.i802_bss*, %struct.i802_bss** %5, align 8
  %75 = call i32 @nl80211_spurious_frame(%struct.i802_bss* %74, %struct.nlattr** %18, i32 1)
  br label %87

76:                                               ; preds = %2
  %77 = load %struct.i802_bss*, %struct.i802_bss** %5, align 8
  %78 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nl80211_external_auth(i32 %79, %struct.nlattr** %18)
  br label %87

81:                                               ; preds = %2
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %84 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %76, %73, %70, %40
  %88 = load i32, i32* @NL_SKIP, align 4
  %89 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %89)
  ret i32 %88
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local i32 @nlmsg_hdr(%struct.nl_msg*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_attrdata(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @genlmsg_attrlen(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @nl80211_command_to_string(i32) #1

declare dso_local i32 @mlme_event(%struct.i802_bss*, i32, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, %struct.nlattr*, i32*) #1

declare dso_local i32 @nl80211_spurious_frame(%struct.i802_bss*, %struct.nlattr**, i32) #1

declare dso_local i32 @nl80211_external_auth(i32, %struct.nlattr**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
