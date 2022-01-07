; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wpa_driver_nl80211_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wpa_driver_nl80211_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.wiphy_info_data = type { i32, i32, i64, i32, i32, i32, i64, i64, i64, i32, i64, %struct.wpa_driver_nl80211_data*, %struct.TYPE_2__* }
%struct.nl_msg = type { i32 }

@NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4
@NL80211_CMD_GET_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_SPLIT_WIPHY_DUMP = common dso_local global i32 0, align 4
@wiphy_info_handler = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SME = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"nl80211: Driver does not support authentication/association or connect commands\00", align 1
@WPA_DRIVER_FLAGS_P2P_CAPABLE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"nl80211: Use separate P2P group interface (driver advertised support)\00", align 1
@WPA_DRIVER_FLAGS_P2P_CONCURRENT = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_P2P_MGMT_AND_NON_P2P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"nl80211: Enable multi-channel concurrent (driver advertised support)\00", align 1
@WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"nl80211: use P2P_DEVICE support\00", align 1
@WPA_DRIVER_FLAGS_AP_CSA = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_nl80211_data*, %struct.wiphy_info_data*)* @wpa_driver_nl80211_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_nl80211_get_info(%struct.wpa_driver_nl80211_data* %0, %struct.wiphy_info_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %5 = alloca %struct.wiphy_info_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nl_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %4, align 8
  store %struct.wiphy_info_data* %1, %struct.wiphy_info_data** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %10 = call i32 @os_memset(%struct.wiphy_info_data* %9, i32 0, i32 88)
  %11 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %11, i32 0, i32 0
  %13 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %14 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %13, i32 0, i32 12
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %16 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %17 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %16, i32 0, i32 11
  store %struct.wpa_driver_nl80211_data* %15, %struct.wpa_driver_nl80211_data** %17, align 8
  %18 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %19 = call i32 @get_nl80211_protocol_features(%struct.wpa_driver_nl80211_data* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NL80211_PROTOCOL_FEATURE_SPLIT_WIPHY_DUMP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @NLM_F_DUMP, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NL80211_CMD_GET_WIPHY, align 4
  %32 = call %struct.nl_msg* @nl80211_cmd_msg(i32 %29, i32 %30, i32 %31)
  store %struct.nl_msg* %32, %struct.nl_msg** %7, align 8
  %33 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8
  %34 = icmp ne %struct.nl_msg* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8
  %37 = load i32, i32* @NL80211_ATTR_SPLIT_WIPHY_DUMP, align 4
  %38 = call i64 @nla_put_flag(%struct.nl_msg* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %26
  %41 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8
  %42 = call i32 @nlmsg_free(%struct.nl_msg* %41)
  store i32 -1, i32* %3, align 4
  br label %204

43:                                               ; preds = %35
  %44 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %45 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8
  %46 = load i32, i32* @wiphy_info_handler, align 4
  %47 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %48 = call i64 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %44, %struct.nl_msg* %45, i32 %46, %struct.wiphy_info_data* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %204

51:                                               ; preds = %43
  %52 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %53 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @WPA_DRIVER_FLAGS_SME, align 4
  %58 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %74

63:                                               ; preds = %51
  %64 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %65 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %72 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %76 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %81 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_CAPABLE, align 4
  %86 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %87 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %79, %74
  %92 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %93 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 @wpa_printf(i32 %97, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_CONCURRENT, align 4
  %100 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %101 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_MGMT_AND_NON_P2P, align 4
  %106 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %107 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %96, %91
  %112 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %113 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %120 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %123 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %111
  %126 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 @wpa_printf(i32 %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %125
  %137 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %138 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %144 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  store i32 5000, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %136
  %147 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %148 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %151 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 9
  store i32 %149, i32* %152, align 4
  %153 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %154 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %157 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 8
  store i32 %155, i32* %158, align 8
  %159 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %160 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %163 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 7
  store i32 %161, i32* %164, align 4
  %165 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %5, align 8
  %166 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %146
  %170 = load i32, i32* @WPA_DRIVER_FLAGS_AP_CSA, align 4
  %171 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %172 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 8
  %176 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %177 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %169
  %182 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %183 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  store i32 1, i32* %184, align 4
  br label %185

185:                                              ; preds = %181, %169
  br label %186

186:                                              ; preds = %185, %146
  %187 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %188 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %186
  %193 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %194 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 4
  store i32 1, i32* %195, align 8
  %196 = load i32, i32* @UINT32_MAX, align 4
  %197 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %198 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 6
  store i32 %196, i32* %199, align 8
  %200 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %201 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 5
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %192, %186
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %50, %40
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @os_memset(%struct.wiphy_info_data*, i32, i32) #1

declare dso_local i32 @get_nl80211_protocol_features(%struct.wpa_driver_nl80211_data*) #1

declare dso_local %struct.nl_msg* @nl80211_cmd_msg(i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.nl_msg*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

declare dso_local i64 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, %struct.wiphy_info_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
