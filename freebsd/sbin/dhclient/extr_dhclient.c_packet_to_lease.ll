; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_packet_to_lease.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_packet_to_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_lease = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.packet = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [38 x i8] c"dhcpoffer: no memory to record lease.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dhcpoffer: no memory for option %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid lease option - ignoring offer\00", align 1
@DHO_DHCP_OPTION_OVERLOAD = common dso_local global i64 0, align 8
@DHCP_SNAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"dhcpoffer: no memory for server name.\00", align 1
@DHCP_FILE_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"dhcpoffer: no memory for filename.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.client_lease* @packet_to_lease(%struct.packet* %0) #0 {
  %2 = alloca %struct.client_lease*, align 8
  %3 = alloca %struct.packet*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %3, align 8
  %6 = call i8* @malloc(i32 56)
  %7 = bitcast i8* %6 to %struct.client_lease*
  store %struct.client_lease* %7, %struct.client_lease** %4, align 8
  %8 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %9 = icmp ne %struct.client_lease* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %289

12:                                               ; preds = %1
  %13 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %14 = call i32 @memset(%struct.client_lease* %13, i32 0, i32 56)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %130, %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %133

18:                                               ; preds = %15
  %19 = load %struct.packet*, %struct.packet** %3, align 8
  %20 = getelementptr inbounds %struct.packet, %struct.packet* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %129

28:                                               ; preds = %18
  %29 = load %struct.packet*, %struct.packet** %3, align 8
  %30 = getelementptr inbounds %struct.packet, %struct.packet* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = call i8* @malloc(i32 %37)
  %39 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %40 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %38, i8** %45, align 8
  %46 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %47 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %59 = call i32 @free_client_lease(%struct.client_lease* %58)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %289

60:                                               ; preds = %28
  %61 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %62 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.packet*, %struct.packet** %3, align 8
  %70 = getelementptr inbounds %struct.packet, %struct.packet* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.packet*, %struct.packet** %3, align 8
  %78 = getelementptr inbounds %struct.packet, %struct.packet* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memcpy(i8* %68, i32* %76, i32 %84)
  %86 = load %struct.packet*, %struct.packet** %3, align 8
  %87 = getelementptr inbounds %struct.packet, %struct.packet* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %96 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i64 %94, i64* %101, align 8
  %102 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %103 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %111 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8, i8* %109, i64 %117
  store i8 0, i8* %118, align 1
  br label %119

119:                                              ; preds = %60
  %120 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @check_option(%struct.client_lease* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %127 = call i32 @free_client_lease(%struct.client_lease* %126)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %289

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %18
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %15

133:                                              ; preds = %15
  %134 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %135 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32 4, i32* %136, align 8
  %137 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %138 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.packet*, %struct.packet** %3, align 8
  %142 = getelementptr inbounds %struct.packet, %struct.packet* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %146 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @memcpy(i8* %140, i32* %144, i32 %148)
  %150 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %151 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i32 4, i32* %152, align 8
  %153 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %154 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.packet*, %struct.packet** %3, align 8
  %158 = getelementptr inbounds %struct.packet, %struct.packet* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %162 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @memcpy(i8* %156, i32* %160, i32 %164)
  %166 = load %struct.packet*, %struct.packet** %3, align 8
  %167 = getelementptr inbounds %struct.packet, %struct.packet* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %133
  %175 = load %struct.packet*, %struct.packet** %3, align 8
  %176 = getelementptr inbounds %struct.packet, %struct.packet* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 2
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %226, label %186

186:                                              ; preds = %174, %133
  %187 = load %struct.packet*, %struct.packet** %3, align 8
  %188 = getelementptr inbounds %struct.packet, %struct.packet* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %226

195:                                              ; preds = %186
  %196 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %197 = add nsw i32 %196, 1
  %198 = call i8* @malloc(i32 %197)
  %199 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %200 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %202 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %195
  %206 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %207 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %208 = call i32 @free_client_lease(%struct.client_lease* %207)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %289

209:                                              ; preds = %195
  %210 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %211 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.packet*, %struct.packet** %3, align 8
  %214 = getelementptr inbounds %struct.packet, %struct.packet* %213, i32 0, i32 0
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %219 = call i32 @memcpy(i8* %212, i32* %217, i32 %218)
  %220 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %221 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  store i8 0, i8* %225, align 1
  br label %226

226:                                              ; preds = %209, %186, %174
  %227 = load %struct.packet*, %struct.packet** %3, align 8
  %228 = getelementptr inbounds %struct.packet, %struct.packet* %227, i32 0, i32 1
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %226
  %236 = load %struct.packet*, %struct.packet** %3, align 8
  %237 = getelementptr inbounds %struct.packet, %struct.packet* %236, i32 0, i32 1
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = load i64, i64* @DHO_DHCP_OPTION_OVERLOAD, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %287, label %247

247:                                              ; preds = %235, %226
  %248 = load %struct.packet*, %struct.packet** %3, align 8
  %249 = getelementptr inbounds %struct.packet, %struct.packet* %248, i32 0, i32 0
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %287

256:                                              ; preds = %247
  %257 = load i32, i32* @DHCP_FILE_LEN, align 4
  %258 = add nsw i32 %257, 1
  %259 = call i8* @malloc(i32 %258)
  %260 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %261 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  %262 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %263 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %256
  %267 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %268 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %269 = call i32 @free_client_lease(%struct.client_lease* %268)
  store %struct.client_lease* null, %struct.client_lease** %2, align 8
  br label %289

270:                                              ; preds = %256
  %271 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %272 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.packet*, %struct.packet** %3, align 8
  %275 = getelementptr inbounds %struct.packet, %struct.packet* %274, i32 0, i32 0
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 3
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* @DHCP_FILE_LEN, align 4
  %280 = call i32 @memcpy(i8* %273, i32* %278, i32 %279)
  %281 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %282 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = load i32, i32* @DHCP_FILE_LEN, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  store i8 0, i8* %286, align 1
  br label %287

287:                                              ; preds = %270, %247, %235
  %288 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  store %struct.client_lease* %288, %struct.client_lease** %2, align 8
  br label %289

289:                                              ; preds = %287, %266, %205, %124, %55, %10
  %290 = load %struct.client_lease*, %struct.client_lease** %2, align 8
  ret %struct.client_lease* %290
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @memset(%struct.client_lease*, i32, i32) #1

declare dso_local i32 @free_client_lease(%struct.client_lease*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @check_option(%struct.client_lease*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
