; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_put_anqp_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_put_anqp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@ANQP_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_ANQP_OUI_TYPE = common dso_local global i32 0, align 4
@HS20_STYPE_NAI_HOME_REALM_QUERY = common dso_local global i32 0, align 4
@HS20_STYPE_ICON_REQUEST = common dso_local global i32 0, align 4
@HS20_STYPE_QUERY_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hs20_put_anqp_req(i32 %0, i32* %1, i64 %2, %struct.wpabuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %8, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %12 = icmp eq %struct.wpabuf* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %92

14:                                               ; preds = %4
  %15 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %16 = load i32, i32* @ANQP_VENDOR_SPECIFIC, align 4
  %17 = call i32* @gas_anqp_add_element(%struct.wpabuf* %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %19 = load i32, i32* @OUI_WFA, align 4
  %20 = call i32 @wpabuf_put_be24(%struct.wpabuf* %18, i32 %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = load i32, i32* @HS20_ANQP_OUI_TYPE, align 4
  %23 = call i32 @wpabuf_put_u8(%struct.wpabuf* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HS20_STYPE_NAI_HOME_REALM_QUERY, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %14
  %29 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %30 = load i32, i32* @HS20_STYPE_NAI_HOME_REALM_QUERY, align 4
  %31 = call i32 @wpabuf_put_u8(%struct.wpabuf* %29, i32 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %33 = call i32 @wpabuf_put_u8(%struct.wpabuf* %32, i32 0)
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @wpabuf_put_data(%struct.wpabuf* %37, i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %28
  br label %86

42:                                               ; preds = %14
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HS20_STYPE_ICON_REQUEST, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %49 = load i32, i32* @HS20_STYPE_ICON_REQUEST, align 4
  %50 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %52 = call i32 @wpabuf_put_u8(%struct.wpabuf* %51, i32 0)
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @wpabuf_put_data(%struct.wpabuf* %56, i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %47
  br label %85

61:                                               ; preds = %42
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = load i32, i32* @HS20_STYPE_QUERY_LIST, align 4
  %64 = call i32 @wpabuf_put_u8(%struct.wpabuf* %62, i32 %63)
  %65 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %66 = call i32 @wpabuf_put_u8(%struct.wpabuf* %65, i32 0)
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %81, %61
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @wpabuf_put_u8(%struct.wpabuf* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %67

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %60
  br label %86

86:                                               ; preds = %85, %41
  %87 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %87, i32* %88)
  %90 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %91 = call i32 @gas_anqp_set_len(%struct.wpabuf* %90)
  br label %92

92:                                               ; preds = %86, %13
  ret void
}

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

declare dso_local i32 @gas_anqp_set_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
