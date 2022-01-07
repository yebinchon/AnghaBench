; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add_encr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_add_encr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_msg = type { i32, i32, i32 }

@EAP_SIM_IV_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sim_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.eap_sim_msg* %0, %struct.eap_sim_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EAP_SIM_IV_LEN, align 4
  %12 = call i32* @eap_sim_msg_add(%struct.eap_sim_msg* %9, i32 %10, i32 0, i32* null, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %19 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @wpabuf_head_u8(i32 %20)
  %22 = ptrtoint i32* %17 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = add nsw i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %29 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %31 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wpabuf_mhead_u8(i32 %32)
  %34 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %35 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load i32, i32* @EAP_SIM_IV_LEN, align 4
  %39 = call i64 @random_get_bytes(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %16
  %42 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %43 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  store i32 -1, i32* %4, align 4
  br label %66

44:                                               ; preds = %16
  %45 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32* @eap_sim_msg_add(%struct.eap_sim_msg* %45, i32 %46, i32 0, i32* null, i32 0)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %52 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  store i32 -1, i32* %4, align 4
  br label %66

53:                                               ; preds = %44
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %56 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @wpabuf_head_u8(i32 %57)
  %59 = ptrtoint i32* %54 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %65 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %53, %50, %41, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32* @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32* @wpabuf_head_u8(i32) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpabuf_mhead_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
