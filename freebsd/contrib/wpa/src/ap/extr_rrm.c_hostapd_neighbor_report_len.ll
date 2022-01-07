; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_neighbor_report_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_neighbor_report_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.hostapd_neighbor_entry = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wpabuf*, %struct.hostapd_neighbor_entry*, i32, i32)* @hostapd_neighbor_report_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hostapd_neighbor_report_len(%struct.wpabuf* %0, %struct.hostapd_neighbor_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.hostapd_neighbor_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store %struct.hostapd_neighbor_entry* %1, %struct.hostapd_neighbor_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %6, align 8
  %11 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @wpabuf_len(i64 %12)
  %14 = add nsw i32 2, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %6, align 8
  %20 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %6, align 8
  %25 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @wpabuf_len(i64 %26)
  %28 = add nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %23, %18, %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %6, align 8
  %37 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %6, align 8
  %42 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @wpabuf_len(i64 %43)
  %45 = add nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %40, %35, %32
  %50 = load i64, i64* %9, align 8
  ret i64 %50
}

declare dso_local i32 @wpabuf_len(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
