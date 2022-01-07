; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printathie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printathie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ath_ie = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@ATHEROS_CAP_TURBO_PRIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DTURBO,\00", align 1
@ATHEROS_CAP_COMPRESSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"COMP,\00", align 1
@ATHEROS_CAP_FAST_FRAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"FF,\00", align 1
@ATHEROS_CAP_XR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"XR,\00", align 1
@ATHEROS_CAP_AR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"AR,\00", align 1
@ATHEROS_CAP_BURST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"BURST,\00", align 1
@ATHEROS_CAP_WME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"WME,\00", align 1
@ATHEROS_CAP_BOOST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"BOOST,\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"0x%x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printathie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printathie(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_ath_ie*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i64, i64* @verbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %95

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.ieee80211_ath_ie*
  store %struct.ieee80211_ath_ie* %16, %struct.ieee80211_ath_ie** %9, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATHEROS_CAP_TURBO_PRIME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %14
  %27 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATHEROS_CAP_COMPRESSION, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATHEROS_CAP_FAST_FRAME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ATHEROS_CAP_XR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATHEROS_CAP_AR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %53
  %63 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ATHEROS_CAP_BURST, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %62
  %72 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATHEROS_CAP_WME, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %82 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATHEROS_CAP_BOOST, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %80
  %90 = load %struct.ieee80211_ath_ie*, %struct.ieee80211_ath_ie** %9, align 8
  %91 = getelementptr inbounds %struct.ieee80211_ath_ie, %struct.ieee80211_ath_ie* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @LE_READ_2(i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LE_READ_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
