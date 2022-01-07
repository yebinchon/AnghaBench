; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_identity.c_eap_identity_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_identity.c_eap_identity_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8*, i64, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_identity_data = type { i8*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EAP-Identity: failed to pick up already started negotiation\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"EAP-Identity: Peer identity\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"EAP-Response/Identity '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_identity_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_identity_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_identity_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.eap_identity_data*
  store %struct.eap_identity_data* %12, %struct.eap_identity_data** %7, align 8
  %13 = load %struct.eap_identity_data*, %struct.eap_identity_data** %7, align 8
  %14 = getelementptr inbounds %struct.eap_identity_data, %struct.eap_identity_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %19 = load %struct.eap_identity_data*, %struct.eap_identity_data** %7, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %21 = call i64 @eap_identity_check(%struct.eap_sm* %18, %struct.eap_identity_data* %19, %struct.wpabuf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** @FAILURE, align 8
  %27 = load %struct.eap_identity_data*, %struct.eap_identity_data** %7, align 8
  %28 = getelementptr inbounds %struct.eap_identity_data, %struct.eap_identity_data* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %109

29:                                               ; preds = %17
  %30 = load %struct.eap_identity_data*, %struct.eap_identity_data** %7, align 8
  %31 = getelementptr inbounds %struct.eap_identity_data, %struct.eap_identity_data* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %34 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  %35 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %36 = call i32* @eap_hdr_validate(i32 %33, i32 %34, %struct.wpabuf* %35, i64* %9)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %109

40:                                               ; preds = %32
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @wpa_hexdump_ascii(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %42, i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = mul i64 %45, 4
  %47 = add i64 %46, 1
  %48 = call i8* @os_malloc(i64 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = mul i64 %53, 4
  %55 = add i64 %54, 1
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @printf_encode(i8* %52, i64 %55, i32* %56, i64 %57)
  %59 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @eap_log_msg(%struct.eap_sm* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @os_free(i8* %62)
  br label %64

64:                                               ; preds = %51, %40
  %65 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %66 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @TRUE, align 4
  %71 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %72 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %75 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @os_free(i8* %76)
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i64, i64* %9, align 8
  br label %83

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i64 [ %81, %80 ], [ 1, %82 ]
  %85 = call i8* @os_malloc(i64 %84)
  %86 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %87 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %89 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i8*, i8** @FAILURE, align 8
  %94 = load %struct.eap_identity_data*, %struct.eap_identity_data** %7, align 8
  %95 = getelementptr inbounds %struct.eap_identity_data, %struct.eap_identity_data* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %109

96:                                               ; preds = %83
  %97 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %98 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @os_memcpy(i8* %99, i32* %100, i64 %101)
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %105 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i8*, i8** @SUCCESS, align 8
  %107 = load %struct.eap_identity_data*, %struct.eap_identity_data** %7, align 8
  %108 = getelementptr inbounds %struct.eap_identity_data, %struct.eap_identity_data* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %23, %39, %96, %92
  ret void
}

declare dso_local i64 @eap_identity_check(%struct.eap_sm*, %struct.eap_identity_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @printf_encode(i8*, i64, i32*, i64) #1

declare dso_local i32 @eap_log_msg(%struct.eap_sm*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
