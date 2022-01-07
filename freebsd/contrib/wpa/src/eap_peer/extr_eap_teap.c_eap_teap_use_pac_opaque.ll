; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_use_pac_opaque.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_use_pac_opaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.eap_teap_pac = type { i64, i32 }
%struct.teap_tlv_hdr = type { i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Add PAC-Opaque TLS extension\00", align 1
@PAC_TYPE_PAC_OPAQUE = common dso_local global i64 0, align 8
@TLS_EXT_PAC_OPAQUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"EAP-TEAP: Failed to add PAC-Opaque TLS extension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_teap_pac*)* @eap_teap_use_pac_opaque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_use_pac_opaque(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.eap_teap_pac* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_data*, align 8
  %7 = alloca %struct.eap_teap_pac*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.teap_tlv_hdr*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %6, align 8
  store %struct.eap_teap_pac* %2, %struct.eap_teap_pac** %7, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %15 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add i64 16, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32* @os_malloc(i64 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = bitcast i32* %24 to %struct.teap_tlv_hdr*
  store %struct.teap_tlv_hdr* %25, %struct.teap_tlv_hdr** %11, align 8
  %26 = load i64, i64* @PAC_TYPE_PAC_OPAQUE, align 8
  %27 = call i8* @host_to_be16(i64 %26)
  %28 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %11, align 8
  %29 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i8* @host_to_be16(i64 %30)
  %32 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %11, align 8
  %33 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %11, align 8
  %35 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %34, i64 1
  %36 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %7, align 8
  %37 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @os_memcpy(%struct.teap_tlv_hdr* %35, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %23, %3
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %49 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TLS_EXT_PAC_OPAQUE, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @tls_connection_client_hello_ext(i32 %47, i32 %51, i32 %52, i32* %53, i64 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44, %41
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @os_free(i32* %60)
  store i32 -1, i32* %4, align 4
  br label %65

62:                                               ; preds = %44
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @os_free(i32* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i8* @host_to_be16(i64) #1

declare dso_local i32 @os_memcpy(%struct.teap_tlv_hdr*, i32, i64) #1

declare dso_local i64 @tls_connection_client_hello_ext(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
