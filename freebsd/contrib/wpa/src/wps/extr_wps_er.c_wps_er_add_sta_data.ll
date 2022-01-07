; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_add_sta_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_add_sta_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_sta = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, %struct.wps_er_ap*, i32 }
%struct.wps_er_ap = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wps_parse_attr = type { i64*, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32*, i32*, i64 }

@WPS_M1 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@wps_er_sta_timeout = common dso_local global i32 0, align 4
@WPS_EV_ER_ENROLLEE_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wps_er_sta* (%struct.wps_er_ap*, i32*, %struct.wps_parse_attr*, i32)* @wps_er_add_sta_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wps_er_sta* @wps_er_add_sta_data(%struct.wps_er_ap* %0, i32* %1, %struct.wps_parse_attr* %2, i32 %3) #0 {
  %5 = alloca %struct.wps_er_sta*, align 8
  %6 = alloca %struct.wps_er_ap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_parse_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wps_er_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.wps_er_sta* @wps_er_sta_get(%struct.wps_er_ap* %13, i32* %14, i32* null)
  store %struct.wps_er_sta* %15, %struct.wps_er_sta** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %20 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %25 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WPS_M1, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %23, %18, %4
  %31 = phi i1 [ false, %18 ], [ false, %4 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %34 = icmp eq %struct.wps_er_sta* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store %struct.wps_er_sta* null, %struct.wps_er_sta** %5, align 8
  br label %269

42:                                               ; preds = %38, %35
  %43 = call %struct.wps_er_sta* @os_zalloc(i32 96)
  store %struct.wps_er_sta* %43, %struct.wps_er_sta** %10, align 8
  %44 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %45 = icmp eq %struct.wps_er_sta* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store %struct.wps_er_sta* null, %struct.wps_er_sta** %5, align 8
  br label %269

47:                                               ; preds = %42
  %48 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %49 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @os_memcpy(i32 %50, i32* %51, i32 %52)
  %54 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %55 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %56 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %55, i32 0, i32 11
  store %struct.wps_er_ap* %54, %struct.wps_er_ap** %56, align 8
  %57 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %58 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %57, i32 0, i32 1
  %59 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %60 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %59, i32 0, i32 10
  %61 = call i32 @dl_list_add(i32* %58, i32* %60)
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %47, %30
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %67 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %70 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %69, i32 0, i32 14
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %78 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %83 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %82, i32 0, i32 14
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @WPA_GET_BE16(i64 %84)
  %86 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %87 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %86, i32 0, i32 9
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %81, %76, %68
  %89 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %90 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %89, i32 0, i32 13
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %98 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96, %93
  %102 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %103 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %106 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %105, i32 0, i32 13
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @WPS_UUID_LEN, align 4
  %109 = call i32 @os_memcpy(i32 %104, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %96, %88
  %111 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %112 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %111, i32 0, i32 12
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %120 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118, %115
  %124 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %125 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %128 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %127, i32 0, i32 12
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @os_memcpy(i32 %126, i32* %129, i32 8)
  br label %131

131:                                              ; preds = %123, %118, %110
  %132 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %133 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %132, i32 0, i32 11
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %141 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139, %136
  %145 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %146 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %145, i32 0, i32 11
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @WPA_GET_BE16(i64 %147)
  %149 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %150 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %144, %139, %131
  %152 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %153 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %151
  %157 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %158 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %157, i32 0, i32 5
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @os_free(i8* %159)
  %161 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %162 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %165 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @dup_binstr(i64 %163, i32 %166)
  %168 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %169 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %156, %151
  %171 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %172 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %171, i32 0, i32 8
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %170
  %176 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %177 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @os_free(i8* %178)
  %180 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %181 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %180, i32 0, i32 8
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %184 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @dup_binstr(i64 %182, i32 %185)
  %187 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %188 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %187, i32 0, i32 4
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %175, %170
  %190 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %191 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %189
  %195 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %196 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @os_free(i8* %197)
  %199 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %200 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %203 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @dup_binstr(i64 %201, i32 %204)
  %206 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %207 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %194, %189
  %209 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %210 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %215 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @os_free(i8* %216)
  %218 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %219 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %222 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i8* @dup_binstr(i64 %220, i32 %223)
  %225 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %226 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  br label %227

227:                                              ; preds = %213, %208
  %228 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %229 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %227
  %233 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %234 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @os_free(i8* %235)
  %237 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %238 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %241 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @dup_binstr(i64 %239, i32 %242)
  %244 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %245 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  br label %246

246:                                              ; preds = %232, %227
  %247 = load i32, i32* @wps_er_sta_timeout, align 4
  %248 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %249 = call i32 @eloop_cancel_timeout(i32 %247, %struct.wps_er_sta* %248, i32* null)
  %250 = load i32, i32* @wps_er_sta_timeout, align 4
  %251 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %252 = call i32 @eloop_register_timeout(i32 300, i32 0, i32 %250, %struct.wps_er_sta* %251, i32* null)
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %246
  %256 = load i32, i32* %11, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255, %246
  %259 = load %struct.wps_er_ap*, %struct.wps_er_ap** %6, align 8
  %260 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %259, i32 0, i32 0
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  %265 = load i32, i32* @WPS_EV_ER_ENROLLEE_ADD, align 4
  %266 = call i32 @wps_er_sta_event(i32 %263, %struct.wps_er_sta* %264, i32 %265)
  br label %267

267:                                              ; preds = %258, %255
  %268 = load %struct.wps_er_sta*, %struct.wps_er_sta** %10, align 8
  store %struct.wps_er_sta* %268, %struct.wps_er_sta** %5, align 8
  br label %269

269:                                              ; preds = %267, %46, %41
  %270 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  ret %struct.wps_er_sta* %270
}

declare dso_local %struct.wps_er_sta* @wps_er_sta_get(%struct.wps_er_ap*, i32*, i32*) #1

declare dso_local %struct.wps_er_sta* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i8* @WPA_GET_BE16(i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @dup_binstr(i64, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wps_er_sta*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wps_er_sta*, i32*) #1

declare dso_local i32 @wps_er_sta_event(i32, %struct.wps_er_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
