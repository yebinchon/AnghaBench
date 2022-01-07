; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_ip_addr.c_hostapd_ip_txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_ip_addr.c_hostapd_ip_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_ip_addr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostapd_ip_txt(%struct.hostapd_ip_addr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_ip_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.hostapd_ip_addr* %0, %struct.hostapd_ip_addr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.hostapd_ip_addr*, %struct.hostapd_ip_addr** %5, align 8
  %12 = icmp eq %struct.hostapd_ip_addr* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i8* null, i8** %4, align 8
  br label %34

14:                                               ; preds = %10
  %15 = load %struct.hostapd_ip_addr*, %struct.hostapd_ip_addr** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_ip_addr, %struct.hostapd_ip_addr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.hostapd_ip_addr*, %struct.hostapd_ip_addr** %5, align 8
  %23 = getelementptr inbounds %struct.hostapd_ip_addr, %struct.hostapd_ip_addr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @inet_ntoa(i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @os_strlcpy(i8* %21, i32 %26, i64 %27)
  br label %32

29:                                               ; preds = %14
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %32, %13
  %35 = load i8*, i8** %4, align 8
  ret i8* %35
}

declare dso_local i32 @os_strlcpy(i8*, i32, i64) #1

declare dso_local i32 @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
