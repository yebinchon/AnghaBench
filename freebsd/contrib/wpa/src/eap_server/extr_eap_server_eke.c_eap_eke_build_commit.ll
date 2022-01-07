; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_build_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_build_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.eap_eke_data = type { i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EAP_EKE_MAX_DH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EAP-EKE: Request/Commit\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"EAP-EKE: Password with not configured\00", align 1
@EAP_EKE_FAIL_PASSWD_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"EAP-EKE: Failed to derive key\00", align 1
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EAP_EKE_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"EAP-EKE: Failed to initialize DH\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"EAP-EKE: Failed to build DHComponent_S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_eke_data*, i32)* @eap_eke_build_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_build_commit(%struct.eap_sm* %0, %struct.eap_eke_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_eke_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_eke_data* %1, %struct.eap_eke_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @EAP_EKE_MAX_DH_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %24 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22, %3
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %33 = load i32, i32* @EAP_EKE_FAIL_PASSWD_NOT_FOUND, align 4
  %34 = call i32 @eap_eke_fail(%struct.eap_eke_data* %32, i32 %33)
  %35 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %35, i32 %36)
  store %struct.wpabuf* %37, %struct.wpabuf** %4, align 8
  store i32 1, i32* %11, align 4
  br label %162

38:                                               ; preds = %22
  %39 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %40 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %39, i32 0, i32 1
  %41 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %42 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %47 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %52 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %58 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %61 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %64 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @eap_eke_derive_key(%struct.TYPE_5__* %40, i32* %45, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %38
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %72 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %73 = call i32 @eap_eke_fail(%struct.eap_eke_data* %71, i32 %72)
  %74 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %74, i32 %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %4, align 8
  store i32 1, i32* %11, align 4
  br label %162

77:                                               ; preds = %38
  %78 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %81 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EAP_EKE_COMMIT, align 4
  %85 = call %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data* %78, i32 %79, i32 %83, i32 %84)
  store %struct.wpabuf* %85, %struct.wpabuf** %8, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %87 = icmp eq %struct.wpabuf* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %90 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %91 = call i32 @eap_eke_fail(%struct.eap_eke_data* %89, i32 %90)
  %92 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %92, i32 %93)
  store %struct.wpabuf* %94, %struct.wpabuf** %4, align 8
  store i32 1, i32* %11, align 4
  br label %162

95:                                               ; preds = %77
  %96 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %97 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @eap_eke_dh_init(i32 %99, i32 %102, i32* %15)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %95
  %106 = load i32, i32* @MSG_INFO, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %109 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %110 = call i32 @eap_eke_fail(%struct.eap_eke_data* %108, i32 %109)
  %111 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %111, i32 %112)
  store %struct.wpabuf* %113, %struct.wpabuf** %4, align 8
  store i32 1, i32* %11, align 4
  br label %162

114:                                              ; preds = %95
  %115 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %116 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %115, i32 0, i32 1
  %117 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %118 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %121 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %122 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @wpabuf_put(%struct.wpabuf* %120, i32 %124)
  %126 = call i64 @eap_eke_dhcomp(%struct.TYPE_5__* %116, i32 %119, i32* %15, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %114
  %129 = load i32, i32* @MSG_INFO, align 4
  %130 = call i32 @wpa_printf(i32 %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %132 = call i32 @wpabuf_free(%struct.wpabuf* %131)
  %133 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %134 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %135 = call i32 @eap_eke_fail(%struct.eap_eke_data* %133, i32 %134)
  %136 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %136, i32 %137)
  store %struct.wpabuf* %138, %struct.wpabuf** %4, align 8
  store i32 1, i32* %11, align 4
  br label %162

139:                                              ; preds = %114
  %140 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %141 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %140, i32 0, i32 0
  %142 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %143 = call i32 @wpabuf_len(%struct.wpabuf* %142)
  %144 = call i64 @wpabuf_resize(i32* %141, i32 %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %139
  %147 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %148 = call i32 @wpabuf_free(%struct.wpabuf* %147)
  %149 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %150 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %151 = call i32 @eap_eke_fail(%struct.eap_eke_data* %149, i32 %150)
  %152 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data* %152, i32 %153)
  store %struct.wpabuf* %154, %struct.wpabuf** %4, align 8
  store i32 1, i32* %11, align 4
  br label %162

155:                                              ; preds = %139
  %156 = load %struct.eap_eke_data*, %struct.eap_eke_data** %6, align 8
  %157 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %160 = call i32 @wpabuf_put_buf(i32 %158, %struct.wpabuf* %159)
  %161 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %161, %struct.wpabuf** %4, align 8
  store i32 1, i32* %11, align 4
  br label %162

162:                                              ; preds = %155, %146, %128, %105, %88, %68, %29
  %163 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @eap_eke_fail(%struct.eap_eke_data*, i32) #2

declare dso_local %struct.wpabuf* @eap_eke_build_failure(%struct.eap_eke_data*, i32) #2

declare dso_local i64 @eap_eke_derive_key(%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data*, i32, i32, i32) #2

declare dso_local i64 @eap_eke_dh_init(i32, i32, i32*) #2

declare dso_local i64 @eap_eke_dhcomp(%struct.TYPE_5__*, i32, i32*, i32) #2

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i64 @wpabuf_resize(i32*, i32) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_put_buf(i32, %struct.wpabuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
