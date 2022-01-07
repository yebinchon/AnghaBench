; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_wme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_wme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@list_wme.acnames = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"AC_BE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"AC_BK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"AC_VI\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AC_VO\00", align 1
@verbose = common dso_local global i64 0, align 8
@WME_AC_BE = common dso_local global i32 0, align 4
@WME_AC_VO = common dso_local global i32 0, align 4
@IEEE80211_WMEPARAM_BSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_wme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_wme(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @verbose, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  %7 = load i32, i32* @WME_AC_BE, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %45, %6
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @WME_AC_VO, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @list_wme_aci(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  br label %30

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* @list_wme.acnames, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @list_wme_aci(i32 %23, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %18
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %13

39:                                               ; preds = %30
  %40 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %8

48:                                               ; preds = %8
  br label %67

49:                                               ; preds = %1
  %50 = load i32, i32* @WME_AC_BE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %63, %49
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @WME_AC_VO, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* @list_wme.acnames, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @list_wme_aci(i32 %56, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %51

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %48
  ret void
}

declare dso_local i32 @list_wme_aci(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
