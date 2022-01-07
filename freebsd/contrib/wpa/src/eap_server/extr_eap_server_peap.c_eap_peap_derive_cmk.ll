; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_derive_cmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_derive_cmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"EAP-PEAP: TK\00", align 1
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
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %5, align 8
  %10 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %11 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %12 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %11, i32 0, i32 3
  %13 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %14 = call i32* @eap_server_tls_derive_key(%struct.eap_sm* %10, %struct.TYPE_2__* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @wpa_hexdump_key(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32 60)
  %22 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %23 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %26 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @tls_connection_resumed(i32 %24, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %18
  %32 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %33 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @os_memcpy(i32* %34, i32* %35, i32 40)
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %39 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @wpa_hexdump_key(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %40, i32 40)
  %42 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 40
  %47 = call i32 @os_memcpy(i32* %44, i32* %46, i32 20)
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @wpa_hexdump_key(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %51, i32 20)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @os_free(i32* %53)
  store i32 0, i32* %3, align 4
  br label %108

55:                                               ; preds = %18
  %56 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %58 = call i32 @eap_peap_get_isk(%struct.eap_peap_data* %56, i32* %57, i32 128)
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %61 = call i32 @wpa_hexdump_key(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %60, i32 128)
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @wpa_hexdump_key(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %63, i32 40)
  %65 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %66 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %70 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %71 = call i32 @peap_prfplus(i32 %67, i32* %68, i32 40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %69, i32 128, i32* %70, i32 240)
  store i32 %71, i32* %9, align 4
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %73 = call i32 @forced_memzero(i32* %72, i32 128)
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %55
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @os_free(i32* %77)
  store i32 -1, i32* %3, align 4
  br label %108

79:                                               ; preds = %55
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %82 = call i32 @wpa_hexdump_key(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %81, i32 240)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @os_free(i32* %83)
  %85 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %86 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %89 = call i32 @os_memcpy(i32* %87, i32* %88, i32 40)
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %92 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @wpa_hexdump_key(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32* %93, i32 40)
  %95 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %96 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %99 = getelementptr inbounds i32, i32* %98, i64 40
  %100 = call i32 @os_memcpy(i32* %97, i32* %99, i32 20)
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %103 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @wpa_hexdump_key(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %104, i32 20)
  %106 = getelementptr inbounds [60 x i32], [60 x i32]* %8, i64 0, i64 0
  %107 = call i32 @forced_memzero(i32* %106, i32 240)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %79, %76, %31, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32* @eap_server_tls_derive_key(%struct.eap_sm*, %struct.TYPE_2__*, i8*, i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i64 @tls_connection_resumed(i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_peap_get_isk(%struct.eap_peap_data*, i32*, i32) #1

declare dso_local i32 @peap_prfplus(i32, i32*, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
