; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_associnfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_get_associnfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%union.wpa_event_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }

@OID_802_11_ASSOCIATION_INFORMATION = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NDIS: failed to get association information\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"NDIS: ignored bogus association information length %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"NDIS: re-reading association information failed\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"NDIS: ignored bogus association information length %d (re-read)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"NDIS: association information\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"NDIS: too short association information\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"NDIS: ReqFixed=0x%x RespFixed=0x%x off_req=%d off_resp=%d len_req=%d len_resp=%d\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"NDIS: association information - IE overflow\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"NDIS: Request IEs\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"NDIS: Response IEs\00", align 1
@OID_802_11_BSSID_LIST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"NDIS: failed to get scan results\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"NDIS: %d BSSID items to process for AssocInfo\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"NDIS: Beacon IEs\00", align 1
@EVENT_ASSOCINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_ndis_data*)* @wpa_driver_ndis_get_associnfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_get_associnfo(%struct.wpa_driver_ndis_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_driver_ndis_data*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.wpa_event_data, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %3, align 8
  %13 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %14 = load i32, i32* @OID_802_11_ASSOCIATION_INFORMATION, align 4
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %16 = call i32 @ndis_get_oid(%struct.wpa_driver_ndis_data* %13, i32 %14, i8* %15, i64 512)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %265

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 512
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %31 = load i32, i32* @OID_802_11_ASSOCIATION_INFORMATION, align 4
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %33 = call i32 @ndis_get_oid(%struct.wpa_driver_ndis_data* %30, i32 %31, i8* %32, i64 512)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %265

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %41, 512
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  store i32 512, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* @MSG_MSGDUMP, align 4
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @wpa_hexdump(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 24
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %265

60:                                               ; preds = %48
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %62 = bitcast i8* %61 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %6, align 8
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add i32 %85, %88
  %90 = load i32, i32* %7, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %60
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add i32 %95, %98
  %100 = load i32, i32* %7, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %92, %60
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %265

105:                                              ; preds = %92
  %106 = load i32, i32* @MSG_MSGDUMP, align 4
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @wpa_hexdump(i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %113, i32 %116)
  %118 = load i32, i32* @MSG_MSGDUMP, align 4
  %119 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @wpa_hexdump(i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* %125, i32 %128)
  %130 = call i32 @os_memset(%union.wpa_event_data* %8, i32 0, i32 40)
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 5
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  store i64 65535, i64* %10, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call %struct.TYPE_9__* @os_zalloc(i64 %159)
  store %struct.TYPE_9__* %160, %struct.TYPE_9__** %9, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %162 = icmp eq %struct.TYPE_9__* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %105
  br label %257

164:                                              ; preds = %105
  %165 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %166 = load i32, i32* @OID_802_11_BSSID_LIST, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %168 = bitcast %struct.TYPE_9__* %167 to i8*
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @ndis_get_oid(%struct.wpa_driver_ndis_data* %165, i32 %166, i8* %168, i64 %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %177 = call i32 @os_free(%struct.TYPE_9__* %176)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  br label %257

178:                                              ; preds = %164
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = bitcast i32* %188 to i8*
  store i8* %189, i8** %5, align 8
  store i64 0, i64* %11, align 8
  br label %190

190:                                              ; preds = %253, %178
  %191 = load i64, i64* %11, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ult i64 %191, %194
  br i1 %195, label %196, label %256

196:                                              ; preds = %190
  %197 = load i8*, i8** %5, align 8
  %198 = bitcast i8* %197 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %198, %struct.TYPE_8__** %12, align 8
  %199 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %200 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ETH_ALEN, align 4
  %206 = call i64 @os_memcmp(i32 %201, i32 %204, i32 %205)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %238

208:                                              ; preds = %196
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = icmp ugt i64 %212, 4
  br i1 %213, label %214, label %238

214:                                              ; preds = %208
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i32*
  %219 = getelementptr inbounds i32, i32* %218, i64 4
  %220 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 3
  store i32* %219, i32** %221, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = sub i64 %225, 4
  %227 = trunc i64 %226 to i32
  %228 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @MSG_MSGDUMP, align 4
  %231 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = bitcast %union.wpa_event_data* %8 to %struct.TYPE_7__*
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @wpa_hexdump(i32 %230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32* %233, i32 %236)
  br label %256

238:                                              ; preds = %208, %196
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i8*, i8** %5, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %5, align 8
  %245 = load i8*, i8** %5, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %247 = bitcast %struct.TYPE_9__* %246 to i8*
  %248 = load i64, i64* %10, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = icmp ugt i8* %245, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %238
  br label %256

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252
  %254 = load i64, i64* %11, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %11, align 8
  br label %190

256:                                              ; preds = %251, %214, %190
  br label %257

257:                                              ; preds = %256, %173, %163
  %258 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %259 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @EVENT_ASSOCINFO, align 4
  %262 = call i32 @wpa_supplicant_event(i32 %260, i32 %261, %union.wpa_event_data* %8)
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %264 = call i32 @os_free(%struct.TYPE_9__* %263)
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %257, %102, %57, %36, %19
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @ndis_get_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @os_zalloc(i64) #1

declare dso_local i32 @os_free(%struct.TYPE_9__*) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
