; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@MBO_IE_HEADER = common dso_local global i32 0, align 4
@OCE_STA = common dso_local global i32 0, align 4
@MBO_ATTR_ID_CELL_DATA_CAPA = common dso_local global i32 0, align 4
@OCE_ATTR_ID_CAPA_IND = common dso_local global i32 0, align 4
@OCE_RELEASE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to add MBO/OCE IE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_mbo_ie(%struct.wpa_supplicant* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i32, i32* @MBO_IE_HEADER, align 4
  %14 = add nsw i32 %13, 3
  %15 = add nsw i32 %14, 7
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OCE_STA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 3, i32 0
  %24 = add nsw i32 %15, %23
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %12, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

28:                                               ; preds = %4
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @MBO_IE_HEADER, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %29, %31
  %33 = call %struct.wpabuf* @wpabuf_alloc(i64 %32)
  store %struct.wpabuf* %33, %struct.wpabuf** %10, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %35 = icmp ne %struct.wpabuf* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %88

37:                                               ; preds = %28
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %40 = call i32 @wpas_mbo_non_pref_chan_attrs(%struct.wpa_supplicant* %38, %struct.wpabuf* %39, i32 0)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %42 = load i32, i32* @MBO_ATTR_ID_CELL_DATA_CAPA, align 4
  %43 = call i32 @wpabuf_put_u8(%struct.wpabuf* %41, i32 %42)
  %44 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %45 = call i32 @wpabuf_put_u8(%struct.wpabuf* %44, i32 1)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wpabuf_put_u8(%struct.wpabuf* %46, i32 %51)
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OCE_STA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %37
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %64 = load i32, i32* @OCE_ATTR_ID_CAPA_IND, align 4
  %65 = call i32 @wpabuf_put_u8(%struct.wpabuf* %63, i32 %64)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %67 = call i32 @wpabuf_put_u8(%struct.wpabuf* %66, i32 1)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %69 = load i32, i32* @OCE_RELEASE, align 4
  %70 = call i32 @wpabuf_put_u8(%struct.wpabuf* %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %59, %37
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %75 = call i32 @wpabuf_head_u8(%struct.wpabuf* %74)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %77 = call i32 @wpabuf_len(%struct.wpabuf* %76)
  %78 = call i32 @mbo_add_ie(i32* %72, i64 %73, i32 %75, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @MSG_ERROR, align 4
  %83 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %71
  %85 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %86 = call i32 @wpabuf_free(%struct.wpabuf* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %36, %27
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpas_mbo_non_pref_chan_attrs(%struct.wpa_supplicant*, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @mbo_add_ie(i32*, i64, i32, i32) #1

declare dso_local i32 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
