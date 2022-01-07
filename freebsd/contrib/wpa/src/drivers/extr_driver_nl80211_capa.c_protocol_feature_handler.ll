; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_protocol_feature_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_protocol_feature_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.genlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_PROTOCOL_FEATURES = common dso_local global i64 0, align 8
@NL_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @protocol_feature_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protocol_feature_handler(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.genlmsghdr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @NL80211_ATTR_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8
  %17 = call i32 @nlmsg_hdr(%struct.nl_msg* %16)
  %18 = call %struct.genlmsghdr* @nlmsg_data(i32 %17)
  store %struct.genlmsghdr* %18, %struct.genlmsghdr** %8, align 8
  %19 = load i32, i32* @NL80211_ATTR_MAX, align 4
  %20 = load %struct.genlmsghdr*, %struct.genlmsghdr** %8, align 8
  %21 = call i32 @genlmsg_attrdata(%struct.genlmsghdr* %20, i32 0)
  %22 = load %struct.genlmsghdr*, %struct.genlmsghdr** %8, align 8
  %23 = call i32 @genlmsg_attrlen(%struct.genlmsghdr* %22, i32 0)
  %24 = call i32 @nla_parse(%struct.nlattr** %15, i32 %19, i32 %21, i32 %23, i32* null)
  %25 = load i64, i64* @NL80211_ATTR_PROTOCOL_FEATURES, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i64, i64* @NL80211_ATTR_PROTOCOL_FEATURES, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_u32(%struct.nlattr* %32)
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i32, i32* @NL_SKIP, align 4
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #2

declare dso_local i32 @nlmsg_hdr(%struct.nl_msg*) #2

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i32, i32, i32*) #2

declare dso_local i32 @genlmsg_attrdata(%struct.genlmsghdr*, i32) #2

declare dso_local i32 @genlmsg_attrlen(%struct.genlmsghdr*, i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
