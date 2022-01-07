; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sim_msg = type { i32, %struct.wpabuf* }
%struct.eap_hdr = type { i32 }

@EAP_TYPE_AKA_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sim_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_hdr*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sim_msg* %0, %struct.eap_sim_msg** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %15 = icmp eq %struct.eap_sim_msg* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %67

17:                                               ; preds = %5
  %18 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %19 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %18, i32 0, i32 1
  %20 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %21 = call %struct.eap_hdr* @wpabuf_mhead(%struct.wpabuf* %20)
  store %struct.eap_hdr* %21, %struct.eap_hdr** %12, align 8
  %22 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %23 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %22, i32 0, i32 1
  %24 = load %struct.wpabuf*, %struct.wpabuf** %23, align 8
  %25 = call i32 @wpabuf_len(%struct.wpabuf* %24)
  %26 = call i32 @host_to_be16(i32 %25)
  %27 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %28 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %17
  %32 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %33 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %39 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %38, i32 0, i32 1
  %40 = load %struct.wpabuf*, %struct.wpabuf** %39, align 8
  %41 = call i64 @wpabuf_head(%struct.wpabuf* %40)
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %44 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %43, i32 0, i32 1
  %45 = load %struct.wpabuf*, %struct.wpabuf** %44, align 8
  %46 = call i32 @wpabuf_len(%struct.wpabuf* %45)
  %47 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %48 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %47, i32 0, i32 1
  %49 = load %struct.wpabuf*, %struct.wpabuf** %48, align 8
  %50 = call %struct.eap_hdr* @wpabuf_mhead(%struct.wpabuf* %49)
  %51 = bitcast %struct.eap_hdr* %50 to i32*
  %52 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %53 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @eap_sim_add_mac(i32* %37, i32* %42, i32 %46, i32* %56, i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %36, %31, %17
  %61 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %62 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %61, i32 0, i32 1
  %63 = load %struct.wpabuf*, %struct.wpabuf** %62, align 8
  store %struct.wpabuf* %63, %struct.wpabuf** %13, align 8
  %64 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %65 = call i32 @os_free(%struct.eap_sim_msg* %64)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* %66, %struct.wpabuf** %6, align 8
  br label %67

67:                                               ; preds = %60, %16
  %68 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %68
}

declare dso_local %struct.eap_hdr* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_sim_add_mac(i32*, i32*, i32, i32*, i32*, i64) #1

declare dso_local i64 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @os_free(%struct.eap_sim_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
