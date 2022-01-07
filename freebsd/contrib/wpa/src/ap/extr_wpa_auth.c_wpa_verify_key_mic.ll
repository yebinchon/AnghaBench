; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_verify_key_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_verify_key_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ptk = type { i32, i32 }
%struct.ieee802_1x_hdr = type { i32 }
%struct.wpa_eapol_key = type { i32 }

@WPA_EAPOL_KEY_MIC_MAX_LEN = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.wpa_ptk*, i32*, i64)* @wpa_verify_key_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_verify_key_mic(i32 %0, i64 %1, %struct.wpa_ptk* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_ptk*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee802_1x_hdr*, align 8
  %13 = alloca %struct.wpa_eapol_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store %struct.wpa_ptk* %2, %struct.wpa_ptk** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @WPA_EAPOL_KEY_MIC_MAX_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @wpa_mic_len(i32 %25, i64 %26)
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %76

31:                                               ; preds = %5
  %32 = load i32*, i32** %10, align 8
  %33 = bitcast i32* %32 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %33, %struct.ieee802_1x_hdr** %12, align 8
  %34 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %12, align 8
  %35 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %34, i64 1
  %36 = bitcast %struct.ieee802_1x_hdr* %35 to %struct.wpa_eapol_key*
  store %struct.wpa_eapol_key* %36, %struct.wpa_eapol_key** %13, align 8
  %37 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %38 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %37, i64 1
  %39 = bitcast %struct.wpa_eapol_key* %38 to i32*
  store i32* %39, i32** %18, align 8
  %40 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %41 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WPA_GET_BE16(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %18, align 8
  %45 = load i64, i64* %19, align 8
  %46 = call i32 @os_memcpy(i32* %24, i32* %44, i64 %45)
  %47 = load i32*, i32** %18, align 8
  %48 = load i64, i64* %19, align 8
  %49 = call i32 @os_memset(i32* %47, i32 0, i64 %48)
  %50 = load %struct.wpa_ptk*, %struct.wpa_ptk** %9, align 8
  %51 = getelementptr inbounds %struct.wpa_ptk, %struct.wpa_ptk* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wpa_ptk*, %struct.wpa_ptk** %9, align 8
  %54 = getelementptr inbounds %struct.wpa_ptk, %struct.wpa_ptk* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @WPA_KEY_INFO_TYPE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = call i64 @wpa_eapol_key_mic(i32 %52, i32 %55, i32 %56, i32 %59, i32* %60, i64 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %31
  %66 = load i32*, i32** %18, align 8
  %67 = load i64, i64* %19, align 8
  %68 = call i64 @os_memcmp_const(i32* %24, i32* %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %31
  store i32 -1, i32* %15, align 4
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i32*, i32** %18, align 8
  %73 = load i64, i64* %19, align 8
  %74 = call i32 @os_memcpy(i32* %72, i32* %24, i64 %73)
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %76

76:                                               ; preds = %71, %30
  %77 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wpa_mic_len(i32, i64) #2

declare dso_local i32 @WPA_GET_BE16(i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @os_memset(i32*, i32, i64) #2

declare dso_local i64 @wpa_eapol_key_mic(i32, i32, i32, i32, i32*, i64, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
