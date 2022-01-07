; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_print_regdomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_print_regdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i64, i64, i8, i64 }
%struct.regdomain = type { i32 }
%struct.country = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"regdomain %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"regdomain %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"country %d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"country %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"indoor\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"outdoor\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"anywhere\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ecm\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-ecm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_regdomain*, i32)* @print_regdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_regdomain(%struct.ieee80211_regdomain* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regdomain*, align 8
  %6 = alloca %struct.country*, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19, %11
  %23 = call i32 (...) @getregdata()
  %24 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.regdomain* @lib80211_regdomain_findbysku(i32 %23, i64 %26)
  store %struct.regdomain* %27, %struct.regdomain** %5, align 8
  %28 = load %struct.regdomain*, %struct.regdomain** %5, align 8
  %29 = icmp eq %struct.regdomain* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.regdomain*, %struct.regdomain** %5, align 8
  %37 = getelementptr inbounds %struct.regdomain, %struct.regdomain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %19
  %42 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46, %41
  %50 = call i32 (...) @getregdata()
  %51 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.country* @lib80211_country_findbycc(i32 %50, i64 %53)
  store %struct.country* %54, %struct.country** %6, align 8
  %55 = load %struct.country*, %struct.country** %6, align 8
  %56 = icmp eq %struct.country* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  br label %67

62:                                               ; preds = %49
  %63 = load %struct.country*, %struct.country** %6, align 8
  %64 = getelementptr inbounds %struct.country, %struct.country* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 73
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %91

76:                                               ; preds = %68
  %77 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %77, i32 0, i32 2
  %79 = load i8, i8* %78, align 8
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 79
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %90

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  br label %90

90:                                               ; preds = %89, %82
  br label %91

91:                                               ; preds = %90, %74
  %92 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %93 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %104

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @LINE_CHECK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  br label %104

104:                                              ; preds = %103, %96
  ret void
}

declare dso_local %struct.regdomain* @lib80211_regdomain_findbysku(i32, i64) #1

declare dso_local i32 @getregdata(...) #1

declare dso_local i32 @LINE_CHECK(i8*, ...) #1

declare dso_local %struct.country* @lib80211_country_findbycc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
