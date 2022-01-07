; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_del_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_tdls_peer = type { i32 }

@WPA_ALG_NONE = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"TDLS: Failed to delete TPK-TK from the driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, %struct.wpa_tdls_peer*)* @wpa_tdls_del_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_tdls_del_key(%struct.wpa_sm* %0, %struct.wpa_tdls_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  %6 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %7 = load i32, i32* @WPA_ALG_NONE, align 4
  %8 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @wpa_sm_set_key(%struct.wpa_sm* %6, i32 %7, i32 %10, i32 0, i32 0, i32* null, i32 0, i32* null, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_WARNING, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @wpa_sm_set_key(%struct.wpa_sm*, i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
