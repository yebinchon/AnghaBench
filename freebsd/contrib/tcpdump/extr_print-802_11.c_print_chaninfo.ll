; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_print_chaninfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_print_chaninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%u MHz\00", align 1
@IEEE80211_RADIOTAP_MCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" 11n\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" FHSS\00", align 1
@IEEE80211_CHAN_HALF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" 11a/10Mhz\00", align 1
@IEEE80211_CHAN_QUARTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" 11a/5Mhz\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" 11a\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" 11g/10Mhz\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" 11g/5Mhz\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" 11g\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" 11b\00", align 1
@IEEE80211_CHAN_TURBO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c" Turbo\00", align 1
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c" ht/20\00", align 1
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c" ht/40-\00", align 1
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c" ht/40+\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @print_chaninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_chaninfo(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32*
  %13 = call i32 @ND_PRINT(i32* %12)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IEEE80211_RADIOTAP_MCS, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.1 to i32*))
  br label %96

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @IS_CHAN_FHSS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.2 to i32*))
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @IS_CHAN_A(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.3 to i32*))
  br label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.4 to i32*))
  br label %52

49:                                               ; preds = %41
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.5 to i32*))
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @IS_CHAN_ANYG(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.6 to i32*))
  br label %78

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.7 to i32*))
  br label %77

74:                                               ; preds = %66
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.8 to i32*))
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %63
  br label %87

79:                                               ; preds = %54
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @IS_CHAN_B(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.9 to i32*))
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @IEEE80211_CHAN_TURBO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.10 to i32*))
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %19
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.11 to i32*))
  br label %122

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.12 to i32*))
  br label %121

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.13 to i32*))
  br label %120

120:                                              ; preds = %117, %112
  br label %121

121:                                              ; preds = %120, %109
  br label %122

122:                                              ; preds = %121, %101
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.14 to i32*))
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @IS_CHAN_FHSS(i32) #1

declare dso_local i64 @IS_CHAN_A(i32) #1

declare dso_local i64 @IS_CHAN_ANYG(i32) #1

declare dso_local i64 @IS_CHAN_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
