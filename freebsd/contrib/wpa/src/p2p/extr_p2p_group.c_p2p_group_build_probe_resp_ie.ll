; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_build_probe_resp_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_build_probe_resp_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_group = type { i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64* }

@VENDOR_ELEM_PROBE_RESP_P2P_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_group*)* @p2p_group_build_probe_resp_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_group_build_probe_resp_ie(%struct.p2p_group* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.p2p_group*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %3, align 8
  %7 = call %struct.wpabuf* @wpabuf_alloc(i32 500)
  store %struct.wpabuf* %7, %struct.wpabuf** %4, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %9 = icmp eq %struct.wpabuf* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = call i32 @p2p_group_add_common_ies(%struct.p2p_group* %12, %struct.wpabuf* %13)
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %17 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @p2p_group_add_noa(%struct.wpabuf* %15, i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %21 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %22 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %20, %struct.TYPE_2__* %23, i32* null)
  %25 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %26 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %32 = call i32 @p2p_buf_add_group_info(%struct.p2p_group* %30, %struct.wpabuf* %31, i32 -1)
  br label %33

33:                                               ; preds = %29, %11
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %35 = call %struct.wpabuf* @p2p_group_encaps_probe_resp(%struct.wpabuf* %34)
  store %struct.wpabuf* %35, %struct.wpabuf** %5, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %37 = call i32 @wpabuf_free(%struct.wpabuf* %36)
  %38 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %39 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %33
  %45 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %46 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @VENDOR_ELEM_PROBE_RESP_P2P_GO, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %44
  %55 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %56 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @VENDOR_ELEM_PROBE_RESP_P2P_GO, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.wpabuf* @wpabuf_dup(i64 %62)
  store %struct.wpabuf* %63, %struct.wpabuf** %6, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %65 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %66 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %64, %struct.wpabuf* %65)
  store %struct.wpabuf* %66, %struct.wpabuf** %5, align 8
  br label %67

67:                                               ; preds = %54, %44, %33
  %68 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* %68, %struct.wpabuf** %2, align 8
  br label %69

69:                                               ; preds = %67, %10
  %70 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %70
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_group_add_common_ies(%struct.p2p_group*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_group_add_noa(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @p2p_buf_add_group_info(%struct.p2p_group*, %struct.wpabuf*, i32) #1

declare dso_local %struct.wpabuf* @p2p_group_encaps_probe_resp(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_dup(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_concat(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
