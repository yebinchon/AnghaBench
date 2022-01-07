; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_buildIdentity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_buildIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (%struct.eap_sm*, i32, i64*)* }
%struct.eap_peer_config = type { i64, i64, i32*, i64, i32* }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"EAP: buildIdentity: configuration was not available\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP: using method re-auth identity\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"EAP: using anonymous identity\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"EAP: using real identity\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"EAP: buildIdentity: identity configuration was not available\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_peer_config*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %13 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %12)
  store %struct.eap_peer_config* %13, %struct.eap_peer_config** %8, align 8
  %14 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %15 = icmp eq %struct.eap_peer_config* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_WARNING, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %110

19:                                               ; preds = %3
  %20 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %21 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %28, align 8
  %30 = icmp ne i32* (%struct.eap_sm*, i32, i64*)* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32* (%struct.eap_sm*, i32, i64*)*, i32* (%struct.eap_sm*, i32, i64*)** %35, align 8
  %37 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %38 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32* %36(%struct.eap_sm* %37, i32 %40, i64* %11)
  store i32* %41, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @wpa_hexdump_ascii(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32* %45, i64 %46)
  br label %79

48:                                               ; preds = %31, %24, %19
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  %52 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %53 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %58 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %10, align 8
  %60 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %61 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @wpa_hexdump_ascii(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %64, i64 %65)
  br label %78

67:                                               ; preds = %51, %48
  %68 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %69 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %10, align 8
  %71 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %72 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @wpa_hexdump_ascii(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %67, %56
  br label %79

79:                                               ; preds = %78, %43
  %80 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %81 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %110

85:                                               ; preds = %79
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @MSG_WARNING, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %92 = call i32 @eap_sm_request_identity(%struct.eap_sm* %91)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %110

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %96 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call %struct.wpabuf* @eap_msg_alloc(i32 %95, i32 %96, i64 %97, i32 %98, i32 %99)
  store %struct.wpabuf* %100, %struct.wpabuf** %9, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %102 = icmp eq %struct.wpabuf* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %110

104:                                              ; preds = %94
  %105 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @wpabuf_put_data(%struct.wpabuf* %105, i32* %106, i64 %107)
  %109 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %109, %struct.wpabuf** %4, align 8
  br label %110

110:                                              ; preds = %104, %103, %88, %84, %16
  %111 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %111
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_sm_request_identity(%struct.eap_sm*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
