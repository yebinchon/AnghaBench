; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_ndef_build_wifi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_ndef_build_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@FLAG_MESSAGE_BEGIN = common dso_local global i32 0, align 4
@FLAG_MESSAGE_END = common dso_local global i32 0, align 4
@FLAG_TNF_RFC2046 = common dso_local global i32 0, align 4
@wifi_handover_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @ndef_build_wifi(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %3 = load i32, i32* @FLAG_MESSAGE_BEGIN, align 4
  %4 = load i32, i32* @FLAG_MESSAGE_END, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @FLAG_TNF_RFC2046, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @wifi_handover_type, align 4
  %9 = load i32, i32* @wifi_handover_type, align 4
  %10 = call i32 @os_strlen(i32 %9)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %12 = call %struct.wpabuf* @ndef_build_record(i32 %7, i32 %8, i32 %10, i32* null, i32 0, %struct.wpabuf* %11)
  ret %struct.wpabuf* %12
}

declare dso_local %struct.wpabuf* @ndef_build_record(i32, i32, i32, i32*, i32, %struct.wpabuf*) #1

declare dso_local i32 @os_strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
