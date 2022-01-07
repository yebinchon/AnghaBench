; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_build_go_neg_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_build_go_neg_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32, i64*, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i8*, i32, i64 }
%struct.p2p_device = type { i64, i32, i32 }
%struct.p2p_channels = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Building GO Negotiation Confirm\00", align 1
@VENDOR_ELEM_P2P_GO_NEG_CONF = common dso_local global i64 0, align 8
@P2P_GO_NEG_CONF = common dso_local global i32 0, align 4
@LOCAL_GO = common dso_local global i64 0, align 8
@P2P_DEV_PREFER_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_DEV_PREFER_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_CROSS_CONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_INTRA_BSS_DIST = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*, i32, i32, i32*, i32)* @p2p_build_go_neg_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_go_neg_conf(%struct.p2p_data* %0, %struct.p2p_device* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.p2p_data*, align 8
  %9 = alloca %struct.p2p_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.p2p_channels, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %8, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %20 = call i32 @p2p_dbg(%struct.p2p_data* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %6
  %26 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %27 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_CONF, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_CONF, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @wpabuf_len(i64 %39)
  %41 = load i64, i64* %18, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %18, align 8
  br label %43

43:                                               ; preds = %33, %25, %6
  %44 = load i64, i64* %18, align 8
  %45 = add i64 1000, %44
  %46 = trunc i64 %45 to i32
  %47 = call %struct.wpabuf* @wpabuf_alloc(i32 %46)
  store %struct.wpabuf* %47, %struct.wpabuf** %14, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %49 = icmp eq %struct.wpabuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %205

51:                                               ; preds = %43
  %52 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %53 = load i32, i32* @P2P_GO_NEG_CONF, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %52, i32 %53, i32 %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %57 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %56)
  store i32* %57, i32** %15, align 8
  %58 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @p2p_buf_add_status(%struct.wpabuf* %58, i32 %59)
  store i32 0, i32* %17, align 4
  %61 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %62 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LOCAL_GO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %51
  %67 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %68 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_GROUP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %66
  %74 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_GROUP, align 4
  %75 = load i32, i32* %17, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %17, align 4
  %77 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %78 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_RECONN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_RECONN, align 4
  %85 = load i32, i32* %17, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %83, %73
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %90 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @P2P_GROUP_CAPAB_CROSS_CONN, align 4
  %95 = load i32, i32* %17, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %99 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @P2P_GROUP_CAPAB_INTRA_BSS_DIST, align 4
  %106 = load i32, i32* %17, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %104, %97
  br label %109

109:                                              ; preds = %108, %51
  %110 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %111 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %112 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %110, i32 %116, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %109
  %122 = load i32*, i32** %12, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %121, %109
  %125 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %126 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %127 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %126, i32 0, i32 5
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %132 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %135 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %125, i8* %130, i32 %133, i32 %136)
  br label %149

138:                                              ; preds = %121
  %139 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = bitcast i32* %140 to i8*
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %139, i8* %141, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %138, %124
  %150 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %151 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %150, i32 0, i32 6
  %152 = load %struct.p2p_device*, %struct.p2p_device** %9, align 8
  %153 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %152, i32 0, i32 2
  %154 = call i32 @p2p_channels_intersect(i32* %151, i32* %153, %struct.p2p_channels* %16)
  %155 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %156 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %157 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %156, i32 0, i32 5
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %155, i8* %160, %struct.p2p_channels* %16)
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %149
  %165 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %166 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %167 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %166, i32 0, i32 5
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %172 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %175 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @p2p_buf_add_group_id(%struct.wpabuf* %165, i32 %170, i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %164, %149
  %179 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %180 = load i32*, i32** %15, align 8
  %181 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %179, i32* %180)
  %182 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %183 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = icmp ne i64* %184, null
  br i1 %185, label %186, label %203

186:                                              ; preds = %178
  %187 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %188 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_CONF, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %186
  %195 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %196 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %197 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_CONF, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @wpabuf_put_buf(%struct.wpabuf* %195, i64 %201)
  br label %203

203:                                              ; preds = %194, %186, %178
  %204 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %204, %struct.wpabuf** %7, align 8
  br label %205

205:                                              ; preds = %203, %50
  %206 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %206
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_operating_channel(%struct.wpabuf*, i8*, i32, i32) #1

declare dso_local i32 @p2p_channels_intersect(i32*, i32*, %struct.p2p_channels*) #1

declare dso_local i32 @p2p_buf_add_channel_list(%struct.wpabuf*, i8*, %struct.p2p_channels*) #1

declare dso_local i32 @p2p_buf_add_group_id(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
