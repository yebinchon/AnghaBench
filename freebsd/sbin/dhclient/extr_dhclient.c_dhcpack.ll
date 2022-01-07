; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_dhcpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_dhcpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i32, %struct.TYPE_8__*, %struct.interface_info* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.interface_info = type { %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i64, %struct.client_lease*, %struct.TYPE_12__* }
%struct.client_lease = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }

@S_REBOOTING = common dso_local global i64 0, align 8
@S_REQUESTING = common dso_local global i64 0, align 8
@S_RENEWING = common dso_local global i64 0, align 8
@S_REBINDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"DHCPACK from %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"packet_to_lease failed.\00", align 1
@send_request = common dso_local global i32 0, align 4
@DHO_DHCP_LEASE_TIME = common dso_local global i64 0, align 8
@ACTION_SUPERSEDE = common dso_local global i64 0, align 8
@default_lease_time = common dso_local global i32 0, align 4
@TIME_MAX = common dso_local global i32 0, align 4
@cur_time = common dso_local global i32 0, align 4
@DHO_DHCP_RENEWAL_TIME = common dso_local global i64 0, align 8
@DHO_DHCP_REBINDING_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcpack(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_lease*, align 8
  store %struct.packet* %0, %struct.packet** %2, align 8
  %5 = load %struct.packet*, %struct.packet** %2, align 8
  %6 = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 2
  %7 = load %struct.interface_info*, %struct.interface_info** %6, align 8
  store %struct.interface_info* %7, %struct.interface_info** %3, align 8
  %8 = load %struct.packet*, %struct.packet** %2, align 8
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %8, i32 0, i32 2
  %10 = load %struct.interface_info*, %struct.interface_info** %9, align 8
  %11 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.packet*, %struct.packet** %2, align 8
  %16 = getelementptr inbounds %struct.packet, %struct.packet* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %53, label %21

21:                                               ; preds = %1
  %22 = load %struct.packet*, %struct.packet** %2, align 8
  %23 = getelementptr inbounds %struct.packet, %struct.packet* %22, i32 0, i32 2
  %24 = load %struct.interface_info*, %struct.interface_info** %23, align 8
  %25 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.packet*, %struct.packet** %2, align 8
  %29 = getelementptr inbounds %struct.packet, %struct.packet* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %27, %32
  br i1 %33, label %53, label %34

34:                                               ; preds = %21
  %35 = load %struct.packet*, %struct.packet** %2, align 8
  %36 = getelementptr inbounds %struct.packet, %struct.packet* %35, i32 0, i32 2
  %37 = load %struct.interface_info*, %struct.interface_info** %36, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.packet*, %struct.packet** %2, align 8
  %42 = getelementptr inbounds %struct.packet, %struct.packet* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.packet*, %struct.packet** %2, align 8
  %47 = getelementptr inbounds %struct.packet, %struct.packet* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @memcmp(i32 %40, i32 %45, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34, %21, %1
  br label %508

54:                                               ; preds = %34
  %55 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %56 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @S_REBOOTING, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %54
  %63 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %64 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @S_REQUESTING, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %62
  %71 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %72 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @S_RENEWING, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %80 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @S_REBINDING, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %508

87:                                               ; preds = %78, %70, %62, %54
  %88 = load %struct.packet*, %struct.packet** %2, align 8
  %89 = getelementptr inbounds %struct.packet, %struct.packet* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @piaddr(i32 %90)
  %92 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.packet*, %struct.packet** %2, align 8
  %94 = call %struct.client_lease* @packet_to_lease(%struct.packet* %93)
  store %struct.client_lease* %94, %struct.client_lease** %4, align 8
  %95 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %96 = icmp ne %struct.client_lease* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %87
  %98 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %508

99:                                               ; preds = %87
  %100 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %101 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %102 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  store %struct.client_lease* %100, %struct.client_lease** %104, align 8
  %105 = load i32, i32* @send_request, align 4
  %106 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %107 = call i32 @cancel_timeout(i32 %105, %struct.interface_info* %106)
  %108 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %109 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @DHO_DHCP_LEASE_TIME, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ACTION_SUPERSEDE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %99
  %121 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %122 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i64, i64* @DHO_DHCP_LEASE_TIME, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @getULong(i64 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %135 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load %struct.client_lease*, %struct.client_lease** %137, align 8
  %139 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %138, i32 0, i32 0
  store i32 %133, i32* %139, align 8
  br label %182

140:                                              ; preds = %99
  %141 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %142 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load %struct.client_lease*, %struct.client_lease** %144, align 8
  %146 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %145, i32 0, i32 3
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i64, i64* @DHO_DHCP_LEASE_TIME, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %140
  %154 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %155 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load %struct.client_lease*, %struct.client_lease** %157, align 8
  %159 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %158, i32 0, i32 3
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i64, i64* @DHO_DHCP_LEASE_TIME, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i8* @getULong(i64 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %168 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %167, i32 0, i32 0
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load %struct.client_lease*, %struct.client_lease** %170, align 8
  %172 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %171, i32 0, i32 0
  store i32 %166, i32* %172, align 8
  br label %181

173:                                              ; preds = %140
  %174 = load i32, i32* @default_lease_time, align 4
  %175 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %176 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %175, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load %struct.client_lease*, %struct.client_lease** %178, align 8
  %180 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %179, i32 0, i32 0
  store i32 %174, i32* %180, align 8
  br label %181

181:                                              ; preds = %173, %153
  br label %182

182:                                              ; preds = %181, %120
  %183 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %184 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %183, i32 0, i32 0
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load %struct.client_lease*, %struct.client_lease** %186, align 8
  %188 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %182
  %192 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %193 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %192, i32 0, i32 0
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load %struct.client_lease*, %struct.client_lease** %195, align 8
  %197 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @TIME_MAX, align 4
  %200 = load i32, i32* @cur_time, align 4
  %201 = sub nsw i32 %199, %200
  %202 = icmp sgt i32 %198, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %191, %182
  %204 = load i32, i32* @TIME_MAX, align 4
  %205 = load i32, i32* @cur_time, align 4
  %206 = sub nsw i32 %204, %205
  %207 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %208 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %207, i32 0, i32 0
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = load %struct.client_lease*, %struct.client_lease** %210, align 8
  %212 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %211, i32 0, i32 0
  store i32 %206, i32* %212, align 8
  br label %213

213:                                              ; preds = %203, %191
  %214 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %215 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %214, i32 0, i32 0
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load %struct.client_lease*, %struct.client_lease** %217, align 8
  %219 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %220, 60
  br i1 %221, label %222, label %229

222:                                              ; preds = %213
  %223 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %224 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %223, i32 0, i32 0
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = load %struct.client_lease*, %struct.client_lease** %226, align 8
  %228 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %227, i32 0, i32 0
  store i32 60, i32* %228, align 8
  br label %229

229:                                              ; preds = %222, %213
  %230 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %231 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %230, i32 0, i32 0
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 8
  %237 = load i64, i64* @DHO_DHCP_RENEWAL_TIME, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @ACTION_SUPERSEDE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %262

242:                                              ; preds = %229
  %243 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %244 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %243, i32 0, i32 0
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = load i64, i64* @DHO_DHCP_RENEWAL_TIME, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i8* @getULong(i64 %253)
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %257 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %256, i32 0, i32 0
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load %struct.client_lease*, %struct.client_lease** %259, align 8
  %261 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %260, i32 0, i32 1
  store i32 %255, i32* %261, align 4
  br label %311

262:                                              ; preds = %229
  %263 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %264 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %263, i32 0, i32 0
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  %267 = load %struct.client_lease*, %struct.client_lease** %266, align 8
  %268 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %267, i32 0, i32 3
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  %270 = load i64, i64* @DHO_DHCP_RENEWAL_TIME, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %295

275:                                              ; preds = %262
  %276 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %277 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %276, i32 0, i32 0
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = load %struct.client_lease*, %struct.client_lease** %279, align 8
  %281 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %280, i32 0, i32 3
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %281, align 8
  %283 = load i64, i64* @DHO_DHCP_RENEWAL_TIME, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = call i8* @getULong(i64 %286)
  %288 = ptrtoint i8* %287 to i32
  %289 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %290 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %289, i32 0, i32 0
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 2
  %293 = load %struct.client_lease*, %struct.client_lease** %292, align 8
  %294 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %293, i32 0, i32 1
  store i32 %288, i32* %294, align 4
  br label %310

295:                                              ; preds = %262
  %296 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %297 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %296, i32 0, i32 0
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 2
  %300 = load %struct.client_lease*, %struct.client_lease** %299, align 8
  %301 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sdiv i32 %302, 2
  %304 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %305 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %304, i32 0, i32 0
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 2
  %308 = load %struct.client_lease*, %struct.client_lease** %307, align 8
  %309 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %308, i32 0, i32 1
  store i32 %303, i32* %309, align 4
  br label %310

310:                                              ; preds = %295, %275
  br label %311

311:                                              ; preds = %310, %242
  %312 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %313 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %312, i32 0, i32 0
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  %316 = load %struct.client_lease*, %struct.client_lease** %315, align 8
  %317 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %337, label %320

320:                                              ; preds = %311
  %321 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %322 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %321, i32 0, i32 0
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load %struct.client_lease*, %struct.client_lease** %324, align 8
  %326 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %329 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %328, i32 0, i32 0
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 2
  %332 = load %struct.client_lease*, %struct.client_lease** %331, align 8
  %333 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = sdiv i32 %334, 2
  %336 = icmp sgt i32 %327, %335
  br i1 %336, label %337, label %352

337:                                              ; preds = %320, %311
  %338 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %339 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %338, i32 0, i32 0
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 2
  %342 = load %struct.client_lease*, %struct.client_lease** %341, align 8
  %343 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = sdiv i32 %344, 2
  %346 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %347 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %346, i32 0, i32 0
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 2
  %350 = load %struct.client_lease*, %struct.client_lease** %349, align 8
  %351 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %350, i32 0, i32 1
  store i32 %345, i32* %351, align 4
  br label %352

352:                                              ; preds = %337, %320
  %353 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %354 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %353, i32 0, i32 0
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 3
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = load i64*, i64** %358, align 8
  %360 = load i64, i64* @DHO_DHCP_REBINDING_TIME, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @ACTION_SUPERSEDE, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %385

365:                                              ; preds = %352
  %366 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %367 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %366, i32 0, i32 0
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 3
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %371, align 8
  %373 = load i64, i64* @DHO_DHCP_REBINDING_TIME, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = call i8* @getULong(i64 %376)
  %378 = ptrtoint i8* %377 to i32
  %379 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %380 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %379, i32 0, i32 0
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 2
  %383 = load %struct.client_lease*, %struct.client_lease** %382, align 8
  %384 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %383, i32 0, i32 2
  store i32 %378, i32* %384, align 8
  br label %435

385:                                              ; preds = %352
  %386 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %387 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %386, i32 0, i32 0
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 2
  %390 = load %struct.client_lease*, %struct.client_lease** %389, align 8
  %391 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %390, i32 0, i32 3
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %391, align 8
  %393 = load i64, i64* @DHO_DHCP_REBINDING_TIME, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %418

398:                                              ; preds = %385
  %399 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %400 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %399, i32 0, i32 0
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 2
  %403 = load %struct.client_lease*, %struct.client_lease** %402, align 8
  %404 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %403, i32 0, i32 3
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %404, align 8
  %406 = load i64, i64* @DHO_DHCP_REBINDING_TIME, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = call i8* @getULong(i64 %409)
  %411 = ptrtoint i8* %410 to i32
  %412 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %413 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %412, i32 0, i32 0
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 2
  %416 = load %struct.client_lease*, %struct.client_lease** %415, align 8
  %417 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %416, i32 0, i32 2
  store i32 %411, i32* %417, align 8
  br label %434

418:                                              ; preds = %385
  %419 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %420 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %419, i32 0, i32 0
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 2
  %423 = load %struct.client_lease*, %struct.client_lease** %422, align 8
  %424 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = sdiv i32 %425, 4
  %427 = mul nsw i32 %426, 7
  %428 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %429 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %428, i32 0, i32 0
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 2
  %432 = load %struct.client_lease*, %struct.client_lease** %431, align 8
  %433 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %432, i32 0, i32 2
  store i32 %427, i32* %433, align 8
  br label %434

434:                                              ; preds = %418, %398
  br label %435

435:                                              ; preds = %434, %365
  %436 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %437 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %436, i32 0, i32 0
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 2
  %440 = load %struct.client_lease*, %struct.client_lease** %439, align 8
  %441 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %462, label %444

444:                                              ; preds = %435
  %445 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %446 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %445, i32 0, i32 0
  %447 = load %struct.TYPE_11__*, %struct.TYPE_11__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 2
  %449 = load %struct.client_lease*, %struct.client_lease** %448, align 8
  %450 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %453 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %452, i32 0, i32 0
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 2
  %456 = load %struct.client_lease*, %struct.client_lease** %455, align 8
  %457 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = sdiv i32 %458, 4
  %460 = mul nsw i32 %459, 7
  %461 = icmp sgt i32 %451, %460
  br i1 %461, label %462, label %478

462:                                              ; preds = %444, %435
  %463 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %464 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %463, i32 0, i32 0
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 2
  %467 = load %struct.client_lease*, %struct.client_lease** %466, align 8
  %468 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = sdiv i32 %469, 4
  %471 = mul nsw i32 %470, 7
  %472 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %473 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %472, i32 0, i32 0
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 2
  %476 = load %struct.client_lease*, %struct.client_lease** %475, align 8
  %477 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %476, i32 0, i32 2
  store i32 %471, i32* %477, align 8
  br label %478

478:                                              ; preds = %462, %444
  %479 = load i32, i32* @cur_time, align 4
  %480 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %481 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %480, i32 0, i32 0
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 2
  %484 = load %struct.client_lease*, %struct.client_lease** %483, align 8
  %485 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = add nsw i32 %486, %479
  store i32 %487, i32* %485, align 8
  %488 = load i32, i32* @cur_time, align 4
  %489 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %490 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %489, i32 0, i32 0
  %491 = load %struct.TYPE_11__*, %struct.TYPE_11__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 2
  %493 = load %struct.client_lease*, %struct.client_lease** %492, align 8
  %494 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = add nsw i32 %495, %488
  store i32 %496, i32* %494, align 4
  %497 = load i32, i32* @cur_time, align 4
  %498 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %499 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %498, i32 0, i32 0
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 2
  %502 = load %struct.client_lease*, %struct.client_lease** %501, align 8
  %503 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = add nsw i32 %504, %497
  store i32 %505, i32* %503, align 8
  %506 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %507 = call i32 @bind_lease(%struct.interface_info* %506)
  br label %508

508:                                              ; preds = %478, %97, %86, %53
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @note(i8*, ...) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local %struct.client_lease* @packet_to_lease(%struct.packet*) #1

declare dso_local i32 @cancel_timeout(i32, %struct.interface_info*) #1

declare dso_local i8* @getULong(i64) #1

declare dso_local i32 @bind_lease(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
