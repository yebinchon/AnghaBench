; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_derive_cmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_derive_cmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32*, i32*, i32, i32, i64, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"EAP-PEAP: TK\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"EAP-PEAP: CMK derivation - reauth=%d resumed=%d phase2_eap_started=%d phase2_success=%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EAP-PEAP: IPMK from TK\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"EAP-PEAP: CMK from TK\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"EAP-PEAP: ISK\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"EAP-PEAP: TempKey\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Inner Methods Compound Keys\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"EAP-PEAP: IMCK (IPMKj)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"EAP-PEAP: IPMK (S-IPMKj)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"EAP-PEAP: CMK (CMKj)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_peap_data*)* @eap_peap_derive_cmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peap_derive_cmk(%struct.eap_sm* %0, %struct.eap_peap_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_peap_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca [60 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %5, align 8
  %11 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %12 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %128

17:                                               ; preds = %2
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @wpa_hexdump_key(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %19, i32 60)
  %21 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tls_connection_resumed(i32 %23, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %35 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %38 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %42 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %17
  %46 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %47 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %50
  %54 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %55 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @os_memcpy(i32* %56, i32* %57, i32 40)
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %61 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @wpa_hexdump_key(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %62, i32 40)
  %64 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %65 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 40
  %69 = call i32 @os_memcpy(i32* %66, i32* %68, i32 20)
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %72 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @wpa_hexdump_key(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %73, i32 20)
  store i32 0, i32* %3, align 4
  br label %128

75:                                               ; preds = %50, %45, %17
  %76 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %77 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %78 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %79 = call i64 @eap_peap_get_isk(%struct.eap_sm* %76, %struct.eap_peap_data* %77, i32* %78, i32 128)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %128

82:                                               ; preds = %75
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %85 = call i32 @wpa_hexdump_key(i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %84, i32 128)
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @wpa_hexdump_key(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %87, i32 40)
  %89 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %90 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %94 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %95 = call i32 @peap_prfplus(i32 %91, i32* %92, i32 40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %93, i32 128, i32* %94, i32 240)
  store i32 %95, i32* %10, align 4
  %96 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %97 = call i32 @forced_memzero(i32* %96, i32 128)
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %128

101:                                              ; preds = %82
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %104 = call i32 @wpa_hexdump_key(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %103, i32 240)
  %105 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %106 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %109 = call i32 @os_memcpy(i32* %107, i32* %108, i32 40)
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %112 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @wpa_hexdump_key(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32* %113, i32 40)
  %115 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %116 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %119 = getelementptr inbounds i32, i32* %118, i64 40
  %120 = call i32 @os_memcpy(i32* %117, i32* %119, i32 20)
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %123 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @wpa_hexdump_key(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %124, i32 20)
  %126 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %127 = call i32 @forced_memzero(i32* %126, i32 240)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %101, %100, %81, %53, %16
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @tls_connection_resumed(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i64 @eap_peap_get_isk(%struct.eap_sm*, %struct.eap_peap_data*, i32*, i32) #1

declare dso_local i32 @peap_prfplus(i32, i32*, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
