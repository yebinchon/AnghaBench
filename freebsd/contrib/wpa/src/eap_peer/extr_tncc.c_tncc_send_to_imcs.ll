; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_send_to_imcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_send_to_imcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { %struct.tnc_if_imc* }
%struct.tnc_if_imc = type { i64, i32, i32, i64 (i32, i32, i32, i64, i32)*, %struct.tnc_if_imc* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TNC: Message to IMC(s)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"TNC: Call ReceiveMessage for IMC '%s'\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"TNC: ReceiveMessage: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tncc_data*, i32, i32*, i64)* @tncc_send_to_imcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tncc_send_to_imcs(%struct.tncc_data* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.tncc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tnc_if_imc*, align 8
  %10 = alloca i64, align 8
  store %struct.tncc_data* %0, %struct.tncc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @MSG_MSGDUMP, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @wpa_hexdump_ascii(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %12, i64 %13)
  %15 = load %struct.tncc_data*, %struct.tncc_data** %5, align 8
  %16 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %15, i32 0, i32 0
  %17 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %16, align 8
  store %struct.tnc_if_imc* %17, %struct.tnc_if_imc** %9, align 8
  br label %18

18:                                               ; preds = %55, %4
  %19 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %20 = icmp ne %struct.tnc_if_imc* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %23 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %22, i32 0, i32 3
  %24 = load i64 (i32, i32, i32, i64, i32)*, i64 (i32, i32, i32, i64, i32)** %23, align 8
  %25 = icmp eq i64 (i32, i32, i32, i64, i32)* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @tncc_supported_type(%struct.tnc_if_imc* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %21
  br label %55

32:                                               ; preds = %26
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %35 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %39 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %38, i32 0, i32 3
  %40 = load i64 (i32, i32, i32, i64, i32)*, i64 (i32, i32, i32, i64, i32)** %39, align 8
  %41 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %42 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %45 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = ptrtoint i32* %47 to i32
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 %40(i32 %43, i32 %46, i32 %48, i64 %49, i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %32, %31
  %56 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %57 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %56, i32 0, i32 4
  %58 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %57, align 8
  store %struct.tnc_if_imc* %58, %struct.tnc_if_imc** %9, align 8
  br label %18

59:                                               ; preds = %18
  ret void
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @tncc_supported_type(%struct.tnc_if_imc*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
