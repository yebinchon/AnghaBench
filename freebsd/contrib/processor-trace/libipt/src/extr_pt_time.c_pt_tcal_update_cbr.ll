; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_cbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_time.c_pt_tcal_update_cbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_time_cal = type { i32 }
%struct.pt_packet_cbr = type { i32 }
%struct.pt_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tcal_update_cbr(%struct.pt_time_cal* %0, %struct.pt_packet_cbr* %1, %struct.pt_config* %2) #0 {
  %4 = alloca %struct.pt_time_cal*, align 8
  %5 = alloca %struct.pt_packet_cbr*, align 8
  %6 = alloca %struct.pt_config*, align 8
  store %struct.pt_time_cal* %0, %struct.pt_time_cal** %4, align 8
  store %struct.pt_packet_cbr* %1, %struct.pt_packet_cbr** %5, align 8
  store %struct.pt_config* %2, %struct.pt_config** %6, align 8
  %7 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %8 = call i32 @pt_tcal_init(%struct.pt_time_cal* %7)
  %9 = load %struct.pt_time_cal*, %struct.pt_time_cal** %4, align 8
  %10 = load %struct.pt_packet_cbr*, %struct.pt_packet_cbr** %5, align 8
  %11 = load %struct.pt_config*, %struct.pt_config** %6, align 8
  %12 = call i32 @pt_tcal_header_cbr(%struct.pt_time_cal* %9, %struct.pt_packet_cbr* %10, %struct.pt_config* %11)
  ret i32 %12
}

declare dso_local i32 @pt_tcal_init(%struct.pt_time_cal*) #1

declare dso_local i32 @pt_tcal_header_cbr(%struct.pt_time_cal*, %struct.pt_packet_cbr*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
