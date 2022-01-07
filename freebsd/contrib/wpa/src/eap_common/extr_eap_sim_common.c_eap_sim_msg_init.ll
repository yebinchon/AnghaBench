; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_msg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_msg = type { i32* }
%struct.eap_hdr = type { i32, i32 }

@EAP_SIM_INIT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.eap_sim_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_sim_msg*, align 8
  %11 = alloca %struct.eap_hdr*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call %struct.eap_sim_msg* @os_zalloc(i32 8)
  store %struct.eap_sim_msg* %13, %struct.eap_sim_msg** %10, align 8
  %14 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %15 = icmp eq %struct.eap_sim_msg* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.eap_sim_msg* null, %struct.eap_sim_msg** %5, align 8
  br label %57

17:                                               ; preds = %4
  %18 = load i32, i32* @EAP_SIM_INIT_LEN, align 4
  %19 = call i32* @wpabuf_alloc(i32 %18)
  %20 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %21 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %23 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %28 = call i32 @os_free(%struct.eap_sim_msg* %27)
  store %struct.eap_sim_msg* null, %struct.eap_sim_msg** %5, align 8
  br label %57

29:                                               ; preds = %17
  %30 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %31 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i8* @wpabuf_put(i32* %32, i32 8)
  %34 = bitcast i8* %33 to %struct.eap_hdr*
  store %struct.eap_hdr* %34, %struct.eap_hdr** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %42 = getelementptr inbounds %struct.eap_sim_msg, %struct.eap_sim_msg* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @wpabuf_put(i32* %43, i32 4)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %12, align 8
  store i32 0, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %12, align 8
  store i32 0, i32* %54, align 4
  %56 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  store %struct.eap_sim_msg* %56, %struct.eap_sim_msg** %5, align 8
  br label %57

57:                                               ; preds = %29, %26, %16
  %58 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  ret %struct.eap_sim_msg* %58
}

declare dso_local %struct.eap_sim_msg* @os_zalloc(i32) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @os_free(%struct.eap_sim_msg*) #1

declare dso_local i8* @wpabuf_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
