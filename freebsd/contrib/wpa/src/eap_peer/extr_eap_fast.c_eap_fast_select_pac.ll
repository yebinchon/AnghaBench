; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_select_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_select_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@PAC_TYPE_MACHINE_AUTHENTICATION = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-FAST: PAC found for this A-ID (PAC-Type %d)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EAP-FAST: A-ID-Info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_fast_data*, i32*, i64)* @eap_fast_select_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_select_pac(%struct.eap_fast_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.eap_fast_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.eap_fast_data* %0, %struct.eap_fast_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %8 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %13 = call i8* @eap_fast_get_pac(i32 %9, i32* %10, i64 %11, i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  %15 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %16 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %15, i32 0, i32 0
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %18 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %23 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @PAC_TYPE_MACHINE_AUTHENTICATION, align 4
  %28 = call i8* @eap_fast_get_pac(i32 %24, i32* %25, i64 %26, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  %30 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %31 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %30, i32 0, i32 0
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %21, %3
  %33 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %34 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %40 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @MSG_MSGDUMP, align 4
  %46 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %47 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %52 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wpa_hexdump_ascii(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %37, %32
  ret void
}

declare dso_local i8* @eap_fast_get_pac(i32, i32*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
