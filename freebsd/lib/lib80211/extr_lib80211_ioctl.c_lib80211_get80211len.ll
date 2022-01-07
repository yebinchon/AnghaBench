; ModuleID = '/home/carl/AnghaBench/freebsd/lib/lib80211/extr_lib80211_ioctl.c_lib80211_get80211len.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/lib80211/extr_lib80211_ioctl.c_lib80211_get80211len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req = type { i32, i32, i8*, i32 }

@SIOCG80211 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lib80211_get80211len(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ieee80211req, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = call i32 @memset(%struct.ieee80211req* %14, i32 0, i32 24)
  %16 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strncpy(i32 %17, i8* %18, i32 4)
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SIOCG80211, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.ieee80211req* %14)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %41

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
