; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_get_mib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_get_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i64, %struct.radius_client*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.radius_client = type { %struct.TYPE_6__, i32, i32, i32, i32, %struct.radius_client* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.os_reltime = type { i32, i32 }

@.str = private unnamed_addr constant [130 x i8] c"RADIUS-AUTH-SERVER-MIB\0AradiusAuthServIdent=hostapd\0AradiusAuthServUpTime=%d\0AradiusAuthServResetTime=0\0AradiusAuthServConfigReset=4\0A\00", align 1
@.str.1 = private unnamed_addr constant [595 x i8] c"radiusAuthServTotalAccessRequests=%u\0AradiusAuthServTotalInvalidRequests=%u\0AradiusAuthServTotalDupAccessRequests=%u\0AradiusAuthServTotalAccessAccepts=%u\0AradiusAuthServTotalAccessRejects=%u\0AradiusAuthServTotalAccessChallenges=%u\0AradiusAuthServTotalMalformedAccessRequests=%u\0AradiusAuthServTotalBadAuthenticators=%u\0AradiusAuthServTotalPacketsDropped=%u\0AradiusAuthServTotalUnknownTypes=%u\0AradiusAccServTotalRequests=%u\0AradiusAccServTotalInvalidRequests=%u\0AradiusAccServTotalResponses=%u\0AradiusAccServTotalMalformedRequests=%u\0AradiusAccServTotalBadAuthenticators=%u\0AradiusAccServTotalUnknownTypes=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [567 x i8] c"radiusAuthClientIndex=%u\0AradiusAuthClientAddress=%s/%s\0AradiusAuthServAccessRequests=%u\0AradiusAuthServDupAccessRequests=%u\0AradiusAuthServAccessAccepts=%u\0AradiusAuthServAccessRejects=%u\0AradiusAuthServAccessChallenges=%u\0AradiusAuthServMalformedAccessRequests=%u\0AradiusAuthServBadAuthenticators=%u\0AradiusAuthServPacketsDropped=%u\0AradiusAuthServUnknownTypes=%u\0AradiusAccServTotalRequests=%u\0AradiusAccServTotalInvalidRequests=%u\0AradiusAccServTotalResponses=%u\0AradiusAccServTotalMalformedRequests=%u\0AradiusAccServTotalBadAuthenticators=%u\0AradiusAccServTotalUnknownTypes=%u\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_server_get_mib(%struct.radius_server_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_server_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.os_reltime, align 4
  %14 = alloca %struct.radius_client*, align 8
  %15 = alloca [50 x i8], align 16
  %16 = alloca [50 x i8], align 16
  store %struct.radius_server_data* %0, %struct.radius_server_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %18 = icmp eq %struct.radius_server_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %303

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %11, align 8
  %28 = call i32 @os_get_reltime(%struct.os_reltime* %13)
  %29 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %32 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %30, %34
  %36 = mul nsw i32 %35, 100
  %37 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %40 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %38, %42
  %44 = sdiv i32 %43, 10000
  %45 = srem i32 %44, 100
  %46 = add nsw i32 %36, %45
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %47, i32 %53, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @os_snprintf_error(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %23
  %66 = load i8*, i8** %12, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %303

73:                                               ; preds = %23
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %86 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 15
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %90 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %94 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %98 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %102 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %106 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %110 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %114 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %118 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %122 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %126 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %130 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %134 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %138 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %142 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %146 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %78, i32 %84, i8* getelementptr inbounds ([595 x i8], [595 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %92, i32 %96, i32 %100, i32 %104, i32 %108, i32 %112, i32 %116, i32 %120, i32 %124, i32 %128, i32 %132, i32 %136, i32 %140, i32 %144, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i8*, i8** %11, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* %8, align 4
  %157 = call i64 @os_snprintf_error(i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %73
  %160 = load i8*, i8** %12, align 8
  store i8 0, i8* %160, align 1
  %161 = load i8*, i8** %12, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %4, align 4
  br label %303

167:                                              ; preds = %73
  %168 = load i32, i32* %8, align 4
  %169 = load i8*, i8** %12, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %12, align 8
  %172 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %173 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %172, i32 0, i32 1
  %174 = load %struct.radius_client*, %struct.radius_client** %173, align 8
  store %struct.radius_client* %174, %struct.radius_client** %14, align 8
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %290, %167
  %176 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %177 = icmp ne %struct.radius_client* %176, null
  br i1 %177, label %178, label %296

178:                                              ; preds = %175
  %179 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %180 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %185 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %186 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @inet_ntoa(i32 %187)
  %189 = call i32 @os_strlcpy(i8* %184, i32 %188, i32 50)
  %190 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %191 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %192 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @inet_ntoa(i32 %193)
  %195 = call i32 @os_strlcpy(i8* %190, i32 %194, i32 50)
  br label %196

196:                                              ; preds = %183, %178
  %197 = load i8*, i8** %12, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = load i8*, i8** %12, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = load i32, i32* %10, align 4
  %205 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %206 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %207 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %208 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 14
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %212 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 13
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %216 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 12
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %220 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 11
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %224 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 10
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %228 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 9
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %232 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %236 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %240 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %244 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %248 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %252 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %256 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %260 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %264 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %197, i32 %203, i8* getelementptr inbounds ([567 x i8], [567 x i8]* @.str.2, i64 0, i64 0), i32 %204, i8* %205, i8* %206, i32 %210, i32 %214, i32 %218, i32 %222, i32 %226, i32 %230, i32 %234, i32 %238, i32 %242, i32 %246, i32 %250, i32 %254, i32 %258, i32 %262, i32 %266)
  store i32 %267, i32* %8, align 4
  %268 = load i8*, i8** %11, align 8
  %269 = load i8*, i8** %12, align 8
  %270 = ptrtoint i8* %268 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = trunc i64 %272 to i32
  %274 = load i32, i32* %8, align 4
  %275 = call i64 @os_snprintf_error(i32 %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %196
  %278 = load i8*, i8** %12, align 8
  store i8 0, i8* %278, align 1
  %279 = load i8*, i8** %12, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = ptrtoint i8* %279 to i64
  %282 = ptrtoint i8* %280 to i64
  %283 = sub i64 %281, %282
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %4, align 4
  br label %303

285:                                              ; preds = %196
  %286 = load i32, i32* %8, align 4
  %287 = load i8*, i8** %12, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %12, align 8
  br label %290

290:                                              ; preds = %285
  %291 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  %292 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %291, i32 0, i32 5
  %293 = load %struct.radius_client*, %struct.radius_client** %292, align 8
  store %struct.radius_client* %293, %struct.radius_client** %14, align 8
  %294 = load i32, i32* %10, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %175

296:                                              ; preds = %175
  %297 = load i8*, i8** %12, align 8
  %298 = load i8*, i8** %6, align 8
  %299 = ptrtoint i8* %297 to i64
  %300 = ptrtoint i8* %298 to i64
  %301 = sub i64 %299, %300
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %296, %277, %159, %65, %22
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_strlcpy(i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
