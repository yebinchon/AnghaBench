; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_p2p_group_go_member_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_p2p_group_go_member_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_3__*, %struct.wpa_supplicant*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i64, i32, %struct.wpa_ssid* }
%struct.TYPE_4__ = type { %struct.wpa_supplicant* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"P2P: sup:%p ssid:%p disabled:%d p2p:%d mode:%d\00", align 1
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @p2p_group_go_member_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_group_go_member_count(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_supplicant* %9, %struct.wpa_supplicant** %2, align 8
  br label %10

10:                                               ; preds = %66, %1
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = icmp ne %struct.wpa_supplicant* %11, null
  br i1 %12, label %13, label %70

13:                                               ; preds = %10
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %4, align 8
  br label %19

19:                                               ; preds = %61, %13
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %21 = icmp ne %struct.wpa_ssid* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.wpa_supplicant* %24, %struct.wpa_ssid* %25, i32 %28, i64 %31, i64 %34)
  %36 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %22
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %42 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @p2p_get_group_num_members(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %45, %40, %22
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %63 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %62, i32 0, i32 3
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %63, align 8
  store %struct.wpa_ssid* %64, %struct.wpa_ssid** %4, align 8
  br label %19

65:                                               ; preds = %19
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 2
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %68, align 8
  store %struct.wpa_supplicant* %69, %struct.wpa_supplicant** %2, align 8
  br label %10

70:                                               ; preds = %10
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @wpa_printf(i32, i8*, %struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i64, i64) #1

declare dso_local i64 @p2p_get_group_num_members(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
