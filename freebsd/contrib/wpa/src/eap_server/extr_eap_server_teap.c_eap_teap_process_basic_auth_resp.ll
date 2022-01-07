; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_basic_auth_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_basic_auth_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.eap_teap_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"EAP-TEAP: No room for Basic-Password-Auth-Resp Userlen field\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"EAP-TEAP: Truncated Basic-Password-Auth-Resp Username field\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"EAP-TEAP: Basic-Password-Auth-Resp Username\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"EAP-TEAP: No room for Basic-Password-Auth-Resp Passlen field\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"EAP-TEAP: Truncated Basic-Password-Auth-Resp Password field\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"EAP-TEAP: Basic-Password-Auth-Resp Password\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"EAP-TEAP: Unexpected %d extra octet(s) at the end of Basic-Password-Auth-Resp TLV\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"EAP-TEAP: Username not found in the user database\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"EAP-TEAP: No plaintext user password configured\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"EAP-TEAP: Invalid password\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"EAP-TEAP: Correct password\00", align 1
@CRYPTO_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_teap_data*, i32*, i64)* @eap_teap_process_basic_auth_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_process_basic_auth_resp(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i32*, i32** %7, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = icmp slt i64 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %31 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %30, i32 0)
  br label %199

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %49 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %48, i32 0)
  br label %199

50:                                               ; preds = %32
  %51 = load i32*, i32** %9, align 8
  store i32* %51, i32** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %9, align 8
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @wpa_hexdump_ascii(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* %57, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = icmp slt i64 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %71 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %70, i32 0)
  br label %199

72:                                               ; preds = %50
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  %75 = load i32, i32* %73, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %89 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %88, i32 0)
  br label %199

90:                                               ; preds = %72
  %91 = load i32*, i32** %9, align 8
  store i32* %91, i32** %12, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %9, align 8
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @wpa_hexdump_ascii_key(i32 %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32* %97, i32 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ugt i32* %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %90
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %114 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %113, i32 0)
  br label %199

115:                                              ; preds = %90
  %116 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i64 @eap_user_get(%struct.eap_sm* %116, i32* %117, i32 %118, i32 1)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %125 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %124, i32 0)
  br label %199

126:                                              ; preds = %115
  %127 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %128 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = icmp ne %struct.TYPE_2__* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %133 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %140 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138, %131, %126
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %146, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %148 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %149 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %148, i32 0)
  br label %199

150:                                              ; preds = %138
  %151 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %152 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %168, label %158

158:                                              ; preds = %150
  %159 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %160 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i64 @os_memcmp_const(i32 %163, i32* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %158, %150
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %171 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %172 = call i32 @eap_teap_req_failure(%struct.eap_teap_data* %171, i32 0)
  br label %199

173:                                              ; preds = %158
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %14, align 4
  %178 = call i32* @os_memdup(i32* %176, i32 %177)
  store i32* %178, i32** %13, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %183 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @os_free(i32* %184)
  %186 = load i32*, i32** %13, align 8
  %187 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %188 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %187, i32 0, i32 0
  store i32* %186, i32** %188, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %191 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %181, %173
  %193 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %194 = load i32, i32* @CRYPTO_BINDING, align 4
  %195 = call i32 @eap_teap_state(%struct.eap_teap_data* %193, i32 %194)
  %196 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %197 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %198 = call i32 @eap_teap_update_icmk(%struct.eap_sm* %196, %struct.eap_teap_data* %197)
  br label %199

199:                                              ; preds = %192, %168, %145, %121, %103, %85, %67, %45, %27
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_teap_req_failure(%struct.eap_teap_data*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i32) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i32, i32) #1

declare dso_local i64 @os_memcmp_const(i32, i32*, i32) #1

declare dso_local i32* @os_memdup(i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_teap_state(%struct.eap_teap_data*, i32) #1

declare dso_local i32 @eap_teap_update_icmk(%struct.eap_sm*, %struct.eap_teap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
