; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_determine_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_determine_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, i32 }
%struct.eap_aka_data = type { i64, i32, i8*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAP-AKA: Identity\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i8* null, align 8
@NOTIFICATION = common dso_local global i32 0, align 4
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_REAUTH_ID_PREFIX = common dso_local global i8 0, align 1
@EAP_TYPE_AKA = common dso_local global i64 0, align 8
@EAP_AKA_REAUTH_ID_PREFIX = common dso_local global i8 0, align 1
@EAP_AKA_PRIME_PSEUDONYM_PREFIX = common dso_local global i8 0, align 1
@EAP_AKA_PSEUDONYM_PREFIX = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP-AKA: Pseudonym username '%s'\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"EAP-AKA: Unknown pseudonym identity - request permanent identity\00", align 1
@EAP_AKA_PRIME_PERMANENT_PREFIX = common dso_local global i8 0, align 1
@EAP_AKA_PERMANENT_PREFIX = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"EAP-AKA: Permanent username '%s'\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"EAP-AKA: Unrecognized username '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*)* @eap_aka_determine_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_determine_identity(%struct.eap_sm* %0, %struct.eap_aka_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_aka_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %4, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %9 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %12 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wpa_hexdump_ascii(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @sim_get_username(i32 %17, i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %26 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %27 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %29 = load i32, i32* @NOTIFICATION, align 4
  %30 = call i32 @eap_aka_state(%struct.eap_aka_data* %28, i32 %29)
  br label %182

31:                                               ; preds = %2
  %32 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %33 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @eap_aka_check_identity_reauth(%struct.eap_sm* %32, %struct.eap_aka_data* %33, i8* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @os_free(i8* %38)
  br label %182

40:                                               ; preds = %31
  %41 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %42 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @EAP_AKA_PRIME_REAUTH_ID_PREFIX, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %56 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EAP_TYPE_AKA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @EAP_AKA_REAUTH_ID_PREFIX, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60, %46
  %69 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %70 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @os_free(i8* %74)
  br label %182

76:                                               ; preds = %68, %60, %54
  %77 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %78 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @EAP_AKA_PRIME_PSEUDONYM_PREFIX, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %104, label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %92 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @EAP_TYPE_AKA, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %90
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* @EAP_AKA_PSEUDONYM_PREFIX, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %96, %82
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  %108 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %109 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %5, align 8
  %112 = call i8* @eap_sim_db_get_permanent(i32 %110, i8* %111)
  store i8* %112, i8** %6, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @os_free(i8* %113)
  %115 = load i8*, i8** %6, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %182

120:                                              ; preds = %104
  %121 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %122 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @os_strlcpy(i32 %123, i8* %124, i32 4)
  br label %178

126:                                              ; preds = %96, %90
  %127 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %128 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* @EAP_AKA_PRIME_PERMANENT_PREFIX, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %154, label %140

140:                                              ; preds = %132, %126
  %141 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %142 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @EAP_TYPE_AKA, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %140
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* @EAP_AKA_PERMANENT_PREFIX, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %146, %132
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  %158 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %159 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @os_strlcpy(i32 %160, i8* %161, i32 4)
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @os_free(i8* %163)
  br label %177

165:                                              ; preds = %146, %140
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %166, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  %169 = load i8*, i8** %5, align 8
  %170 = call i32 @os_free(i8* %169)
  %171 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %172 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %173 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %175 = load i32, i32* @NOTIFICATION, align 4
  %176 = call i32 @eap_aka_state(%struct.eap_aka_data* %174, i32 %175)
  br label %182

177:                                              ; preds = %154
  br label %178

178:                                              ; preds = %177, %120
  %179 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %180 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %181 = call i32 @eap_aka_fullauth(%struct.eap_sm* %179, %struct.eap_aka_data* %180)
  br label %182

182:                                              ; preds = %178, %165, %117, %73, %37, %24
  ret void
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i8* @sim_get_username(i32, i32) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local i64 @eap_aka_check_identity_reauth(%struct.eap_sm*, %struct.eap_aka_data*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @eap_sim_db_get_permanent(i32, i8*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @eap_aka_fullauth(%struct.eap_sm*, %struct.eap_aka_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
