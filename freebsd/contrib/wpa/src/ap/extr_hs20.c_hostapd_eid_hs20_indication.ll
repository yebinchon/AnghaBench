; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hostapd_eid_hs20_indication.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hs20.c_hostapd_eid_hs20_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_INDICATION_OUI_TYPE = common dso_local global i32 0, align 4
@HS20_ANQP_DOMAIN_ID_PRESENT = common dso_local global i32 0, align 4
@HS20_DGAF_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_hs20_indication(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %3, align 8
  br label %87

15:                                               ; preds = %2
  %16 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 2
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 5, i32 7
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @OUI_WFA, align 4
  %31 = call i32 @WPA_PUT_BE24(i32* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32* %33, i32** %5, align 8
  %34 = load i32, i32* @HS20_INDICATION_OUI_TYPE, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = shl i32 %42, 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %15
  %51 = load i32, i32* @HS20_ANQP_DOMAIN_ID_PRESENT, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %15
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %56 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @HS20_DGAF_DISABLED, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %70 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %78 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @WPA_PUT_LE16(i32* %76, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32* %84, i32** %5, align 8
  br label %85

85:                                               ; preds = %75, %65
  %86 = load i32*, i32** %5, align 8
  store i32* %86, i32** %3, align 8
  br label %87

87:                                               ; preds = %85, %13
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
