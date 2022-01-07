; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_dhcpoffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_dhcpoffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.interface_info* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i32, i32* }
%struct.interface_info = type { %struct.TYPE_14__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.client_lease*, %struct.TYPE_13__, %struct.TYPE_11__*, i32 }
%struct.client_lease = type { i32, %struct.client_lease*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@DHO_DHCP_MESSAGE_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"DHCPOFFER\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"BOOTREPLY\00", align 1
@S_SELECTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s from %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s isn't satisfactory.\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s already seen.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"packet_to_lease failed.\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ARPSEND\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"check_\00", align 1
@cur_time = common dso_local global i32 0, align 4
@send_discover = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcpoffer(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca %struct.client_lease*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.packet* %0, %struct.packet** %2, align 8
  %10 = load %struct.packet*, %struct.packet** %2, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %10, i32 0, i32 3
  %12 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  store %struct.interface_info* %12, %struct.interface_info** %3, align 8
  %13 = load %struct.packet*, %struct.packet** %2, align 8
  %14 = getelementptr inbounds %struct.packet, %struct.packet* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i64, i64* @DHO_DHCP_MESSAGE_TYPE, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %22, i8** %9, align 8
  %23 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %24 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @S_SELECTING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %76, label %30

30:                                               ; preds = %1
  %31 = load %struct.packet*, %struct.packet** %2, align 8
  %32 = getelementptr inbounds %struct.packet, %struct.packet* %31, i32 0, i32 3
  %33 = load %struct.interface_info*, %struct.interface_info** %32, align 8
  %34 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.packet*, %struct.packet** %2, align 8
  %39 = getelementptr inbounds %struct.packet, %struct.packet* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %37, %42
  br i1 %43, label %76, label %44

44:                                               ; preds = %30
  %45 = load %struct.packet*, %struct.packet** %2, align 8
  %46 = getelementptr inbounds %struct.packet, %struct.packet* %45, i32 0, i32 3
  %47 = load %struct.interface_info*, %struct.interface_info** %46, align 8
  %48 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.packet*, %struct.packet** %2, align 8
  %52 = getelementptr inbounds %struct.packet, %struct.packet* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %76, label %57

57:                                               ; preds = %44
  %58 = load %struct.packet*, %struct.packet** %2, align 8
  %59 = getelementptr inbounds %struct.packet, %struct.packet* %58, i32 0, i32 3
  %60 = load %struct.interface_info*, %struct.interface_info** %59, align 8
  %61 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.packet*, %struct.packet** %2, align 8
  %65 = getelementptr inbounds %struct.packet, %struct.packet* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.packet*, %struct.packet** %2, align 8
  %70 = getelementptr inbounds %struct.packet, %struct.packet* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @memcmp(i32 %63, i32* %68, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57, %44, %30, %1
  br label %332

77:                                               ; preds = %57
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.packet*, %struct.packet** %2, align 8
  %80 = getelementptr inbounds %struct.packet, %struct.packet* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @piaddr(i32 %81)
  %83 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %78, i32 %82)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %121, %77
  %85 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %86 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %84
  %98 = load %struct.packet*, %struct.packet** %2, align 8
  %99 = getelementptr inbounds %struct.packet, %struct.packet* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %102 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %97
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  br label %332

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %84

124:                                              ; preds = %84
  %125 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %126 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load %struct.client_lease*, %struct.client_lease** %128, align 8
  store %struct.client_lease* %129, %struct.client_lease** %4, align 8
  br label %130

130:                                              ; preds = %160, %124
  %131 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %132 = icmp ne %struct.client_lease* %131, null
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  %134 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %135 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %140, label %159

140:                                              ; preds = %133
  %141 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %142 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.packet*, %struct.packet** %2, align 8
  %146 = getelementptr inbounds %struct.packet, %struct.packet* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %150 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = call i64 @memcmp(i32 %144, i32* %148, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %140
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %157)
  br label %332

159:                                              ; preds = %140, %133
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %162 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %161, i32 0, i32 1
  %163 = load %struct.client_lease*, %struct.client_lease** %162, align 8
  store %struct.client_lease* %163, %struct.client_lease** %4, align 8
  br label %130

164:                                              ; preds = %130
  %165 = load %struct.packet*, %struct.packet** %2, align 8
  %166 = call %struct.client_lease* @packet_to_lease(%struct.packet* %165)
  store %struct.client_lease* %166, %struct.client_lease** %4, align 8
  %167 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %168 = icmp ne %struct.client_lease* %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %332

171:                                              ; preds = %164
  %172 = load %struct.packet*, %struct.packet** %2, align 8
  %173 = getelementptr inbounds %struct.packet, %struct.packet* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i64, i64* @DHO_DHCP_MESSAGE_TYPE, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %171
  %181 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %182 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %171
  %184 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %185 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %190 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  %191 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %192 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @script_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  %195 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %196 = call i32 @script_write_params(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.client_lease* %195)
  %197 = call i64 (...) @script_go()
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %183
  store i32 0, i32* %7, align 4
  br label %201

200:                                              ; preds = %183
  store i32 2, i32* %7, align 4
  br label %201

201:                                              ; preds = %200, %199
  %202 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %203 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %202, i32 0, i32 0
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %208 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %207, i32 0, i32 0
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %206, %213
  store i32 %214, i32* %8, align 4
  %215 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %216 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %221 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %220, i32 0, i32 0
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %219, %225
  br i1 %226, label %227, label %259

227:                                              ; preds = %201
  %228 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %229 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %233 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %232, i32 0, i32 0
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %239 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %238, i32 0, i32 0
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i64 @memcmp(i32 %231, i32* %237, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %227
  %247 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %248 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %247, i32 0, i32 0
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 3
  %251 = load %struct.client_lease*, %struct.client_lease** %250, align 8
  %252 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %253 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %252, i32 0, i32 1
  store %struct.client_lease* %251, %struct.client_lease** %253, align 8
  %254 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %255 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %256 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %255, i32 0, i32 0
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  store %struct.client_lease* %254, %struct.client_lease** %258, align 8
  br label %309

259:                                              ; preds = %227, %201
  %260 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %261 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %260, i32 0, i32 0
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 3
  %264 = load %struct.client_lease*, %struct.client_lease** %263, align 8
  %265 = icmp ne %struct.client_lease* %264, null
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = load i32, i32* @cur_time, align 4
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %8, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i32 0, i32* %7, align 4
  br label %273

273:                                              ; preds = %272, %266, %259
  %274 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %275 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %274, i32 0, i32 1
  store %struct.client_lease* null, %struct.client_lease** %275, align 8
  %276 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %277 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %276, i32 0, i32 0
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 3
  %280 = load %struct.client_lease*, %struct.client_lease** %279, align 8
  %281 = icmp ne %struct.client_lease* %280, null
  br i1 %281, label %288, label %282

282:                                              ; preds = %273
  %283 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %284 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %285 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %284, i32 0, i32 0
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 3
  store %struct.client_lease* %283, %struct.client_lease** %287, align 8
  br label %308

288:                                              ; preds = %273
  %289 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %290 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %289, i32 0, i32 0
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 3
  %293 = load %struct.client_lease*, %struct.client_lease** %292, align 8
  store %struct.client_lease* %293, %struct.client_lease** %5, align 8
  br label %294

294:                                              ; preds = %300, %288
  %295 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %296 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %295, i32 0, i32 1
  %297 = load %struct.client_lease*, %struct.client_lease** %296, align 8
  %298 = icmp ne %struct.client_lease* %297, null
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299
  %301 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %302 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %301, i32 0, i32 1
  %303 = load %struct.client_lease*, %struct.client_lease** %302, align 8
  store %struct.client_lease* %303, %struct.client_lease** %5, align 8
  br label %294

304:                                              ; preds = %294
  %305 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %306 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %307 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %306, i32 0, i32 1
  store %struct.client_lease* %305, %struct.client_lease** %307, align 8
  br label %308

308:                                              ; preds = %304, %282
  br label %309

309:                                              ; preds = %308, %246
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @cur_time, align 4
  %312 = sub nsw i32 %310, %311
  %313 = load i32, i32* %7, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %309
  %316 = load i32, i32* @cur_time, align 4
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %316, %317
  store i32 %318, i32* %8, align 4
  br label %319

319:                                              ; preds = %315, %309
  %320 = load i32, i32* %8, align 4
  %321 = icmp sle i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %324 = call i32 @state_selecting(%struct.interface_info* %323)
  br label %332

325:                                              ; preds = %319
  %326 = load i32, i32* %8, align 4
  %327 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %328 = call i32 @add_timeout(i32 %326, i32 (%struct.interface_info*)* @state_selecting, %struct.interface_info* %327)
  %329 = load i32, i32* @send_discover, align 4
  %330 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %331 = call i32 @cancel_timeout(i32 %329, %struct.interface_info* %330)
  br label %332

332:                                              ; preds = %76, %117, %156, %169, %325, %322
  ret void
}

declare dso_local i64 @memcmp(i32, i32*, i64) #1

declare dso_local i32 @note(i8*, ...) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local %struct.client_lease* @packet_to_lease(%struct.packet*) #1

declare dso_local i32 @script_init(i8*, i32) #1

declare dso_local i32 @script_write_params(i8*, %struct.client_lease*) #1

declare dso_local i64 @script_go(...) #1

declare dso_local i32 @state_selecting(%struct.interface_info*) #1

declare dso_local i32 @add_timeout(i32, i32 (%struct.interface_info*)*, %struct.interface_info*) #1

declare dso_local i32 @cancel_timeout(i32, %struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
