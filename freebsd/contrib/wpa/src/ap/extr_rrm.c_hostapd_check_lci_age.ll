; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_check_lci_age.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_check_lci_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_neighbor_entry = type { i32, i64 }
%struct.os_time = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_neighbor_entry*, i32)* @hostapd_check_lci_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_check_lci_age(%struct.hostapd_neighbor_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_neighbor_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.os_time, align 4
  %7 = alloca %struct.os_time, align 4
  %8 = alloca i64, align 8
  store %struct.hostapd_neighbor_entry* %0, %struct.hostapd_neighbor_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 65535
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 1, i32* %3, align 4
  br label %47

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

21:                                               ; preds = %17
  %22 = call i64 @os_get_time(%struct.os_time* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

25:                                               ; preds = %21
  %26 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %4, align 8
  %27 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %26, i32 0, i32 0
  %28 = call i32 @os_time_sub(%struct.os_time* %6, i32* %27, %struct.os_time* %7)
  %29 = getelementptr inbounds %struct.os_time, %struct.os_time* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 65535
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %47

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.os_time, %struct.os_time* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 10
  %37 = getelementptr inbounds %struct.os_time, %struct.os_time* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 100000
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %33, %32, %24, %20, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @os_time_sub(%struct.os_time*, i32*, %struct.os_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
