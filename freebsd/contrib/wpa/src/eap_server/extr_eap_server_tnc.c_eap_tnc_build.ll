; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_tnc_data = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"EAP-TNC: Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_tnc_data*)* @eap_tnc_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tnc_build(%struct.eap_sm* %0, %struct.eap_tnc_data* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_tnc_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_tnc_data* %1, %struct.eap_tnc_data** %5, align 8
  %15 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %16 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @tncs_total_send_len(i32 %17)
  store i64 %18, i64* %14, align 8
  %19 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %20 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @tncs_if_tnccs_start(i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %88

26:                                               ; preds = %2
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @os_strlen(i8* %27)
  store i64 %28, i64* %12, align 8
  %29 = call i8* (...) @tncs_if_tnccs_end()
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @os_free(i8* %33)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %88

35:                                               ; preds = %26
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @os_strlen(i8* %36)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call %struct.wpabuf* @wpabuf_alloc(i64 %43)
  store %struct.wpabuf* %44, %struct.wpabuf** %6, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %46 = icmp eq %struct.wpabuf* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @os_free(i8* %48)
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @os_free(i8* %50)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %88

52:                                               ; preds = %35
  %53 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @wpabuf_put_data(%struct.wpabuf* %53, i8* %54, i64 %55)
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @os_free(i8* %57)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %60 = call i32* @wpabuf_put(%struct.wpabuf* %59, i32 0)
  store i32* %60, i32** %8, align 8
  %61 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %62 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @tncs_copy_send_buf(i32 %63, i32* %64)
  store i32* %65, i32** %7, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32* @wpabuf_put(%struct.wpabuf* %66, i32 %73)
  %75 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @wpabuf_put_data(%struct.wpabuf* %75, i8* %76, i64 %77)
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @os_free(i8* %79)
  %81 = load i32, i32* @MSG_MSGDUMP, align 4
  %82 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %83 = call i32 @wpabuf_head(%struct.wpabuf* %82)
  %84 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %85 = call i32 @wpabuf_len(%struct.wpabuf* %84)
  %86 = call i32 @wpa_hexdump_ascii(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %85)
  %87 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %87, %struct.wpabuf** %3, align 8
  br label %88

88:                                               ; preds = %52, %47, %32, %25
  %89 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %89
}

declare dso_local i64 @tncs_total_send_len(i32) #1

declare dso_local i8* @tncs_if_tnccs_start(i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @tncs_if_tnccs_end(...) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32* @tncs_copy_send_buf(i32, i32*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
