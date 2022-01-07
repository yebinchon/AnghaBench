; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_devcaps_req = type { i64, i64, i64, i64, %struct.TYPE_3__ }

@verbose = common dso_local global i64 0, align 8
@MAXCHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"no space for device capabilities\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"drivercaps\00", align 1
@IEEE80211_C_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cryptocaps\00", align 1
@IEEE80211_CRYPTO_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"htcaps\00", align 1
@IEEE80211_HTCAP_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vhtcaps\00", align 1
@IEEE80211_VHTCAP_BITS = common dso_local global i32 0, align 4
@chaninfo = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_capabilities(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_devcaps_req*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @verbose, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @MAXCHAN, align 4
  %8 = call i32 @IEEE80211_DEVCAPS_SIZE(i32 %7)
  %9 = call %struct.ieee80211_devcaps_req* @malloc(i32 %8)
  store %struct.ieee80211_devcaps_req* %9, %struct.ieee80211_devcaps_req** %3, align 8
  br label %13

10:                                               ; preds = %1
  %11 = call i32 @IEEE80211_DEVCAPS_SIZE(i32 1)
  %12 = call %struct.ieee80211_devcaps_req* @malloc(i32 %11)
  store %struct.ieee80211_devcaps_req* %12, %struct.ieee80211_devcaps_req** %3, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %15 = icmp eq %struct.ieee80211_devcaps_req* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i64, i64* @verbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @MAXCHAN, align 4
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 1, %23 ]
  %26 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %31 = call i32 @getdevcaps(i32 %29, %struct.ieee80211_devcaps_req* %30)
  %32 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @IEEE80211_C_BITS, align 4
  %36 = call i32 @printb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %34, i32 %35)
  %37 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %24
  %42 = load i64, i64* @verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %24
  %45 = call i32 @putchar(i8 signext 10)
  %46 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @IEEE80211_CRYPTO_BITS, align 4
  %50 = call i32 @printb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @verbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %51
  %60 = call i32 @putchar(i8 signext 10)
  %61 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %62 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @IEEE80211_HTCAP_BITS, align 4
  %65 = call i32 @printb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* @verbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71, %66
  %75 = call i32 @putchar(i8 signext 10)
  %76 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @IEEE80211_VHTCAP_BITS, align 4
  %80 = call i32 @printb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %71
  %82 = call i32 @putchar(i8 signext 10)
  %83 = load i64, i64* @verbose, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %87 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %86, i32 0, i32 4
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** @chaninfo, align 8
  %88 = load i32, i32* %2, align 4
  %89 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %89, i32 0, i32 4
  %91 = load i64, i64* @verbose, align 8
  %92 = call i32 @print_channels(i32 %88, %struct.TYPE_3__* %90, i32 1, i64 %91)
  br label %93

93:                                               ; preds = %85, %81
  %94 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %3, align 8
  %95 = call i32 @free(%struct.ieee80211_devcaps_req* %94)
  ret void
}

declare dso_local %struct.ieee80211_devcaps_req* @malloc(i32) #1

declare dso_local i32 @IEEE80211_DEVCAPS_SIZE(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getdevcaps(i32, %struct.ieee80211_devcaps_req*) #1

declare dso_local i32 @printb(i8*, i64, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @print_channels(i32, %struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @free(%struct.ieee80211_devcaps_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
