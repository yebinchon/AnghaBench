; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_select_csuite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_select_csuite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_gpsk_data = type { i32, i32, i32 }
%struct.eap_gpsk_csuite = type { i32, i32 }

@EAP_GPSK_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_GPSK_CIPHER_RESERVED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-GPSK: CSuite[%d]: %d:%d\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EAP-GPSK: No supported ciphersuite found\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"EAP-GPSK: Selected ciphersuite %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_gpsk_data*, i32*, i64)* @eap_gpsk_select_csuite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_gpsk_select_csuite(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_gpsk_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eap_gpsk_csuite*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = udiv i64 %15, 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @EAP_GPSK_VENDOR_IETF, align 4
  %19 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @EAP_GPSK_CIPHER_RESERVED, align 4
  %22 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %23 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = bitcast i32* %24 to %struct.eap_gpsk_csuite*
  store %struct.eap_gpsk_csuite* %25, %struct.eap_gpsk_csuite** %10, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %81, %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %26
  %31 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %32 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WPA_GET_BE32(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %36 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WPA_GET_BE16(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  %44 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %45 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EAP_GPSK_VENDOR_IETF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %30
  %50 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EAP_GPSK_CIPHER_RESERVED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @eap_gpsk_supported_ciphersuite(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %62 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %67 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %74 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %77 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %65, %55, %49, %30
  %79 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %80 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %79, i32 1
  store %struct.eap_gpsk_csuite* %80, %struct.eap_gpsk_csuite** %10, align 8
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %26

84:                                               ; preds = %26
  %85 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %86 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EAP_GPSK_VENDOR_IETF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %92 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EAP_GPSK_CIPHER_RESERVED, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %98 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MSG_INFO, align 4
  %101 = call i32 @wpa_msg(i32 %99, i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %111

102:                                              ; preds = %90, %84
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %105 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %108 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, i32, i32, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %102, %96
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @WPA_GET_BE32(i32) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @eap_gpsk_supported_ciphersuite(i32, i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
