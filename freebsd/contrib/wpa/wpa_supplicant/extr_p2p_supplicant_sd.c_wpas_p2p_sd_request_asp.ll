; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_sd_request_asp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_sd_request_asp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpabuf = type { i32 }

@P2P_SERV_P2PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_sd_request_asp(%struct.wpa_supplicant* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %15, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i64 @os_strlen(i8* %17)
  store i64 %18, i64* %14, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i8*, i8** %11, align 8
  %23 = call i64 @os_strlen(i8* %22)
  store i64 %23, i64* %15, align 8
  br label %24

24:                                               ; preds = %21, %5
  %25 = load i64, i64* %14, align 8
  %26 = icmp ugt i64 %25, 255
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %15, align 8
  %29 = icmp ugt i64 %28, 255
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  store i32 0, i32* %6, align 4
  br label %77

31:                                               ; preds = %27
  %32 = load i64, i64* %14, align 8
  %33 = add i64 3, %32
  %34 = add i64 %33, 1
  %35 = load i64, i64* %15, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add i64 2, %37
  %39 = trunc i64 %38 to i32
  %40 = call %struct.wpabuf* @wpabuf_alloc(i32 %39)
  store %struct.wpabuf* %40, %struct.wpabuf** %12, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %42 = icmp eq %struct.wpabuf* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %77

44:                                               ; preds = %31
  %45 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @wpabuf_put_le16(%struct.wpabuf* %45, i64 %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %49 = load i32, i32* @P2P_SERV_P2PS, align 4
  %50 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @wpabuf_put_u8(%struct.wpabuf* %51, i32 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %55 = load i64, i64* %14, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @wpabuf_put_u8(%struct.wpabuf* %54, i32 %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @wpabuf_put_data(%struct.wpabuf* %58, i8* %59, i64 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @wpabuf_put_u8(%struct.wpabuf* %62, i32 %64)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @wpabuf_put_data(%struct.wpabuf* %66, i8* %67, i64 %68)
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %73 = call i32 @wpas_p2p_sd_request(%struct.wpa_supplicant* %70, i32* %71, %struct.wpabuf* %72)
  store i32 %73, i32* %16, align 4
  %74 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %75 = call i32 @wpabuf_free(%struct.wpabuf* %74)
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %44, %43, %30
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32 @wpas_p2p_sd_request(%struct.wpa_supplicant*, i32*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
