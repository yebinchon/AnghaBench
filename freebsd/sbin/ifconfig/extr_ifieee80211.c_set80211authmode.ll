; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211authmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211authmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@IEEE80211_AUTH_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@IEEE80211_AUTH_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@IEEE80211_AUTH_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"8021x\00", align 1
@IEEE80211_AUTH_8021X = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"wpa\00", align 1
@IEEE80211_AUTH_WPA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"unknown authmode\00", align 1
@IEEE80211_IOC_AUTHMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @set80211authmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set80211authmode(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
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
  %11 = call i64 @strcasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @IEEE80211_AUTH_NONE, align 4
  store i32 %14, i32* %9, align 4
  br label %45

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @IEEE80211_AUTH_OPEN, align 4
  store i32 %20, i32* %9, align 4
  br label %44

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcasecmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @IEEE80211_AUTH_SHARED, align 4
  store i32 %26, i32* %9, align 4
  br label %43

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @IEEE80211_AUTH_8021X, align 4
  store i32 %32, i32* %9, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @IEEE80211_AUTH_WPA, align 4
  store i32 %38, i32* %9, align 4
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IEEE80211_IOC_AUTHMODE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @set80211(i32 %46, i32 %47, i32 %48, i32 0, i32* null)
  ret void
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @set80211(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
