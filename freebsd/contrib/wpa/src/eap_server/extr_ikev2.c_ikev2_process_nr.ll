; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_nr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i64, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IKEV2: Nr not received\00", align 1
@IKEV2_NONCE_MIN_LEN = common dso_local global i64 0, align 8
@IKEV2_NONCE_MAX_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"IKEV2: Invalid Nr length %ld\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"IKEV2: Nr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, i32*, i64)* @ikev2_process_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_nr(%struct.ikev2_initiator_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_initiator_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @MSG_INFO, align 4
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %43

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @IKEV2_NONCE_MIN_LEN, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @IKEV2_NONCE_MAX_LEN, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store i32 -1, i32* %4, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %28 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %30 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @os_memcpy(i32 %31, i32* %32, i64 %33)
  %35 = load i32, i32* @MSG_MSGDUMP, align 4
  %36 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %37 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %5, align 8
  %40 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @wpa_hexdump(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %38, i64 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %25, %21, %10
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
