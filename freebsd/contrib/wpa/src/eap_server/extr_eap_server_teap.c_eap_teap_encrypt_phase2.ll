; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_encrypt_phase2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_encrypt_phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wpabuf*, i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-TEAP: Encrypting Phase 2 TLVs\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"EAP-TEAP: Piggyback Phase 2 data (len=%d) with last Phase 1 Message (len=%d used=%d)\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Failed to resize output buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, %struct.wpabuf*, i32)* @eap_teap_encrypt_phase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_encrypt_phase2(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.wpabuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_teap_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %13 = call i32 @wpa_hexdump_buf_key(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %12)
  %14 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %15 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %16 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %15, i32 0, i32 0
  %17 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %18 = call %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm* %14, %struct.TYPE_2__* %16, %struct.wpabuf* %17)
  store %struct.wpabuf* %18, %struct.wpabuf** %10, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %20 = call i32 @wpabuf_free(%struct.wpabuf* %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %85

24:                                               ; preds = %4
  %25 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %26 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.wpabuf*, %struct.wpabuf** %27, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %36 = call i64 @wpabuf_len(%struct.wpabuf* %35)
  %37 = trunc i64 %36 to i32
  %38 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %39 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.wpabuf*, %struct.wpabuf** %40, align 8
  %42 = call i64 @wpabuf_len(%struct.wpabuf* %41)
  %43 = trunc i64 %42 to i32
  %44 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %45 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %43, i32 %48)
  %50 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %54 = call i64 @wpabuf_len(%struct.wpabuf* %53)
  %55 = call i64 @wpabuf_resize(%struct.wpabuf** %52, i64 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %33
  %58 = load i32, i32* @MSG_WARNING, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %61 = call i32 @wpabuf_free(%struct.wpabuf* %60)
  store i32 -1, i32* %5, align 4
  br label %85

62:                                               ; preds = %33
  %63 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %64 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.wpabuf*, %struct.wpabuf** %65, align 8
  %67 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %68 = call i32 @wpabuf_put_buf(%struct.wpabuf* %66, %struct.wpabuf* %67)
  %69 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %70 = call i32 @wpabuf_free(%struct.wpabuf* %69)
  br label %84

71:                                               ; preds = %30, %24
  %72 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %73 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.wpabuf*, %struct.wpabuf** %74, align 8
  %76 = call i32 @wpabuf_free(%struct.wpabuf* %75)
  %77 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %78 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %81 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %82 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store %struct.wpabuf* %80, %struct.wpabuf** %83, align 8
  br label %84

84:                                               ; preds = %71, %62
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %57, %23
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_server_tls_encrypt(%struct.eap_sm*, %struct.TYPE_2__*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
