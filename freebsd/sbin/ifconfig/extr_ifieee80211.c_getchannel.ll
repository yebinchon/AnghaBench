; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"invalid channel specification%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" (out of range)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ieee80211_channel*, i8*)* @getchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getchannel(i32 %0, %struct.ieee80211_channel* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = call i32 @memset(%struct.ieee80211_channel* %10, i32 0, i32 4)
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @isanyarg(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @getchaninfo(i32 %20)
  store i64 0, i64* @errno, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strtol(i8* %22, i8** %9, i32 10)
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %19
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %55, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @ERANGE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 58
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 47
  br i1 %54, label %55, label %62

55:                                               ; preds = %49, %33, %29, %19
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ERANGE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %55, %49, %43, %37
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @getchannelflags(i8* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 255
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @mapfreq(%struct.ieee80211_channel* %69, i32 %70, i32 %71)
  br label %78

73:                                               ; preds = %62
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @mapchan(%struct.ieee80211_channel* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %15, %73, %68
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_channel*, i32, i32) #1

declare dso_local i64 @isanyarg(i8*) #1

declare dso_local i32 @getchaninfo(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @getchannelflags(i8*, i32) #1

declare dso_local i32 @mapfreq(%struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @mapchan(%struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
