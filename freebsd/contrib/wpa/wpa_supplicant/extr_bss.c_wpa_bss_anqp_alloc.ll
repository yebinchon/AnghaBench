; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_anqp_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_anqp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss_anqp = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_bss_anqp* @wpa_bss_anqp_alloc() #0 {
  %1 = alloca %struct.wpa_bss_anqp*, align 8
  %2 = alloca %struct.wpa_bss_anqp*, align 8
  %3 = call %struct.wpa_bss_anqp* @os_zalloc(i32 8)
  store %struct.wpa_bss_anqp* %3, %struct.wpa_bss_anqp** %2, align 8
  %4 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %2, align 8
  %5 = icmp eq %struct.wpa_bss_anqp* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.wpa_bss_anqp* null, %struct.wpa_bss_anqp** %1, align 8
  br label %11

7:                                                ; preds = %0
  %8 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_bss_anqp, %struct.wpa_bss_anqp* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %2, align 8
  store %struct.wpa_bss_anqp* %10, %struct.wpa_bss_anqp** %1, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct.wpa_bss_anqp*, %struct.wpa_bss_anqp** %1, align 8
  ret %struct.wpa_bss_anqp* %12
}

declare dso_local %struct.wpa_bss_anqp* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
