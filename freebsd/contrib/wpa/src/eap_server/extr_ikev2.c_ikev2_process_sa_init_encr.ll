; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_sa_init_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_sa_init_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ikev2_hdr = type { i32 }
%struct.ikev2_payloads = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IKEV2: Processing decrypted payloads\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IKEV2: Failed to parse decrypted payloads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, %struct.ikev2_hdr*, i32*, i64, i32)* @ikev2_process_sa_init_encr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_sa_init_encr(%struct.ikev2_initiator_data* %0, %struct.ikev2_hdr* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ikev2_initiator_data*, align 8
  %8 = alloca %struct.ikev2_hdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ikev2_payloads, align 8
  %15 = alloca i32, align 4
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %7, align 8
  store %struct.ikev2_hdr* %1, %struct.ikev2_hdr** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %7, align 8
  %17 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %7, align 8
  %21 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %7, align 8
  %25 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %24, i32 0, i32 0
  %26 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32* @ikev2_decrypt_payload(i32 %19, i32 %23, i32* %25, i32 0, %struct.ikev2_hdr* %26, i32* %27, i64 %28, i64* %13)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %61

33:                                               ; preds = %5
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i64 @ikev2_parse_payloads(%struct.ikev2_payloads* %14, i32 %36, i32* %37, i32* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %61

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %14, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %7, align 8
  %52 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %14, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %14, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ikev2_process_idr(%struct.ikev2_initiator_data* %51, i64 %53, i32 %55)
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @os_free(i32* %58)
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %43, %32
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32* @ikev2_decrypt_payload(i32, i32, i32*, i32, %struct.ikev2_hdr*, i32*, i64, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @ikev2_parse_payloads(%struct.ikev2_payloads*, i32, i32*, i32*) #1

declare dso_local i32 @ikev2_process_idr(%struct.ikev2_initiator_data*, i64, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
