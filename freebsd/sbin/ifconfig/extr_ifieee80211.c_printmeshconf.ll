; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printmeshconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printmeshconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_meshconf_ie = type { i64, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"<PATH:\00", align 1
@IEEE80211_MESHCONF_PATH_HWMP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"HWMP\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" LINK:\00", align 1
@IEEE80211_MESHCONF_METRIC_AIRTIME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"AIRTIME\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" CONGESTION:\00", align 1
@IEEE80211_MESHCONF_CC_DISABLED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" SYNC:\00", align 1
@IEEE80211_MESHCONF_SYNC_NEIGHOFF = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"NEIGHOFF\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" AUTH:\00", align 1
@IEEE80211_MESHCONF_AUTH_DISABLED = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c" FORM:0x%x CAPS:0x%x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printmeshconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printmeshconf(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_meshconf_ie*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i64, i64* @verbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.ieee80211_meshconf_ie*
  store %struct.ieee80211_meshconf_ie* %16, %struct.ieee80211_meshconf_ie** %9, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IEEE80211_MESHCONF_PATH_HWMP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %27

25:                                               ; preds = %14
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_MESHCONF_METRIC_AIRTIME, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %38

36:                                               ; preds = %27
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %40 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IEEE80211_MESHCONF_CC_DISABLED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %49

47:                                               ; preds = %38
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %51 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IEEE80211_MESHCONF_SYNC_NEIGHOFF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %60

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %56
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %62 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IEEE80211_MESHCONF_AUTH_DISABLED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %71

69:                                               ; preds = %60
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %67
  %72 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
