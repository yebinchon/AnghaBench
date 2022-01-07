; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_mschap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_mschap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.eap_ttls_data = type { i32 }

@EAP_TTLS_MSCHAP_CHALLENGE_LEN = common dso_local global i64 0, align 8
@EAP_TTLS_MSCHAP_RESPONSE_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"EAP-TTLS/MSCHAP: Invalid MS-CHAP attributes (challenge len %lu response len %lu)\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_TTLS_AUTH_MSCHAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-TTLS/MSCHAP: No user password configured\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"EAP-TTLS/MSCHAP: Failed to generate challenge from TLS data\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"EAP-TTLS/MSCHAP: Challenge mismatch\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"EAP-TTLS/MSCHAP: Correct response\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"EAP-TTLS/MSCHAP: Invalid NT-Response\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"EAP-TTLS/MSCHAP: Received\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"EAP-TTLS/MSCHAP: Expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*, i64*, i64, i64*, i64)* @eap_ttls_process_phase2_mschap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_process_phase2_mschap(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, i64* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca [24 x i64], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %6
  %18 = load i64*, i64** %11, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @EAP_TTLS_MSCHAP_CHALLENGE_LEN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @EAP_TTLS_MSCHAP_RESPONSE_LEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %20, %17, %6
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  %33 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %34 = load i32, i32* @FAILURE, align 4
  %35 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %33, i32 %34)
  br label %176

36:                                               ; preds = %24
  %37 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %38 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %43 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %50 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EAP_TTLS_AUTH_MSCHAP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48, %41, %36
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %61 = load i32, i32* @FAILURE, align 4
  %62 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %60, i32 %61)
  br label %176

63:                                               ; preds = %48
  %64 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %65 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %66 = load i64, i64* @EAP_TTLS_MSCHAP_CHALLENGE_LEN, align 8
  %67 = add i64 %66, 1
  %68 = call i64* @eap_ttls_implicit_challenge(%struct.eap_sm* %64, %struct.eap_ttls_data* %65, i64 %67)
  store i64* %68, i64** %13, align 8
  %69 = load i64*, i64** %13, align 8
  %70 = icmp eq i64* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %75 = load i32, i32* @FAILURE, align 4
  %76 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %74, i32 %75)
  br label %176

77:                                               ; preds = %63
  %78 = load i64*, i64** %9, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = load i64, i64* @EAP_TTLS_MSCHAP_CHALLENGE_LEN, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @os_memcmp_const(i64* %78, i64* %79, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %77
  %85 = load i64*, i64** %11, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %13, align 8
  %89 = load i64, i64* @EAP_TTLS_MSCHAP_CHALLENGE_LEN, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %84, %77
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i64*, i64** %13, align 8
  %97 = call i32 @os_free(i64* %96)
  %98 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %99 = load i32, i32* @FAILURE, align 4
  %100 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %98, i32 %99)
  br label %176

101:                                              ; preds = %84
  %102 = load i64*, i64** %13, align 8
  %103 = call i32 @os_free(i64* %102)
  %104 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %105 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %101
  %111 = load i64*, i64** %9, align 8
  %112 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %113 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds [24 x i64], [24 x i64]* %14, i64 0, i64 0
  %118 = call i64 @challenge_response(i64* %111, i32 %116, i64* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %142, label %120

120:                                              ; preds = %110, %101
  %121 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %122 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %120
  %128 = load i64*, i64** %9, align 8
  %129 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %130 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %135 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [24 x i64], [24 x i64]* %14, i64 0, i64 0
  %140 = call i64 @nt_challenge_response(i64* %128, i32 %133, i32 %138, i64* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %127, %110
  %143 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %144 = load i32, i32* @FAILURE, align 4
  %145 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %143, i32 %144)
  br label %176

146:                                              ; preds = %127, %120
  %147 = getelementptr inbounds [24 x i64], [24 x i64]* %14, i64 0, i64 0
  %148 = load i64*, i64** %11, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 2
  %150 = getelementptr inbounds i64, i64* %149, i64 24
  %151 = call i64 @os_memcmp_const(i64* %147, i64* %150, i32 24)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %146
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = call i32 (i32, i8*, ...) @wpa_printf(i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %156 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %157 = load i32, i32* @SUCCESS, align 4
  %158 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %156, i32 %157)
  %159 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %160 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %161 = call i32 @eap_ttls_valid_session(%struct.eap_sm* %159, %struct.eap_ttls_data* %160)
  br label %176

162:                                              ; preds = %146
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %165 = load i32, i32* @MSG_MSGDUMP, align 4
  %166 = load i64*, i64** %11, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 2
  %168 = getelementptr inbounds i64, i64* %167, i64 24
  %169 = call i32 @wpa_hexdump(i32 %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64* %168, i32 24)
  %170 = load i32, i32* @MSG_MSGDUMP, align 4
  %171 = getelementptr inbounds [24 x i64], [24 x i64]* %14, i64 0, i64 0
  %172 = call i32 @wpa_hexdump(i32 %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64* %171, i32 24)
  %173 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %174 = load i32, i32* @FAILURE, align 4
  %175 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %173, i32 %174)
  br label %176

176:                                              ; preds = %28, %57, %71, %93, %142, %162, %153
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_ttls_state(%struct.eap_ttls_data*, i32) #1

declare dso_local i64* @eap_ttls_implicit_challenge(%struct.eap_sm*, %struct.eap_ttls_data*, i64) #1

declare dso_local i64 @os_memcmp_const(i64*, i64*, i32) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64 @challenge_response(i64*, i32, i64*) #1

declare dso_local i64 @nt_challenge_response(i64*, i32, i32, i64*) #1

declare dso_local i32 @eap_ttls_valid_session(%struct.eap_sm*, %struct.eap_ttls_data*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
