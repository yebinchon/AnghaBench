; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_scan_ie_buf_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_scan_ie_buf_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64*, i64 }

@VENDOR_ELEM_PROBE_REQ_P2P = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @p2p_scan_ie_buf_len(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  %3 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  store i64 100, i64* %3, align 8
  %4 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %5 = icmp ne %struct.p2p_data* %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %8 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %13 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @VENDOR_ELEM_PROBE_REQ_P2P, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @VENDOR_ELEM_PROBE_REQ_P2P, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @wpabuf_len(i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %19, %11, %6, %1
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @wpabuf_len(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
