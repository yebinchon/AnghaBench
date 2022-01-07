; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_ifiter_sysctl.c_internal_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_ifiter_sysctl.c_internal_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32 }
%struct.ifa_msghdr = type { i64, i64, i32, i32 }
%struct.if_msghdr = type { i32 }
%struct.sockaddr_dl = type { i32, i32, i32 }
%struct.sockaddr = type { i32, i32 }

@RTM_VERSION = common dso_local global i64 0, align 8
@ISC_R_IGNORE = common dso_local global i32 0, align 4
@RTM_IFINFO = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@INTERFACE_F_UP = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@INTERFACE_F_POINTTOPOINT = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@INTERFACE_F_LOOPBACK = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@INTERFACE_F_BROADCAST = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i64 0, align 8
@RTAX_MAX = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_IFITERSYSCTL = common dso_local global i32 0, align 4
@ISC_MSG_UNEXPECTEDTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"warning: unexpected interface list message type\0A\00", align 1
@IFF_MULTICAST = common dso_local global i32 0, align 4
@INTERFACE_F_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @internal_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_current(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.ifa_msghdr*, align 8
  %5 = alloca %struct.ifa_msghdr*, align 8
  %6 = alloca %struct.if_msghdr*, align 8
  %7 = alloca %struct.sockaddr_dl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = call i32 @VALID_IFITER(%struct.TYPE_7__* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @REQUIRE(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = bitcast i8* %35 to %struct.ifa_msghdr*
  store %struct.ifa_msghdr* %36, %struct.ifa_msghdr** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = bitcast i8* %45 to %struct.ifa_msghdr*
  store %struct.ifa_msghdr* %46, %struct.ifa_msghdr** %5, align 8
  %47 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %48 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RTM_VERSION, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %53, i32* %2, align 4
  br label %305

54:                                               ; preds = %1
  %55 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %56 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RTM_IFINFO, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %157

60:                                               ; preds = %54
  %61 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %62 = bitcast %struct.ifa_msghdr* %61 to %struct.if_msghdr*
  store %struct.if_msghdr* %62, %struct.if_msghdr** %6, align 8
  %63 = load %struct.if_msghdr*, %struct.if_msghdr** %6, align 8
  %64 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %63, i64 1
  %65 = bitcast %struct.if_msghdr* %64 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %65, %struct.sockaddr_dl** %7, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = call i32 @memset(%struct.TYPE_8__* %67, i32 0, i32 40)
  %69 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %70 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 7
  store i32 %71, i32* %74, align 8
  %75 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %76 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = icmp ugt i64 %79, 7
  br i1 %80, label %81, label %82

81:                                               ; preds = %60
  store i32 7, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %60
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @memset(%struct.TYPE_8__* %86, i32 0, i32 8)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %93 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @memcpy(%struct.TYPE_8__* %91, i32 %94, i32 %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %101 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IFF_UP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %82
  %107 = load i32, i32* @INTERFACE_F_UP, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %82
  %114 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %115 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IFF_POINTOPOINT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32, i32* @INTERFACE_F_POINTTOPOINT, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %113
  %128 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %129 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IFF_LOOPBACK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* @INTERFACE_F_LOOPBACK, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %135
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %134, %127
  %142 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %143 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IFF_BROADCAST, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load i32, i32* @INTERFACE_F_BROADCAST, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %148, %141
  %156 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %156, i32* %2, align 4
  br label %305

157:                                              ; preds = %54
  %158 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %159 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @RTM_NEWADDR, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %298

163:                                              ; preds = %157
  store %struct.sockaddr* null, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %12, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %13, align 8
  %164 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %165 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %164, i64 1
  %166 = bitcast %struct.ifa_msghdr* %165 to %struct.sockaddr*
  store %struct.sockaddr* %166, %struct.sockaddr** %14, align 8
  %167 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %168 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %203, %163
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @RTAX_MAX, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %206

174:                                              ; preds = %170
  %175 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %4, align 8
  %176 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %9, align 4
  %179 = shl i32 1, %178
  %180 = and i32 %177, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %203

183:                                              ; preds = %174
  %184 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %185 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %5, align 8
  %186 = bitcast %struct.ifa_msghdr* %185 to %struct.sockaddr*
  %187 = icmp ult %struct.sockaddr* %184, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @INSIST(i32 %188)
  %190 = load i32, i32* %9, align 4
  switch i32 %190, label %197 [
    i32 128, label %191
    i32 129, label %193
    i32 130, label %195
  ]

191:                                              ; preds = %183
  %192 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %192, %struct.sockaddr** %11, align 8
  br label %197

193:                                              ; preds = %183
  %194 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %194, %struct.sockaddr** %12, align 8
  br label %197

195:                                              ; preds = %183
  %196 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  store %struct.sockaddr* %196, %struct.sockaddr** %13, align 8
  br label %197

197:                                              ; preds = %183, %195, %193, %191
  %198 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %199 = bitcast %struct.sockaddr* %198 to i8*
  %200 = call i64 @ROUNDUP(i32 8)
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  %202 = bitcast i8* %201 to %struct.sockaddr*
  store %struct.sockaddr* %202, %struct.sockaddr** %14, align 8
  br label %203

203:                                              ; preds = %197, %182
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %170

206:                                              ; preds = %170
  %207 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %208 = icmp eq %struct.sockaddr* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %210, i32* %2, align 4
  br label %305

211:                                              ; preds = %206
  %212 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %213 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @AF_INET, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %211
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @AF_INET6, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %223, i32* %2, align 4
  br label %305

224:                                              ; preds = %218, %211
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 6
  %233 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  %238 = call i32 @get_addr(i32 %229, i32* %232, %struct.sockaddr* %233, %struct.TYPE_8__* %237)
  %239 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %240 = icmp ne %struct.sockaddr* %239, null
  br i1 %240, label %241, label %252

241:                                              ; preds = %224
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 5
  %246 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = call i32 @get_addr(i32 %242, i32* %245, %struct.sockaddr* %246, %struct.TYPE_8__* %250)
  br label %252

252:                                              ; preds = %241, %224
  %253 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %254 = icmp ne %struct.sockaddr* %253, null
  br i1 %254, label %255, label %274

255:                                              ; preds = %252
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @INTERFACE_F_POINTTOPOINT, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %255
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 4
  %268 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = call i32 @get_addr(i32 %264, i32* %267, %struct.sockaddr* %268, %struct.TYPE_8__* %272)
  br label %274

274:                                              ; preds = %263, %255, %252
  %275 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %276 = icmp ne %struct.sockaddr* %275, null
  br i1 %276, label %277, label %296

277:                                              ; preds = %274
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @INTERFACE_F_BROADCAST, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %277
  %286 = load i32, i32* %10, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 3
  %290 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %293, align 8
  %295 = call i32 @get_addr(i32 %286, i32* %289, %struct.sockaddr* %290, %struct.TYPE_8__* %294)
  br label %296

296:                                              ; preds = %285, %277, %274
  %297 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %297, i32* %2, align 4
  br label %305

298:                                              ; preds = %157
  %299 = load i32, i32* @isc_msgcat, align 4
  %300 = load i32, i32* @ISC_MSGSET_IFITERSYSCTL, align 4
  %301 = load i32, i32* @ISC_MSG_UNEXPECTEDTYPE, align 4
  %302 = call i8* @isc_msgcat_get(i32 %299, i32 %300, i32 %301, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %303 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %302)
  %304 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %304, i32* %2, align 4
  br label %305

305:                                              ; preds = %298, %296, %222, %209, %155, %52
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_IFITER(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @ROUNDUP(i32) #1

declare dso_local i32 @get_addr(i32, i32*, %struct.sockaddr*, %struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @isc_msgcat_get(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
