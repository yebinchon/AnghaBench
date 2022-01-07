; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printhtcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printhtcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ie_htcap = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"<cap 0x%x param 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" mcsset[\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IEEE80211_HTRATE_MAXSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s%u-%u\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"] extcap 0x%x txbf 0x%x antenna 0x%x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printhtcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printhtcap(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_ie_htcap*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i64, i64* @verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %94

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.ieee80211_ie_htcap*
  store %struct.ieee80211_ie_htcap* %19, %struct.ieee80211_ie_htcap** %9, align 8
  %20 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %20, i32 0, i32 5
  %22 = call i32 @LE_READ_2(i32* %21)
  %23 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %80, %17
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @isset(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %55, %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @isclr(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %58

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %42

58:                                               ; preds = %53, %42
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %65, i32 %66)
  br label %73

68:                                               ; preds = %58
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %79

79:                                               ; preds = %73, %32
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %28

83:                                               ; preds = %28
  %84 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %84, i32 0, i32 3
  %86 = call i32 @LE_READ_2(i32* %85)
  %87 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %88 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %87, i32 0, i32 2
  %89 = call i32 @LE_READ_4(i32* %88)
  %90 = load %struct.ieee80211_ie_htcap*, %struct.ieee80211_ie_htcap** %9, align 8
  %91 = getelementptr inbounds %struct.ieee80211_ie_htcap, %struct.ieee80211_ie_htcap* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %83, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LE_READ_2(i32*) #1

declare dso_local i64 @isset(i32, i32) #1

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @LE_READ_4(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
