; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_wme_aci.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_wme_aci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@IEEE80211_IOC_WME_CWMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" cwmin %2u\00", align 1
@IEEE80211_IOC_WME_CWMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" cwmax %2u\00", align 1
@IEEE80211_IOC_WME_AIFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" aifs %2u\00", align 1
@IEEE80211_IOC_WME_TXOPLIMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c" txopLimit %3u\00", align 1
@IEEE80211_IOC_WME_ACM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" acm\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" -acm\00", align 1
@IEEE80211_WMEPARAM_BSS = common dso_local global i32 0, align 4
@IEEE80211_IOC_WME_ACKPOLICY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c" -ack\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" ack\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @list_wme_aci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_wme_aci(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IEEE80211_IOC_WME_CWMIN, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @get80211wme(i32 %10, i32 %11, i32 %12, i32* %7)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IEEE80211_IOC_WME_CWMAX, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @get80211wme(i32 %19, i32 %20, i32 %21, i32* %7)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IEEE80211_IOC_WME_AIFS, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @get80211wme(i32 %28, i32 %29, i32 %30, i32* %7)
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IEEE80211_IOC_WME_TXOPLIMIT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @get80211wme(i32 %37, i32 %38, i32 %39, i32* %7)
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IEEE80211_IOC_WME_ACM, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @get80211wme(i32 %46, i32 %47, i32 %48, i32* %7)
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %62

56:                                               ; preds = %51
  %57 = load i64, i64* @verbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @IEEE80211_IOC_WME_ACKPOLICY, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @get80211wme(i32 %69, i32 %70, i32 %71, i32* %7)
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %85

79:                                               ; preds = %74
  %80 = load i64, i64* @verbose, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %77
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %63
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get80211wme(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
