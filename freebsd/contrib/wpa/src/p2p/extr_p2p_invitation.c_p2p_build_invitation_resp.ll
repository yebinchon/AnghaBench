; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_invitation.c_p2p_build_invitation_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_invitation.c_p2p_build_invitation_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i64, %struct.wpabuf**, %struct.TYPE_2__*, %struct.p2p_group**, %struct.wpabuf* }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_group = type { i32 }
%struct.p2p_device = type { i32 }
%struct.p2p_channels = type { i32 }

@VENDOR_ELEM_P2P_INV_RESP = common dso_local global i64 0, align 8
@P2P_INVITATION_RESP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*, i32, i32, i32*, i32, i32, %struct.p2p_channels*)* @p2p_build_invitation_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_invitation_resp(%struct.p2p_data* %0, %struct.p2p_device* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct.p2p_channels* %7) #0 {
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.p2p_data*, align 8
  %11 = alloca %struct.p2p_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.p2p_channels*, align 8
  %18 = alloca %struct.wpabuf*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %10, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.p2p_channels* %7, %struct.p2p_channels** %17, align 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 1
  %23 = load %struct.wpabuf**, %struct.wpabuf*** %22, align 8
  %24 = icmp ne %struct.wpabuf** %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %8
  %26 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %27 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %26, i32 0, i32 1
  %28 = load %struct.wpabuf**, %struct.wpabuf*** %27, align 8
  %29 = load i64, i64* @VENDOR_ELEM_P2P_INV_RESP, align 8
  %30 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %28, i64 %29
  %31 = load %struct.wpabuf*, %struct.wpabuf** %30, align 8
  %32 = icmp ne %struct.wpabuf* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 1
  %36 = load %struct.wpabuf**, %struct.wpabuf*** %35, align 8
  %37 = load i64, i64* @VENDOR_ELEM_P2P_INV_RESP, align 8
  %38 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %36, i64 %37
  %39 = load %struct.wpabuf*, %struct.wpabuf** %38, align 8
  %40 = call i64 @wpabuf_len(%struct.wpabuf* %39)
  %41 = load i64, i64* %20, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %20, align 8
  br label %43

43:                                               ; preds = %33, %25, %8
  %44 = load i64, i64* %20, align 8
  %45 = add i64 1000, %44
  %46 = trunc i64 %45 to i32
  %47 = call %struct.wpabuf* @wpabuf_alloc(i32 %46)
  store %struct.wpabuf* %47, %struct.wpabuf** %18, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %49 = icmp eq %struct.wpabuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  br label %124

51:                                               ; preds = %43
  %52 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %53 = load i32, i32* @P2P_INVITATION_RESP, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %52, i32 %53, i32 %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %57 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %56)
  store i32* %57, i32** %19, align 8
  %58 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @p2p_buf_add_status(%struct.wpabuf* %58, i32 %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %62 = call i32 @p2p_buf_add_config_timeout(%struct.wpabuf* %61, i32 0, i32 0)
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %51
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %70 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %71 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %69, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %65, %51
  %79 = load i32*, i32** %14, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @p2p_buf_add_group_bssid(%struct.wpabuf* %82, i32* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.p2p_channels*, %struct.p2p_channels** %17, align 8
  %87 = icmp ne %struct.p2p_channels* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %90 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %91 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.p2p_channels*, %struct.p2p_channels** %17, align 8
  %96 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %89, i32 %94, %struct.p2p_channels* %95)
  br label %97

97:                                               ; preds = %88, %85
  %98 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %98, i32* %99)
  %101 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %102 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %101, i32 0, i32 1
  %103 = load %struct.wpabuf**, %struct.wpabuf*** %102, align 8
  %104 = icmp ne %struct.wpabuf** %103, null
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  %106 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %107 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %106, i32 0, i32 1
  %108 = load %struct.wpabuf**, %struct.wpabuf*** %107, align 8
  %109 = load i64, i64* @VENDOR_ELEM_P2P_INV_RESP, align 8
  %110 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %108, i64 %109
  %111 = load %struct.wpabuf*, %struct.wpabuf** %110, align 8
  %112 = icmp ne %struct.wpabuf* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %115 = load %struct.p2p_data*, %struct.p2p_data** %10, align 8
  %116 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %115, i32 0, i32 1
  %117 = load %struct.wpabuf**, %struct.wpabuf*** %116, align 8
  %118 = load i64, i64* @VENDOR_ELEM_P2P_INV_RESP, align 8
  %119 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %117, i64 %118
  %120 = load %struct.wpabuf*, %struct.wpabuf** %119, align 8
  %121 = call i32 @wpabuf_put_buf(%struct.wpabuf* %114, %struct.wpabuf* %120)
  br label %122

122:                                              ; preds = %113, %105, %97
  %123 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  store %struct.wpabuf* %123, %struct.wpabuf** %9, align 8
  br label %124

124:                                              ; preds = %122, %50
  %125 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  ret %struct.wpabuf* %125
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_config_timeout(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_operating_channel(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_add_group_bssid(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_buf_add_channel_list(%struct.wpabuf*, i32, %struct.p2p_channels*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
