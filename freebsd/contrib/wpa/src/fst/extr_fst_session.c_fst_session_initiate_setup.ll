; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_initiate_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_initiate_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i8*, i32, i32, i32, i32 }
%struct.fst_setup_req = type { %struct.TYPE_3__, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i8*, i64, i8*, i32, i8*, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Session in progress\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No old peer MAC address\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"No new peer MAC address\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"No old interface defined\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No new interface defined\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Same interface set as old and new\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"The preset old peer address is not connected\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"The preset new peer address is not connected\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"There is another session in progress (old): %u\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"There is another session in progress (new): %u\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"initiating FST setup for %s (llt=%u ms)\00", align 1
@FST_ACTION_SETUP_REQUEST = common dso_local global i32 0, align 4
@WLAN_EID_SESSION_TRANSITION = common dso_local global i32 0, align 4
@SESSION_TYPE_BSS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"FST Setup Request sent\00", align 1
@FST_SESSION_STATE_SETUP_COMPLETION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_session_initiate_setup(%struct.fst_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fst_session*, align 8
  %4 = alloca %struct.fst_setup_req, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fst_session*, align 8
  store %struct.fst_session* %0, %struct.fst_session** %3, align 8
  %9 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %10 = call i64 @fst_session_is_in_progress(%struct.fst_session* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %14 = load i32, i32* @MSG_ERROR, align 4
  %15 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %13, i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %262

18:                                               ; preds = %1
  %19 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %20 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @is_zero_ether_addr(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %26, i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %262

31:                                               ; preds = %18
  %32 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %33 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @is_zero_ether_addr(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %39, i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %262

44:                                               ; preds = %31
  %45 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %46 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %52 = load i32, i32* @MSG_ERROR, align 4
  %53 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %51, i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %262

56:                                               ; preds = %44
  %57 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %58 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %64 = load i32, i32* @MSG_ERROR, align 4
  %65 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %63, i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %262

68:                                               ; preds = %56
  %69 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %70 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %74 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %80 = load i32, i32* @MSG_ERROR, align 4
  %81 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %79, i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %262

84:                                               ; preds = %68
  %85 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %86 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %90 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32 @fst_iface_is_connected(i64 %88, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %84
  %97 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %98 = load i32, i32* @MSG_ERROR, align 4
  %99 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %97, i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %262

102:                                              ; preds = %84
  %103 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %104 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %108 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i32 @fst_iface_is_connected(i64 %106, i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %102
  %115 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %116 = load i32, i32* @MSG_ERROR, align 4
  %117 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %115, i32 %116, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %262

120:                                              ; preds = %102
  %121 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %122 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %126 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.fst_session* @fst_find_session_in_progress(i32 %124, i32 %127)
  store %struct.fst_session* %128, %struct.fst_session** %8, align 8
  %129 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %130 = icmp ne %struct.fst_session* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %133 = load i32, i32* @MSG_ERROR, align 4
  %134 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %135 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %132, i32 %133, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %262

140:                                              ; preds = %120
  %141 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %142 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %146 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.fst_session* @fst_find_session_in_progress(i32 %144, i32 %147)
  store %struct.fst_session* %148, %struct.fst_session** %8, align 8
  %149 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %150 = icmp ne %struct.fst_session* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %140
  %152 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %153 = load i32, i32* @MSG_ERROR, align 4
  %154 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %155 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.fst_session*, i32, i8*, ...) @fst_printf_session(%struct.fst_session* %152, i32 %153, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %262

160:                                              ; preds = %140
  %161 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %162 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @fst_group_assign_dialog_token(i32 %163)
  store i8* %164, i8** %7, align 8
  %165 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %166 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @fst_group_assign_fsts_id(i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = call i32 @os_memset(%struct.fst_setup_req* %4, i32 0, i32 96)
  %170 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %171 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %172 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @MSG_INFO, align 4
  %176 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %177 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @fst_iface_get_name(i64 %179)
  %181 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %182 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @fst_printf_siface(%struct.fst_session* %170, i64 %174, i32 %175, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %180, i32 %184)
  %186 = load i32, i32* @FST_ACTION_SETUP_REQUEST, align 4
  %187 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 3
  store i32 %186, i32* %187, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 2
  store i8* %188, i8** %189, align 8
  %190 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %191 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @FST_LLT_MS_TO_VAL(i32 %193)
  %195 = call i8* @host_to_le32(i32 %194)
  %196 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 1
  store i8* %195, i8** %196, align 8
  %197 = load i32, i32* @WLAN_EID_SESSION_TRANSITION, align 4
  %198 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 9
  store i32 %197, i32* %199, align 8
  %200 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i32 70, i32* %201, align 8
  %202 = load i32, i32* %6, align 4
  %203 = call i8* @host_to_le32(i32 %202)
  %204 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 8
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* @SESSION_TYPE_BSS, align 4
  %207 = call i32 @SESSION_CONTROL(i32 %206, i32 0)
  %208 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 8
  %210 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %211 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i8* @fst_iface_get_band_id(i64 %213)
  %215 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 6
  store i8* %214, i8** %216, align 8
  %217 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 5
  store i64 0, i64* %220, align 8
  %221 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %222 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i8* @fst_iface_get_band_id(i64 %224)
  %226 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  %228 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  store i32 1, i32* %229, align 8
  %230 = getelementptr inbounds %struct.fst_setup_req, %struct.fst_setup_req* %4, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  store i64 0, i64* %231, align 8
  %232 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %233 = load i32, i32* @TRUE, align 4
  %234 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %235 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @fst_iface_get_mbie(i64 %237)
  %239 = call i32 @fst_session_send_action(%struct.fst_session* %232, i32 %233, %struct.fst_setup_req* %4, i32 96, i32 %238)
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %260, label %242

242:                                              ; preds = %160
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %245 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 3
  store i32 %243, i32* %246, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %249 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  store i8* %247, i8** %250, align 8
  %251 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %252 = load i32, i32* @TRUE, align 4
  %253 = load i32, i32* @MSG_INFO, align 4
  %254 = call i32 @fst_printf_sframe(%struct.fst_session* %251, i32 %252, i32 %253, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %255 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %256 = load i32, i32* @FST_SESSION_STATE_SETUP_COMPLETION, align 4
  %257 = call i32 @fst_session_set_state(%struct.fst_session* %255, i32 %256, i32* null)
  %258 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %259 = call i32 @fst_session_stt_arm(%struct.fst_session* %258)
  br label %260

260:                                              ; preds = %242, %160
  %261 = load i32, i32* %5, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %151, %131, %114, %96, %78, %62, %50, %38, %25, %12
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i64 @fst_session_is_in_progress(%struct.fst_session*) #1

declare dso_local i32 @fst_printf_session(%struct.fst_session*, i32, i8*, ...) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @fst_iface_is_connected(i64, i32, i32) #1

declare dso_local %struct.fst_session* @fst_find_session_in_progress(i32, i32) #1

declare dso_local i8* @fst_group_assign_dialog_token(i32) #1

declare dso_local i32 @fst_group_assign_fsts_id(i32) #1

declare dso_local i32 @os_memset(%struct.fst_setup_req*, i32, i32) #1

declare dso_local i32 @fst_printf_siface(%struct.fst_session*, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @fst_iface_get_name(i64) #1

declare dso_local i8* @host_to_le32(i32) #1

declare dso_local i32 @FST_LLT_MS_TO_VAL(i32) #1

declare dso_local i32 @SESSION_CONTROL(i32, i32) #1

declare dso_local i8* @fst_iface_get_band_id(i64) #1

declare dso_local i32 @fst_session_send_action(%struct.fst_session*, i32, %struct.fst_setup_req*, i32, i32) #1

declare dso_local i32 @fst_iface_get_mbie(i64) #1

declare dso_local i32 @fst_printf_sframe(%struct.fst_session*, i32, i32, i8*) #1

declare dso_local i32 @fst_session_set_state(%struct.fst_session*, i32, i32*) #1

declare dso_local i32 @fst_session_stt_arm(%struct.fst_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
