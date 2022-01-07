; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getchaninfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getchaninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chaninfo = common dso_local global i32* null, align 8
@MAXCHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no space for channel list\00", align 1
@IEEE80211_IOC_CHANINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to get channel information\00", align 1
@ifmr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @getchaninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getchaninfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @chaninfo, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load i32, i32* @MAXCHAN, align 4
  %8 = call i32 @IEEE80211_CHANINFO_SIZE(i32 %7)
  %9 = call i32* @malloc(i32 %8)
  store i32* %9, i32** @chaninfo, align 8
  %10 = load i32*, i32** @chaninfo, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %6
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @IEEE80211_IOC_CHANINFO, align 4
  %17 = load i32*, i32** @chaninfo, align 8
  %18 = load i32, i32* @MAXCHAN, align 4
  %19 = call i32 @IEEE80211_CHANINFO_SIZE(i32 %18)
  %20 = call i64 @get80211(i32 %15, i32 %16, i32* %17, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %14
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @ifmedia_getstate(i32 %25)
  store i32 %26, i32* @ifmr, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @gethtconf(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @getvhtconf(i32 %29)
  br label %31

31:                                               ; preds = %24, %5
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @IEEE80211_CHANINFO_SIZE(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @get80211(i32, i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ifmedia_getstate(i32) #1

declare dso_local i32 @gethtconf(i32) #1

declare dso_local i32 @getvhtconf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
