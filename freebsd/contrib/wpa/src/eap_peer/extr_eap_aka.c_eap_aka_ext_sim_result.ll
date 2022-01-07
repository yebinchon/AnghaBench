; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_ext_sim_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_ext_sim_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i32, i32, i32, i32, i32 }
%struct.eap_peer_config = type { i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"EAP-AKA: Use result from external USIM processing\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"UMTS-AUTS:\00", align 1
@EAP_AKA_AUTS_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"EAP-AKA: AUTS\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"UMTS-AUTH:\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"EAP-AKA: Unrecognized external USIM processing response\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EAP-AKA: RAND\00", align 1
@EAP_AKA_RAND_LEN = common dso_local global i32 0, align 4
@EAP_AKA_IK_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"EAP-AKA: IK\00", align 1
@EAP_AKA_CK_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"EAP-AKA: CK\00", align 1
@EAP_AKA_RES_MAX_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"EAP-AKA: RES\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"EAP-AKA: Invalid external USIM processing UMTS-AUTH response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_aka_data*, %struct.eap_peer_config*)* @eap_aka_ext_sim_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_aka_ext_sim_result(%struct.eap_sm* %0, %struct.eap_aka_data* %1, %struct.eap_peer_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca %struct.eap_peer_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store %struct.eap_peer_config* %2, %struct.eap_peer_config** %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_peer_config*, %struct.eap_peer_config** %7, align 8
  %13 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.eap_peer_config*, %struct.eap_peer_config** %7, align 8
  %16 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %15, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @os_strncmp(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 10
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %25 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EAP_AKA_AUTS_LEN, align 4
  %28 = call i64 @hexstr2bin(i8* %23, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %149

31:                                               ; preds = %20
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %34 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EAP_AKA_AUTS_LEN, align 4
  %37 = call i32 @wpa_hexdump_key(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @os_free(i8* %38)
  store i32 -2, i32* %4, align 4
  br label %154

40:                                               ; preds = %3
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @os_strncmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @os_free(i8* %47)
  store i32 -1, i32* %4, align 4
  br label %154

49:                                               ; preds = %40
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 10
  store i8* %51, i8** %9, align 8
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %54 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %57 = call i32 @wpa_hexdump(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %60 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EAP_AKA_IK_LEN, align 4
  %63 = call i64 @hexstr2bin(i8* %58, i32 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %149

66:                                               ; preds = %49
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %69 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EAP_AKA_IK_LEN, align 4
  %72 = call i32 @wpa_hexdump_key(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* @EAP_AKA_IK_LEN, align 4
  %74 = mul nsw i32 %73, 2
  %75 = load i8*, i8** %9, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 58
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  br label %149

83:                                               ; preds = %66
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %88 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EAP_AKA_CK_LEN, align 4
  %91 = call i64 @hexstr2bin(i8* %86, i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %149

94:                                               ; preds = %83
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %97 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EAP_AKA_CK_LEN, align 4
  %100 = call i32 @wpa_hexdump_key(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* @EAP_AKA_CK_LEN, align 4
  %102 = mul nsw i32 %101, 2
  %103 = load i8*, i8** %9, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 58
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %149

111:                                              ; preds = %94
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @os_strlen(i8* %114)
  %116 = sdiv i32 %115, 2
  %117 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %118 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %120 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @EAP_AKA_RES_MAX_LEN, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %111
  %125 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %126 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %125, i32 0, i32 0
  store i32 0, i32* %126, align 4
  br label %149

127:                                              ; preds = %111
  %128 = load i8*, i8** %9, align 8
  %129 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %130 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %133 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @hexstr2bin(i8* %128, i32 %131, i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %149

138:                                              ; preds = %127
  %139 = load i32, i32* @MSG_DEBUG, align 4
  %140 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %141 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %144 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @wpa_hexdump_key(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %142, i32 %145)
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @os_free(i8* %147)
  store i32 0, i32* %4, align 4
  br label %154

149:                                              ; preds = %137, %124, %110, %93, %82, %65, %30
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = call i32 @wpa_printf(i32 %150, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @os_free(i8* %152)
  store i32 -1, i32* %4, align 4
  br label %154

154:                                              ; preds = %149, %138, %44, %31
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
