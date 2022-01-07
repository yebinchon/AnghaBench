; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_chap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.eap_ttls_data = type { i32 }

@CHAP_MD5_LEN = common dso_local global i32 0, align 4
@EAP_TTLS_CHAP_CHALLENGE_LEN = common dso_local global i64 0, align 8
@EAP_TTLS_CHAP_PASSWORD_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"EAP-TTLS/CHAP: Invalid CHAP attributes (challenge len %lu password len %lu)\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_TTLS_AUTH_CHAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"EAP-TTLS/CHAP: No plaintext user password configured\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"EAP-TTLS/CHAP: Failed to generate challenge from TLS data\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"EAP-TTLS/CHAP: Challenge mismatch\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"EAP-TTLS/CHAP: Correct user password\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"EAP-TTLS/CHAP: Invalid user password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*, i64*, i64, i64*, i64)* @eap_ttls_process_phase2_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_process_phase2_chap(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, i64* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @CHAP_MD5_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %6
  %24 = load i64*, i64** %11, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @EAP_TTLS_CHAP_CHALLENGE_LEN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* @EAP_TTLS_CHAP_PASSWORD_LEN, align 4
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30, %26, %23, %6
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %42 = load i32, i32* @FAILURE, align 4
  %43 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %41, i32 %42)
  store i32 1, i32* %16, align 4
  br label %156

44:                                               ; preds = %30
  %45 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %51 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %58 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %56
  %64 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EAP_TTLS_AUTH_CHAP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %63, %56, %49, %44
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %76 = load i32, i32* @FAILURE, align 4
  %77 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %75, i32 %76)
  store i32 1, i32* %16, align 4
  br label %156

78:                                               ; preds = %63
  %79 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %80 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %81 = load i64, i64* @EAP_TTLS_CHAP_CHALLENGE_LEN, align 8
  %82 = add i64 %81, 1
  %83 = call i64* @eap_ttls_implicit_challenge(%struct.eap_sm* %79, %struct.eap_ttls_data* %80, i64 %82)
  store i64* %83, i64** %13, align 8
  %84 = load i64*, i64** %13, align 8
  %85 = icmp eq i64* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %90 = load i32, i32* @FAILURE, align 4
  %91 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %89, i32 %90)
  store i32 1, i32* %16, align 4
  br label %156

92:                                               ; preds = %78
  %93 = load i64*, i64** %9, align 8
  %94 = load i64*, i64** %13, align 8
  %95 = load i64, i64* @EAP_TTLS_CHAP_CHALLENGE_LEN, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i64 @os_memcmp_const(i64* %93, i64* %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = load i64*, i64** %11, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %13, align 8
  %104 = load i64, i64* @EAP_TTLS_CHAP_CHALLENGE_LEN, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %102, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %99, %92
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i64*, i64** %13, align 8
  %112 = call i32 @os_free(i64* %111)
  %113 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %114 = load i32, i32* @FAILURE, align 4
  %115 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %113, i32 %114)
  store i32 1, i32* %16, align 4
  br label %156

116:                                              ; preds = %99
  %117 = load i64*, i64** %13, align 8
  %118 = call i32 @os_free(i64* %117)
  %119 = load i64*, i64** %11, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %123 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %128 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i64*, i64** %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @chap_md5(i64 %121, i32 %126, i32 %131, i64* %132, i64 %133, i64* %20)
  %135 = load i64*, i64** %11, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i32, i32* @EAP_TTLS_CHAP_PASSWORD_LEN, align 4
  %138 = call i64 @os_memcmp_const(i64* %20, i64* %136, i32 %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %116
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %143 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %144 = load i32, i32* @SUCCESS, align 4
  %145 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %143, i32 %144)
  %146 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %147 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %148 = call i32 @eap_ttls_valid_session(%struct.eap_sm* %146, %struct.eap_ttls_data* %147)
  br label %155

149:                                              ; preds = %116
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %152 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %153 = load i32, i32* @FAILURE, align 4
  %154 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %152, i32 %153)
  br label %155

155:                                              ; preds = %149, %140
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %155, %108, %86, %72, %36
  %157 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %16, align 4
  switch i32 %158, label %160 [
    i32 0, label %159
    i32 1, label %159
  ]

159:                                              ; preds = %156, %156
  ret void

160:                                              ; preds = %156
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @eap_ttls_state(%struct.eap_ttls_data*, i32) #2

declare dso_local i64* @eap_ttls_implicit_challenge(%struct.eap_sm*, %struct.eap_ttls_data*, i64) #2

declare dso_local i64 @os_memcmp_const(i64*, i64*, i32) #2

declare dso_local i32 @os_free(i64*) #2

declare dso_local i32 @chap_md5(i64, i32, i32, i64*, i64, i64*) #2

declare dso_local i32 @eap_ttls_valid_session(%struct.eap_sm*, %struct.eap_ttls_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
