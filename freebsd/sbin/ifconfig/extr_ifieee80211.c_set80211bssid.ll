; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.sockaddr_dl = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"malformed link-level address\00", align 1
@IEEE80211_IOC_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @set80211bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set80211bssid(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_dl, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @isanyarg(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 2
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 58, i8* %27, align 1
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcpy(i8* %29, i8* %30)
  %32 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %10, i32 0, i32 0
  store i32 16, i32* %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @link_addr(i8* %33, %struct.sockaddr_dl* %10)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  %37 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %10, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %25
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IEEE80211_IOC_BSSID, align 4
  %46 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %47 = call i32* @LLADDR(%struct.sockaddr_dl* %10)
  %48 = call i32 @set80211(i32 %44, i32 %45, i32 0, i64 %46, i32* %47)
  br label %61

49:                                               ; preds = %4
  %50 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %11, align 8
  %52 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %12, align 8
  %53 = mul nuw i64 4, %50
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(i32* %52, i32 0, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @IEEE80211_IOC_BSSID, align 4
  %58 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %59 = call i32 @set80211(i32 %56, i32 %57, i32 0, i64 %58, i32* %52)
  %60 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %61

61:                                               ; preds = %49, %43
  ret void
}

declare dso_local i32 @isanyarg(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @link_addr(i8*, %struct.sockaddr_dl*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @set80211(i32, i32, i32, i64, i32*) #1

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
