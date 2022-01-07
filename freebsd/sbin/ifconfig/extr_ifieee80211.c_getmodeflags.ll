; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getmodeflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getmodeflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_CHAN_A = common dso_local global i32 0, align 4
@IEEE80211_CHAN_B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_TURBO = common dso_local global i32 0, align 4
@IEEE80211_CHAN_STURBO = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HALF = common dso_local global i32 0, align 4
@IEEE80211_CHAN_QUARTER = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Invalid mode attribute %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getmodeflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getmodeflags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strchr(i8* %6, i8 signext 58)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %89

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %85, %10
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i64 @isalpha(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @isupper(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @tolower(i32 %27) #3
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %79 [
    i32 97, label %31
    i32 98, label %35
    i32 103, label %39
    i32 110, label %43
    i32 100, label %47
    i32 116, label %51
    i32 115, label %63
    i32 104, label %67
    i32 113, label %71
    i32 118, label %75
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %84

35:                                               ; preds = %29
  %36 = load i32, i32* @IEEE80211_CHAN_B, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %29
  %40 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %84

43:                                               ; preds = %29
  %44 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %84

47:                                               ; preds = %29
  %48 = load i32, i32* @IEEE80211_CHAN_TURBO, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %84

51:                                               ; preds = %29
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IEEE80211_CHAN_STURBO, align 4
  %54 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @IEEE80211_CHAN_TURBO, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %51
  br label %84

63:                                               ; preds = %29
  %64 = load i32, i32* @IEEE80211_CHAN_STURBO, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %84

67:                                               ; preds = %29
  %68 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %84

71:                                               ; preds = %29
  %72 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  br label %84

75:                                               ; preds = %29
  %76 = load i32, i32* @IEEE80211_CHAN_VHT, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %84

79:                                               ; preds = %29
  %80 = load i8*, i8** %2, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %80, i8 signext %82)
  br label %84

84:                                               ; preds = %79, %75, %71, %67, %63, %62, %47, %43, %39, %35, %31
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %3, align 8
  br label %13

88:                                               ; preds = %13
  br label %89

89:                                               ; preds = %88, %1
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @isupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
