; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_session_ticket_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_session_ticket_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_data = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-TEAP: SessionTicket callback\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"EAP-TEAP: SessionTicket failed - fall back to full TLS handshake\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Try to provision a new PAC-Key\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"EAP-TEAP: SessionTicket\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"EAP-TEAP: No PAC-Key available for using SessionTicket\00", align 1
@EAP_TEAP_PAC_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, i32*, i32*, i32*)* @eap_teap_session_ticket_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_session_ticket_cb(i8* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.eap_teap_data*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.eap_teap_data*
  store %struct.eap_teap_data* %16, %struct.eap_teap_data** %14, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %13, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %25 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %27 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %34 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %36 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %35, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %36, align 8
  br label %37

37:                                               ; preds = %30, %21
  store i32 0, i32* %7, align 4
  br label %63

38:                                               ; preds = %6
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @wpa_hexdump(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %40, i64 %41)
  %43 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %44 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %51 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  store i32 0, i32* %7, align 4
  br label %63

52:                                               ; preds = %38
  %53 = load i32*, i32** %13, align 8
  %54 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %55 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %60 = call i32 @os_memcpy(i32* %53, i32 %58, i32 %59)
  %61 = load %struct.eap_teap_data*, %struct.eap_teap_data** %14, align 8
  %62 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  store i32 1, i32* %7, align 4
  br label %63

63:                                               ; preds = %52, %47, %37
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
