; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_fullauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_fullauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i64, i8*, i32, i32 }
%struct.eap_aka_data = type { i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32, i32, i32, i32, i32 }

@EAP_SIM_DB_PENDING = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"EAP-AKA: AKA authentication data not yet available - pending request\00", align 1
@METHOD_PENDING_WAIT = common dso_local global i64 0, align 8
@EAP_AKA_PERMANENT_PREFIX = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_PERMANENT_PREFIX = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"EAP-AKA: Failed to get AKA authentication data for the peer\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i32 0, align 4
@NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"EAP-AKA: AKA authentication data available - abort pending wait\00", align 1
@METHOD_PENDING_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"EAP-AKA: Workaround - drop last null character from identity\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"EAP-AKA: Identity for MK derivation\00", align 1
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@CHALLENGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*)* @eap_aka_fullauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_fullauth(%struct.eap_sm* %0, %struct.eap_aka_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_aka_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %4, align 8
  %7 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %11 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %14 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %13, i32 0, i32 18
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %17 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %16, i32 0, i32 15
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %20 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %23 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %26 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %29 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %28, i32 0, i32 16
  %30 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %31 = call i32 @eap_sim_db_get_aka_auth(i32 %9, i64* %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32* %29, %struct.eap_sm* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EAP_SIM_DB_PENDING, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @METHOD_PENDING_WAIT, align 8
  %39 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %192

41:                                               ; preds = %2
  %42 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %43 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EAP_AKA_PERMANENT_PREFIX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %51 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EAP_AKA_PRIME_PERMANENT_PREFIX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49, %41
  %58 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %62 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = call i32 @os_strlcpy(i32 %60, i64* %64, i32 4)
  br label %66

66:                                               ; preds = %57, %49
  %67 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %68 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %67, i32 0, i32 12
  store i32* null, i32** %68, align 8
  %69 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %70 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %69, i32 0, i32 11
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load i32, i32* @MSG_INFO, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 4
  %77 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %78 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 8
  %79 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %80 = load i32, i32* @NOTIFICATION, align 4
  %81 = call i32 @eap_aka_state(%struct.eap_aka_data* %79, i32 %80)
  br label %192

82:                                               ; preds = %66
  %83 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %84 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @METHOD_PENDING_WAIT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i64, i64* @METHOD_PENDING_NONE, align 8
  %92 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %93 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %96 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %113, %94
  %99 = load i64, i64* %5, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %103 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = sub i64 %105, 1
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br label %111

111:                                              ; preds = %101, %98
  %112 = phi i1 [ false, %98 ], [ %110, %101 ]
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 @wpa_printf(i32 %114, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %5, align 8
  br label %98

118:                                              ; preds = %111
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %121 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @wpa_hexdump_ascii(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %122, i64 %123)
  %125 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %126 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %118
  %131 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %132 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %136 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %139 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %142 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %145 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %148 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %151 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %154 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @eap_aka_prime_derive_keys(i8* %133, i64 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155)
  br label %188

157:                                              ; preds = %118
  %158 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %159 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %163 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %166 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %169 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @eap_aka_derive_mk(i8* %160, i64 %161, i32 %164, i32 %167, i32 %170)
  %172 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %173 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %176 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %179 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %182 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %185 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @eap_sim_derive_keys(i32 %174, i32 %177, i32 %180, i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %157, %130
  %189 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %190 = load i32, i32* @CHALLENGE, align 4
  %191 = call i32 @eap_aka_state(%struct.eap_aka_data* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %73, %35
  ret void
}

declare dso_local i32 @eap_sim_db_get_aka_auth(i32, i64*, i32, i32, i32, i32, i32, i32*, %struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_strlcpy(i32, i64*, i32) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local i32 @eap_aka_prime_derive_keys(i8*, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eap_aka_derive_mk(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @eap_sim_derive_keys(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
