; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process_id_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process_id_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i64, i64, i64, i64, %struct.TYPE_3__*, i32, i32*, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.eap_pwd_id = type { i64, i64, i64, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-pwd: Invalid ID response\00", align 1
@EAP_PWD_DEFAULT_RAND_FUNC = common dso_local global i64 0, align 8
@EAP_PWD_DEFAULT_PRF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP-pwd: peer changed parameters\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"EAP-pwd: data was already allocated\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"EAP-PWD: memory allocation id fail\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"EAP-PWD (server): peer sent id of\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"EAP-PWD: failed to allocate memory for group\00", align 1
@EAP_PWD_PREP_MS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"EAP-PWD (server): unable to compute PWE\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"EAP-PWD (server): computed %d bit PWE...\00", align 1
@PWD_Commit_Req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, i32*, i64)* @eap_pwd_process_id_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_process_id_resp(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_pwd_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eap_pwd_id*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, 40
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %194

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = bitcast i32* %20 to %struct.eap_pwd_id*
  store %struct.eap_pwd_id* %21, %struct.eap_pwd_id** %9, align 8
  %22 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %9, align 8
  %26 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @be_to_host16(i32 %27)
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %58, label %30

30:                                               ; preds = %19
  %31 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %9, align 8
  %32 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EAP_PWD_DEFAULT_RAND_FUNC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %58, label %36

36:                                               ; preds = %30
  %37 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %9, align 8
  %38 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %41 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %40, i32 0, i32 5
  %42 = call i64 @os_memcmp(i32 %39, i32* %41, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %36
  %45 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %9, align 8
  %46 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EAP_PWD_DEFAULT_PRF, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %9, align 8
  %52 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50, %44, %36, %30, %19
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %62 = load i32, i32* @FAILURE, align 4
  %63 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %61, i32 %62)
  br label %194

64:                                               ; preds = %50
  %65 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %66 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %71 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %70, i32 0, i32 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %194

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, 40
  %80 = call i32* @os_malloc(i64 %79)
  %81 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %82 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %81, i32 0, i32 6
  store i32* %80, i32** %82, align 8
  %83 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %84 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %194

90:                                               ; preds = %77
  %91 = load i64, i64* %8, align 8
  %92 = sub i64 %91, 40
  %93 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %94 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %96 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %9, align 8
  %99 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %102 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @os_memcpy(i32* %97, i32 %100, i64 %103)
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %107 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %106, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %110 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @wpa_hexdump_ascii(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32* %108, i64 %111)
  %113 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %114 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call %struct.TYPE_3__* @get_eap_pwd_group(i64 %115)
  %117 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %118 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %117, i32 0, i32 4
  store %struct.TYPE_3__* %116, %struct.TYPE_3__** %118, align 8
  %119 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %120 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %119, i32 0, i32 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = icmp eq %struct.TYPE_3__* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %90
  %124 = load i32, i32* @MSG_INFO, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %194

126:                                              ; preds = %90
  %127 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %128 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EAP_PWD_PREP_MS, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %134 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %133, i32 0, i32 9
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %137 = call i32 @hash_nt_password_hash(i32* %135, i32* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %194

141:                                              ; preds = %132
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32* %142, i32** %10, align 8
  store i64 64, i64* %11, align 8
  br label %150

143:                                              ; preds = %126
  %144 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %145 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %144, i32 0, i32 9
  %146 = load i32*, i32** %145, align 8
  store i32* %146, i32** %10, align 8
  %147 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %148 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %11, align 8
  br label %150

150:                                              ; preds = %143, %141
  %151 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %152 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %151, i32 0, i32 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %155 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %160 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %163 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %166 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %169 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %172 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %171, i32 0, i32 5
  %173 = call i32 @compute_password_element(%struct.TYPE_3__* %153, i64 %156, i32* %157, i64 %158, i32 %161, i32 %164, i32* %167, i64 %170, i32* %172)
  store i32 %173, i32* %13, align 4
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %175 = call i32 @forced_memzero(i32* %174, i32 64)
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %150
  %179 = load i32, i32* @MSG_INFO, align 4
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %194

181:                                              ; preds = %150
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %184 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %183, i32 0, i32 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @crypto_ec_prime_len_bits(i32 %187)
  %189 = trunc i64 %188 to i32
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  %191 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %192 = load i32, i32* @PWD_Commit_Req, align 4
  %193 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %191, i32 %192)
  br label %194

194:                                              ; preds = %181, %178, %140, %123, %87, %74, %58, %16
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local %struct.TYPE_3__* @get_eap_pwd_group(i64) #1

declare dso_local i32 @hash_nt_password_hash(i32*, i32*) #1

declare dso_local i32 @compute_password_element(%struct.TYPE_3__*, i64, i32*, i64, i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

declare dso_local i64 @crypto_ec_prime_len_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
