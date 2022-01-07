; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printhtinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printhtinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ie_htinfo = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"<ctl %u, %x,%x,%x,%x\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" basicmcs[\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IEEE80211_HTRATE_MAXSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s%u-%u\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printhtinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printhtinfo(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_ie_htinfo*, align 8
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
  %19 = bitcast i32* %18 to %struct.ieee80211_ie_htinfo*
  store %struct.ieee80211_ie_htinfo* %19, %struct.ieee80211_ie_htinfo** %9, align 8
  %20 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %32, i32 0, i32 5
  %34 = call i32 @LE_READ_2(i32* %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %89, %17
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %92

41:                                               ; preds = %37
  %42 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @isset(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %64, %48
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %9, align 8
  %57 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @isclr(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %67

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %51

67:                                               ; preds = %62, %51
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %74, i32 %75)
  br label %82

77:                                               ; preds = %67
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %11, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %88

88:                                               ; preds = %82, %41
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %37

92:                                               ; preds = %37
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LE_READ_2(i32*) #1

declare dso_local i64 @isset(i32, i32) #1

declare dso_local i64 @isclr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
