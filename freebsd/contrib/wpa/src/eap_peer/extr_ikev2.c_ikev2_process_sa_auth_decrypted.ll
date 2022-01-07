; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_sa_auth_decrypted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_sa_auth_decrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32 }
%struct.ikev2_payloads = type { i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IKEV2: Processing decrypted payloads\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IKEV2: Failed to parse decrypted payloads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, i32, i32*, i64)* @ikev2_process_sa_auth_decrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_sa_auth_decrypted(%struct.ikev2_responder_data* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ikev2_responder_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ikev2_payloads, align 4
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i64 @ikev2_parse_payloads(%struct.ikev2_payloads* %10, i32 %13, i32* %14, i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %6, align 8
  %25 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %10, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %10, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ikev2_process_idi(%struct.ikev2_responder_data* %24, i32 %26, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %23
  %32 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %6, align 8
  %33 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %10, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %10, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ikev2_process_cert(%struct.ikev2_responder_data* %32, i32 %34, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %6, align 8
  %41 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ikev2_process_auth(%struct.ikev2_responder_data* %40, i32 %42, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31, %23
  store i32 -1, i32* %5, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %47, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @ikev2_parse_payloads(%struct.ikev2_payloads*, i32, i32*, i32*) #1

declare dso_local i64 @ikev2_process_idi(%struct.ikev2_responder_data*, i32, i32) #1

declare dso_local i64 @ikev2_process_cert(%struct.ikev2_responder_data*, i32, i32) #1

declare dso_local i64 @ikev2_process_auth(%struct.ikev2_responder_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
