; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_wpas_hs20_add_indication.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_wpas_hs20_add_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@HS20_VERSION = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_INDICATION_OUI_TYPE = common dso_local global i32 0, align 4
@HS20_PPS_MO_ID_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_hs20_add_indication(%struct.wpabuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @HS20_VERSION, align 4
  %10 = ashr i32 %9, 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %14, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %27 = call i32 @wpabuf_put_u8(%struct.wpabuf* %25, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 7, i32 5
  %33 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i32 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %35 = load i32, i32* @OUI_WFA, align 4
  %36 = call i32 @wpabuf_put_be24(%struct.wpabuf* %34, i32 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %38 = load i32, i32* @HS20_INDICATION_OUI_TYPE, align 4
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 %41, 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %24
  %46 = load i32, i32* @HS20_PPS_MO_ID_PRESENT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %24
  %50 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @wpabuf_put_u8(%struct.wpabuf* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @wpabuf_put_le16(%struct.wpabuf* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
