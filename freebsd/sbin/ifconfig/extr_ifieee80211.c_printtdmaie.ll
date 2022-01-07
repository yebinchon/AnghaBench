; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printtdmaie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printtdmaie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tdma_param = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"<v%u slot:%u slotcnt:%u slotlen:%u bintval:%u inuse:0x%x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printtdmaie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printtdmaie(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tdma_param*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i64, i64* @verbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp uge i64 %15, 32
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.ieee80211_tdma_param*
  store %struct.ieee80211_tdma_param* %19, %struct.ieee80211_tdma_param** %9, align 8
  %20 = load %struct.ieee80211_tdma_param*, %struct.ieee80211_tdma_param** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tdma_param, %struct.ieee80211_tdma_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ieee80211_tdma_param*, %struct.ieee80211_tdma_param** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tdma_param, %struct.ieee80211_tdma_param* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_tdma_param*, %struct.ieee80211_tdma_param** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tdma_param, %struct.ieee80211_tdma_param* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ieee80211_tdma_param*, %struct.ieee80211_tdma_param** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tdma_param, %struct.ieee80211_tdma_param* %29, i32 0, i32 5
  %31 = call i32 @LE_READ_2(i32* %30)
  %32 = load %struct.ieee80211_tdma_param*, %struct.ieee80211_tdma_param** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tdma_param, %struct.ieee80211_tdma_param* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_tdma_param*, %struct.ieee80211_tdma_param** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tdma_param, %struct.ieee80211_tdma_param* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %17, %14, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LE_READ_2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
