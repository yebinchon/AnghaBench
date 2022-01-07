; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_assoc_resp_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_assoc_resp_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_group = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64* }

@VENDOR_ELEM_P2P_ASSOC_RESP = common dso_local global i64 0, align 8
@P2P_SC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @p2p_group_assoc_resp_ie(%struct.p2p_group* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %10 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_RESP, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %27 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_RESP, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @wpabuf_len(i64 %33)
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %25, %15, %2
  %38 = load i64, i64* %8, align 8
  %39 = add i64 20, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.wpabuf* @wpabuf_alloc(i32 %40)
  store %struct.wpabuf* %41, %struct.wpabuf** %6, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %43 = icmp eq %struct.wpabuf* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %88

45:                                               ; preds = %37
  %46 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %47 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %45
  %53 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %54 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_RESP, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %64 = load %struct.p2p_group*, %struct.p2p_group** %4, align 8
  %65 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_RESP, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @wpabuf_put_buf(%struct.wpabuf* %63, i64 %71)
  br label %73

73:                                               ; preds = %62, %52, %45
  %74 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %75 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %74)
  store i32* %75, i32** %7, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @P2P_SC_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @p2p_buf_add_status(%struct.wpabuf* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %84, i32* %85)
  %87 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %87, %struct.wpabuf** %3, align 8
  br label %88

88:                                               ; preds = %83, %44
  %89 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %89
}

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
