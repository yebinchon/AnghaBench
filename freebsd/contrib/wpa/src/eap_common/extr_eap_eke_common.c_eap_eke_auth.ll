; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAP-EKE: Auth(%s)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EAP-EKE: Ka for Auth\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"EAP-EKE: Messages for Auth\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_auth(%struct.eap_eke_session* %0, i8* %1, %struct.wpabuf* %2, i32* %3) #0 {
  %5 = alloca %struct.eap_eke_session*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32*, align 8
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.eap_eke_session*, %struct.eap_eke_session** %5, align 8
  %14 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.eap_eke_session*, %struct.eap_eke_session** %5, align 8
  %17 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wpa_hexdump_key(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* @MSG_MSGDUMP, align 4
  %21 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %22 = call i32 @wpa_hexdump_buf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %21)
  %23 = load %struct.eap_eke_session*, %struct.eap_eke_session** %5, align 8
  %24 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.eap_eke_session*, %struct.eap_eke_session** %5, align 8
  %27 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.eap_eke_session*, %struct.eap_eke_session** %5, align 8
  %30 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @os_strlen(i8* %34)
  %36 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %37 = call i32 @wpabuf_head(%struct.wpabuf* %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %39 = call i32 @wpabuf_len(%struct.wpabuf* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @eap_eke_prf(i32 %25, i32 %28, i32 %31, i32* %33, i32 %35, i32 %37, i32 %39, i32* %40)
  ret i32 %41
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @eap_eke_prf(i32, i32, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
