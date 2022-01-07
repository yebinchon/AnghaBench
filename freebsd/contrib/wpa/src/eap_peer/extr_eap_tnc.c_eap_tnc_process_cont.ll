; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_process_cont.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_process_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_tnc_data = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-TNC: Fragment overflow\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"EAP-TNC: Received %lu bytes, waiting for %lu bytes more\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_tnc_data*, i32*, i64)* @eap_tnc_process_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tnc_process_cont(%struct.eap_tnc_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_tnc_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.eap_tnc_data* %0, %struct.eap_tnc_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %10 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @wpabuf_tailroom(i32 %11)
  %13 = icmp ugt i64 %8, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FAIL, align 4
  %18 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %19 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 -1, i32* %4, align 4
  br label %34

20:                                               ; preds = %3
  %21 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @wpabuf_put_data(i32 %23, i32* %24, i64 %25)
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %30 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wpabuf_tailroom(i32 %31)
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %20, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @wpabuf_tailroom(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_put_data(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
