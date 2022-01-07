; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_sa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_process_sa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32 }
%struct.ikev2_hdr = type { i32 }
%struct.ikev2_payloads = type { i32, i32, i32, i32, i32, i32 }

@IKEV2_SPI_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_responder_data*, %struct.ikev2_hdr*, %struct.ikev2_payloads*)* @ikev2_process_sa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_sa_init(%struct.ikev2_responder_data* %0, %struct.ikev2_hdr* %1, %struct.ikev2_payloads* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ikev2_responder_data*, align 8
  %6 = alloca %struct.ikev2_hdr*, align 8
  %7 = alloca %struct.ikev2_payloads*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %5, align 8
  store %struct.ikev2_hdr* %1, %struct.ikev2_hdr** %6, align 8
  store %struct.ikev2_payloads* %2, %struct.ikev2_payloads** %7, align 8
  %8 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %9 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %10 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %13 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ikev2_process_sai1(%struct.ikev2_responder_data* %8, i32 %11, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %3
  %18 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %19 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %20 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %23 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ikev2_process_kei(%struct.ikev2_responder_data* %18, i32 %21, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %17
  %28 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %29 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %30 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ikev2_payloads*, %struct.ikev2_payloads** %7, align 8
  %33 = getelementptr inbounds %struct.ikev2_payloads, %struct.ikev2_payloads* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ikev2_process_ni(%struct.ikev2_responder_data* %28, i32 %31, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %17, %3
  store i32 -1, i32* %4, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %5, align 8
  %40 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %43 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %46 = call i32 @os_memcpy(i32 %41, i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %37
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @ikev2_process_sai1(%struct.ikev2_responder_data*, i32, i32) #1

declare dso_local i64 @ikev2_process_kei(%struct.ikev2_responder_data*, i32, i32) #1

declare dso_local i64 @ikev2_process_ni(%struct.ikev2_responder_data*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
