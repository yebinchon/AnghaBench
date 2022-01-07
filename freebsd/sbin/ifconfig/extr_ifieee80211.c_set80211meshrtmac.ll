; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211meshrtmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_set80211meshrtmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"malformed link-level address\00", align 1
@IEEE80211_IOC_MESH_RTCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @set80211meshrtmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set80211meshrtmac(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_dl, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add nsw i64 %10, 2
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 58, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcpy(i8* %21, i8* %22)
  %24 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %8, i32 0, i32 0
  store i32 16, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @link_addr(i8* %25, %struct.sockaddr_dl* %8)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @free(i8* %27)
  %29 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %8, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %17
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IEEE80211_IOC_MESH_RTCMD, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %40 = call i32 @LLADDR(%struct.sockaddr_dl* %8)
  %41 = call i32 @set80211(i32 %36, i32 %37, i32 %38, i64 %39, i32 %40)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @link_addr(i8*, %struct.sockaddr_dl*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @set80211(i32, i32, i32, i64, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
