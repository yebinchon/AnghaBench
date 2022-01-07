; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_set_acl_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_set_acl_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.mac_acl_entry = type { i32 }
%struct.hostapd_acl_params = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.mac_acl_entry*, i32, i32)* @hostapd_set_acl_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_set_acl_list(%struct.hostapd_data* %0, %struct.mac_acl_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.mac_acl_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_acl_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.mac_acl_entry* %1, %struct.mac_acl_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = add i64 16, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.hostapd_acl_params* @os_zalloc(i32 %17)
  store %struct.hostapd_acl_params* %18, %struct.hostapd_acl_params** %10, align 8
  %19 = load %struct.hostapd_acl_params*, %struct.hostapd_acl_params** %10, align 8
  %20 = icmp ne %struct.hostapd_acl_params* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.hostapd_acl_params*, %struct.hostapd_acl_params** %10, align 8
  %31 = getelementptr inbounds %struct.hostapd_acl_params, %struct.hostapd_acl_params* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @os_memcpy(i32 %37, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.hostapd_acl_params*, %struct.hostapd_acl_params** %10, align 8
  %52 = getelementptr inbounds %struct.hostapd_acl_params, %struct.hostapd_acl_params* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.hostapd_acl_params*, %struct.hostapd_acl_params** %10, align 8
  %55 = getelementptr inbounds %struct.hostapd_acl_params, %struct.hostapd_acl_params* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %57 = load %struct.hostapd_acl_params*, %struct.hostapd_acl_params** %10, align 8
  %58 = call i32 @hostapd_drv_set_acl(%struct.hostapd_data* %56, %struct.hostapd_acl_params* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.hostapd_acl_params*, %struct.hostapd_acl_params** %10, align 8
  %60 = call i32 @os_free(%struct.hostapd_acl_params* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %49, %21
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.hostapd_acl_params* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @hostapd_drv_set_acl(%struct.hostapd_data*, %struct.hostapd_acl_params*) #1

declare dso_local i32 @os_free(%struct.hostapd_acl_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
