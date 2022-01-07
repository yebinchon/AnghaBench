; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_use_pac_opaque.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_use_pac_opaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.eap_fast_pac = type { i64, i32 }
%struct.eap_tlv_hdr = type { i8*, i8* }

@PAC_TYPE_PAC_OPAQUE = common dso_local global i64 0, align 8
@TLS_EXT_PAC_OPAQUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"EAP-FAST: Failed to add PAC-Opaque TLS extension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_fast_pac*)* @eap_fast_use_pac_opaque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_use_pac_opaque(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.eap_fast_pac* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_data*, align 8
  %7 = alloca %struct.eap_fast_pac*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_tlv_hdr*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %6, align 8
  store %struct.eap_fast_pac* %2, %struct.eap_fast_pac** %7, align 8
  %12 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %7, align 8
  %13 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add i64 16, %15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32* @os_malloc(i64 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = bitcast i32* %22 to %struct.eap_tlv_hdr*
  store %struct.eap_tlv_hdr* %23, %struct.eap_tlv_hdr** %11, align 8
  %24 = load i64, i64* @PAC_TYPE_PAC_OPAQUE, align 8
  %25 = call i8* @host_to_be16(i64 %24)
  %26 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %11, align 8
  %27 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i8* @host_to_be16(i64 %28)
  %30 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %11, align 8
  %31 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %11, align 8
  %33 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %32, i64 1
  %34 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %7, align 8
  %35 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @os_memcpy(%struct.eap_tlv_hdr* %33, i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %21, %3
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TLS_EXT_PAC_OPAQUE, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @tls_connection_client_hello_ext(i32 %45, i32 %49, i32 %50, i32* %51, i64 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42, %39
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @os_free(i32* %58)
  store i32 -1, i32* %4, align 4
  br label %63

60:                                               ; preds = %42
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @os_free(i32* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i8* @host_to_be16(i64) #1

declare dso_local i32 @os_memcpy(%struct.eap_tlv_hdr*, i32, i64) #1

declare dso_local i64 @tls_connection_client_hello_ext(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
