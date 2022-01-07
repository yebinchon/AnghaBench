; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_select_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_select_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-TEAP: PAC found for this A-ID (PAC-Type %d)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EAP-TEAP: A-ID-Info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_teap_data*, i32*, i64)* @eap_teap_select_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_select_pac(%struct.eap_teap_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.eap_teap_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.eap_teap_data* %0, %struct.eap_teap_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %44

10:                                               ; preds = %3
  %11 = load %struct.eap_teap_data*, %struct.eap_teap_data** %4, align 8
  %12 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %17 = call %struct.TYPE_2__* @eap_teap_get_pac(i32 %13, i32* %14, i64 %15, i32 %16)
  %18 = load %struct.eap_teap_data*, %struct.eap_teap_data** %4, align 8
  %19 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %18, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.eap_teap_data*, %struct.eap_teap_data** %4, align 8
  %21 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %10
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.eap_teap_data*, %struct.eap_teap_data** %4, align 8
  %27 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load %struct.eap_teap_data*, %struct.eap_teap_data** %4, align 8
  %34 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.eap_teap_data*, %struct.eap_teap_data** %4, align 8
  %39 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wpa_hexdump_ascii(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %9, %24, %10
  ret void
}

declare dso_local %struct.TYPE_2__* @eap_teap_get_pac(i32, i32*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
