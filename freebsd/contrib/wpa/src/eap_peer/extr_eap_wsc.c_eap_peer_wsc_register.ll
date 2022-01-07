; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_peer_wsc_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_peer_wsc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i32, i32, i32 }

@EAP_PEER_METHOD_INTERFACE_VERSION = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_WSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WSC\00", align 1
@eap_wsc_init = common dso_local global i32 0, align 4
@eap_wsc_deinit = common dso_local global i32 0, align 4
@eap_wsc_process = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_wsc_register() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.eap_method*, align 8
  %3 = load i32, i32* @EAP_PEER_METHOD_INTERFACE_VERSION, align 4
  %4 = load i32, i32* @EAP_VENDOR_WFA, align 4
  %5 = load i32, i32* @EAP_VENDOR_TYPE_WSC, align 4
  %6 = call %struct.eap_method* @eap_peer_method_alloc(i32 %3, i32 %4, i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.eap_method* %6, %struct.eap_method** %2, align 8
  %7 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %8 = icmp eq %struct.eap_method* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %22

10:                                               ; preds = %0
  %11 = load i32, i32* @eap_wsc_init, align 4
  %12 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %13 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @eap_wsc_deinit, align 4
  %15 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %16 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @eap_wsc_process, align 4
  %18 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %19 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.eap_method*, %struct.eap_method** %2, align 8
  %21 = call i32 @eap_peer_method_register(%struct.eap_method* %20)
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %10, %9
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local %struct.eap_method* @eap_peer_method_alloc(i32, i32, i32, i8*) #1

declare dso_local i32 @eap_peer_method_register(%struct.eap_method*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
