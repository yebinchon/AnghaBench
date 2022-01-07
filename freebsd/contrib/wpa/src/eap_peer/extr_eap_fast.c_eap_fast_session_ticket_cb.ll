; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_session_ticket_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_session_ticket_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_data = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-FAST: SessionTicket callback\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"EAP-FAST: SessionTicket failed - fall back to full TLS handshake\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-FAST: Try to provision a new PAC-Key\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"EAP-FAST: SessionTicket\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"EAP-FAST: No PAC-Key available for using SessionTicket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, i32*, i32*, i32*)* @eap_fast_session_ticket_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_session_ticket_cb(i8* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.eap_fast_data*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.eap_fast_data*
  store %struct.eap_fast_data* %16, %struct.eap_fast_data** %14, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %12, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24, %21, %6
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %31 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %33 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %40 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %42 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %41, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %42, align 8
  br label %43

43:                                               ; preds = %36, %27
  store i32 0, i32* %7, align 4
  br label %70

44:                                               ; preds = %24
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @wpa_hexdump(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %46, i64 %47)
  %49 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %50 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp eq %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %57 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  store i32 0, i32* %7, align 4
  br label %70

58:                                               ; preds = %44
  %59 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %60 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @eap_fast_derive_master_secret(i32 %63, i32* %64, i32* %65, i32* %66)
  %68 = load %struct.eap_fast_data*, %struct.eap_fast_data** %14, align 8
  %69 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %58, %53, %43
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_fast_derive_master_secret(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
