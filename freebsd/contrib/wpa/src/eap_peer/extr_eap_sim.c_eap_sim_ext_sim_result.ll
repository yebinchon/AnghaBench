; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_ext_sim_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_ext_sim_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i64, i32*, i32*, i32* }
%struct.eap_peer_config = type { i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"EAP-SIM: Use result from external SIM processing\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"GSM-AUTH:\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"EAP-SIM: Unrecognized external SIM processing response\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"EAP-SIM: RAND\00", align 1
@GSM_RAND_LEN = common dso_local global i32 0, align 4
@EAP_SIM_KC_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"EAP-SIM: Kc\00", align 1
@EAP_SIM_SRES_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"EAP-SIM: SRES\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"EAP-SIM: Invalid external SIM processing GSM-AUTH response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_sim_data*, %struct.eap_peer_config*)* @eap_sim_ext_sim_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sim_ext_sim_result(%struct.eap_sm* %0, %struct.eap_sim_data* %1, %struct.eap_peer_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca %struct.eap_peer_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store %struct.eap_peer_config* %2, %struct.eap_peer_config** %7, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.eap_peer_config*, %struct.eap_peer_config** %7, align 8
  %14 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.eap_peer_config*, %struct.eap_peer_config** %7, align 8
  %17 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %16, i32 0, i32 0
  store i8* null, i8** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @os_strncmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @os_free(i8* %24)
  store i32 -1, i32* %4, align 4
  br label %132

26:                                               ; preds = %3
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 9
  store i8* %28, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %121, %26
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %32 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %124

35:                                               ; preds = %29
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %38 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GSM_RAND_LEN, align 4
  %44 = call i32 @wpa_hexdump(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EAP_SIM_KC_LEN, align 4
  %53 = call i64 @hexstr2bin(i8* %45, i32 %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %127

56:                                               ; preds = %35
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %59 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EAP_SIM_KC_LEN, align 4
  %65 = call i32 @wpa_hexdump_key(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @EAP_SIM_KC_LEN, align 4
  %67 = mul nsw i32 %66, 2
  %68 = load i8*, i8** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 58
  br i1 %74, label %75, label %76

75:                                               ; preds = %56
  br label %127

76:                                               ; preds = %56
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %81 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EAP_SIM_SRES_LEN, align 4
  %87 = call i64 @hexstr2bin(i8* %79, i32 %85, i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %127

90:                                               ; preds = %76
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %93 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @EAP_SIM_SRES_LEN, align 4
  %99 = call i32 @wpa_hexdump_key(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* @EAP_SIM_SRES_LEN, align 4
  %101 = mul nsw i32 %100, 2
  %102 = load i8*, i8** %9, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  %107 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %108 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %106, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %90
  %112 = load i8*, i8** %9, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 58
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %127

117:                                              ; preds = %111
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %9, align 8
  br label %120

120:                                              ; preds = %117, %90
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %29

124:                                              ; preds = %29
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @os_free(i8* %125)
  store i32 0, i32* %4, align 4
  br label %132

127:                                              ; preds = %116, %89, %75, %55
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 @wpa_printf(i32 %128, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @os_free(i8* %130)
  store i32 -1, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %124, %21
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
