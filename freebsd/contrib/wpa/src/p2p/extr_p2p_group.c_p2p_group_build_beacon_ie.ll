; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_build_beacon_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_build_beacon_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_group = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64*, i64 }
%struct.TYPE_3__ = type { i32 }

@VENDOR_ELEM_BEACON_P2P_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_group*)* @p2p_group_build_beacon_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_group_build_beacon_ie(%struct.p2p_group* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.p2p_group*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %8 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %15 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @VENDOR_ELEM_BEACON_P2P_GO, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %13
  %24 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %25 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @VENDOR_ELEM_BEACON_P2P_GO, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @wpabuf_len(i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %23, %13, %1
  %36 = load i64, i64* %6, align 8
  %37 = add i64 257, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.wpabuf* @wpabuf_alloc(i32 %38)
  store %struct.wpabuf* %39, %struct.wpabuf** %4, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %41 = icmp eq %struct.wpabuf* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %95

43:                                               ; preds = %35
  %44 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %45 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %52 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @VENDOR_ELEM_BEACON_P2P_GO, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %62 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %63 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @VENDOR_ELEM_BEACON_P2P_GO, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @wpabuf_put_buf(%struct.wpabuf* %61, i64 %69)
  br label %71

71:                                               ; preds = %60, %50, %43
  %72 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %73 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %72)
  store i32* %73, i32** %5, align 8
  %74 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %75 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %76 = call i32 @p2p_group_add_common_ies(%struct.p2p_group* %74, %struct.wpabuf* %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %78 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %79 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @p2p_buf_add_device_id(%struct.wpabuf* %77, i32 %84)
  %86 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %87 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  %88 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @p2p_group_add_noa(%struct.wpabuf* %86, i32 %89)
  %91 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %91, i32* %92)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %94, %struct.wpabuf** %2, align 8
  br label %95

95:                                               ; preds = %71, %42
  %96 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %96
}

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_group_add_common_ies(%struct.p2p_group*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_device_id(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_group_add_noa(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
