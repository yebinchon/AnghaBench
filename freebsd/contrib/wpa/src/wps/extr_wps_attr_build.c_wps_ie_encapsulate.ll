; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_ie_encapsulate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_ie_encapsulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPS_DEV_OUI_WFA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %9 = call i32 @wpabuf_len(%struct.wpabuf* %8)
  %10 = add nsw i32 %9, 100
  %11 = call %struct.wpabuf* @wpabuf_alloc(i32 %10)
  store %struct.wpabuf* %11, %struct.wpabuf** %4, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %16 = call i32 @wpabuf_free(%struct.wpabuf* %15)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %19 = call i32* @wpabuf_head(%struct.wpabuf* %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %22 = call i32 @wpabuf_len(%struct.wpabuf* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %39, %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ugt i32* %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %36, 251
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i64 251, i64* %7, align 8
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %41 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %42 = call i32 @wpabuf_put_u8(%struct.wpabuf* %40, i32 %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @wpabuf_put_u8(%struct.wpabuf* %43, i32 %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %49 = load i32, i32* @WPS_DEV_OUI_WFA, align 4
  %50 = call i32 @wpabuf_put_be32(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @wpabuf_put_data(%struct.wpabuf* %51, i32* %52, i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32* %57, i32** %5, align 8
  br label %25

58:                                               ; preds = %25
  %59 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %60 = call i32 @wpabuf_free(%struct.wpabuf* %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %61, %struct.wpabuf** %2, align 8
  br label %62

62:                                               ; preds = %58, %14
  %63 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %63
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
