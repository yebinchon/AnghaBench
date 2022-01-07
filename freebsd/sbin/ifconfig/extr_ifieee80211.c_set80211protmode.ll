; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211protmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211protmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@IEEE80211_PROTMODE_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cts\00", align 1
@IEEE80211_PROTMODE_CTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rtscts\00", align 1
@IEEE80211_PROTMODE_RTSCTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown protection mode\00", align 1
@IEEE80211_IOC_PROTMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @set80211protmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set80211protmode(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcasecmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @IEEE80211_PROTMODE_OFF, align 4
  store i32 %14, i32* %9, align 4
  br label %31

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @IEEE80211_PROTMODE_CTS, align 4
  store i32 %20, i32* %9, align 4
  br label %30

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strncasecmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @IEEE80211_PROTMODE_RTSCTS, align 4
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %21
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IEEE80211_IOC_PROTMODE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @set80211(i32 %32, i32 %33, i32 %34, i32 0, i32* null)
  ret void
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @set80211(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
