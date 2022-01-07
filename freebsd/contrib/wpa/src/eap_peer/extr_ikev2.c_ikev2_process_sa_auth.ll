; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_sa_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_sa_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ikev2_hdr = type { i32 }
%struct.ikev2_payloads = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, %struct.ikev2_hdr*, %struct.ikev2_payloads*)* @ikev2_process_sa_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_sa_auth(%struct.ikev2_responder_data* %0, %struct.ikev2_hdr* %1, %struct.ikev2_payloads* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_responder_data*, align 8
  %6 = alloca %struct.ikev2_hdr*, align 8
  %7 = alloca %struct.ikev2_payloads*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %5, align 8
  store %struct.ikev2_hdr* %1, %struct.ikev2_hdr** %6, align 8
  store %struct.ikev2_payloads* %2, %struct.ikev2_payloads** %7, align 8
  %11 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %12 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %16 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %20 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %19, i32 0, i32 0
  %21 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %22 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %23 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %26 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @ikev2_decrypt_payload(i32 %14, i32 %18, i32* %20, i32 1, %struct.ikev2_hdr* %21, i32 %24, i32 %27, i64* %9)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %34 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %35 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @ikev2_process_sa_auth_decrypted(%struct.ikev2_responder_data* %33, i32 %36, i32* %37, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @os_free(i32* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32* @ikev2_decrypt_payload(i32, i32, i32*, i32, %struct.ikev2_hdr*, i32, i32, i64*) #1

declare dso_local i32 @ikev2_process_sa_auth_decrypted(%struct.ikev2_responder_data*, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
