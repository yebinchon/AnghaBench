; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_newpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_newpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i64, i32, i32, i64, i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_9__*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@MDF_POOL = common dso_local global i64 0, align 8
@MDF_BCLNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"newpeer(%s) found existing association\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"newpeer(%s) found no existing and %d other associations\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"newpeer(%s) denied - ippeerlimit %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"newpeer(%s) - ippeerlimit %d ignored\0A\00", align 1
@peer_free_count = common dso_local global i64 0, align 8
@peer_free = common dso_local global i32 0, align 4
@p_link = common dso_local global i32 0, align 4
@peer_associations = common dso_local global i32 0, align 4
@FLAG_PREEMPT = common dso_local global i32 0, align 4
@peer_preempt = common dso_local global i32 0, align 4
@current_association_ID = common dso_local global i64 0, align 8
@NTP_MINDPOLL = common dso_local global i64 0, align 8
@NTP_MAXPOLL = common dso_local global i32 0, align 4
@NTP_MAXDPOLL = common dso_local global i64 0, align 8
@NTP_MINPOLL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"newpeer(%s): using fd %d and our addr %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"newpeer(%s): local interface currently not bound\0A\00", align 1
@MDF_BCAST = common dso_local global i64 0, align 8
@MDF_MCAST = common dso_local global i64 0, align 8
@sys_precision = common dso_local global i32 0, align 4
@MDF_ACAST = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"ACST\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"POOL\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"MCST\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"BCST\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@mode_ntpdate = common dso_local global i64 0, align 8
@peer_ntpdate = common dso_local global i32 0, align 4
@current_time = common dso_local global i8* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [73 x i8] c"refclock %s isn't supported. ntpd was compiled without refclock support.\00", align 1
@peer_hash = common dso_local global i32* null, align 8
@adr_link = common dso_local global i32 0, align 4
@peer_hash_count = common dso_local global i32* null, align 8
@NTP_HASH_MASK = common dso_local global i32 0, align 4
@assoc_hash = common dso_local global i32* null, align 8
@aid_link = common dso_local global i32 0, align 4
@assoc_hash_count = common dso_local global i32* null, align 8
@peer_list = common dso_local global i32 0, align 4
@PEVNT_MOBIL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"assoc %d\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"newpeer: %s->%s mode %u vers %u poll %u %u flags 0x%x 0x%x ttl %u key %08x\0A\00", align 1
@FLAG_SKEY = common dso_local global i32 0, align 4
@NTP_MAXKEY = common dso_local global i64 0, align 8
@crypto_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.peer* @newpeer(i32* %0, i8* %1, %struct.TYPE_9__* %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8, i64 %9, i32 %10, i64 %11, i8* %12) #0 {
  %14 = alloca %struct.peer*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.peer*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %17, align 8
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32 %8, i32* %23, align 4
  store i64 %9, i64* %24, align 8
  store i32 %10, i32* %25, align 4
  store i64 %11, i64* %26, align 8
  store i8* %12, i8** %27, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %15, align 8
  %32 = call i32 @DEBUG_REQUIRE(i32* %31)
  %33 = load i8*, i8** %16, align 8
  %34 = icmp eq i8* null, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %13
  %36 = load i64, i64* @MDF_POOL, align 8
  %37 = load i64, i64* %24, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %13
  %41 = phi i1 [ true, %13 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @INSIST(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %95

46:                                               ; preds = %40
  %47 = load i32*, i32** %15, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %24, align 8
  %51 = call %struct.peer* @findexistingpeer(i32* %47, i8* %48, %struct.peer* null, i64 %49, i64 %50, i32* %30)
  store %struct.peer* %51, %struct.peer** %28, align 8
  br label %52

52:                                               ; preds = %87, %46
  %53 = load %struct.peer*, %struct.peer** %28, align 8
  %54 = icmp ne %struct.peer* %53, null
  br i1 %54, label %55, label %94

55:                                               ; preds = %52
  %56 = load %struct.peer*, %struct.peer** %28, align 8
  %57 = getelementptr inbounds %struct.peer, %struct.peer* %56, i32 0, i32 11
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %60 = icmp eq %struct.TYPE_9__* %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* @MDF_BCLNT, align 8
  %63 = load i64, i64* %24, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i64, i64* @MDF_BCLNT, align 8
  %68 = load %struct.peer*, %struct.peer** %28, align 8
  %69 = getelementptr inbounds %struct.peer, %struct.peer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %67, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %55
  br label %94

74:                                               ; preds = %66, %61
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call %struct.TYPE_9__* @ANY_INTERFACE_CHOOSE(i32* %76)
  %78 = icmp eq %struct.TYPE_9__* %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.peer*, %struct.peer** %28, align 8
  %81 = getelementptr inbounds %struct.peer, %struct.peer* %80, i32 0, i32 11
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call %struct.TYPE_9__* @findinterface(i32* %83)
  %85 = icmp eq %struct.TYPE_9__* %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %94

87:                                               ; preds = %79, %74
  %88 = load i32*, i32** %15, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = load %struct.peer*, %struct.peer** %28, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %24, align 8
  %93 = call %struct.peer* @findexistingpeer(i32* %88, i8* %89, %struct.peer* %90, i64 %91, i64 %92, i32* %30)
  store %struct.peer* %93, %struct.peer** %28, align 8
  br label %52

94:                                               ; preds = %86, %73, %52
  br label %101

95:                                               ; preds = %40
  %96 = load i32*, i32** %15, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %24, align 8
  %100 = call %struct.peer* @findexistingpeer(i32* %96, i8* %97, %struct.peer* null, i64 %98, i64 %99, i32* %30)
  store %struct.peer* %100, %struct.peer** %28, align 8
  br label %101

101:                                              ; preds = %95, %94
  %102 = load %struct.peer*, %struct.peer** %28, align 8
  %103 = icmp ne %struct.peer* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i8*, i8** %16, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8*, i8** %16, align 8
  br label %112

109:                                              ; preds = %104
  %110 = load i32*, i32** %15, align 8
  %111 = call i8* @stoa(i32* %110)
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i8* [ %108, %107 ], [ %111, %109 ]
  %114 = call i32 @DPRINTF(i32 2, i8* %113)
  store %struct.peer* null, %struct.peer** %14, align 8
  br label %500

115:                                              ; preds = %101
  %116 = load i8*, i8** %16, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i8*, i8** %16, align 8
  br label %123

120:                                              ; preds = %115
  %121 = load i32*, i32** %15, align 8
  %122 = call i8* @stoa(i32* %121)
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i8* [ %119, %118 ], [ %122, %120 ]
  %125 = load i32, i32* %30, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @DPRINTF(i32 1, i8* %127)
  %129 = load i32, i32* %18, align 4
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %151

131:                                              ; preds = %123
  %132 = load i32, i32* %30, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %18, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %131
  %137 = load i8*, i8** %16, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i8*, i8** %16, align 8
  br label %144

141:                                              ; preds = %136
  %142 = load i32*, i32** %15, align 8
  %143 = call i8* @stoa(i32* %142)
  br label %144

144:                                              ; preds = %141, %139
  %145 = phi i8* [ %140, %139 ], [ %143, %141 ]
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @DPRINTF(i32 2, i8* %148)
  store %struct.peer* null, %struct.peer** %14, align 8
  br label %500

150:                                              ; preds = %131
  br label %165

151:                                              ; preds = %123
  %152 = load i8*, i8** %16, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i8*, i8** %16, align 8
  br label %159

156:                                              ; preds = %151
  %157 = load i32*, i32** %15, align 8
  %158 = call i8* @stoa(i32* %157)
  br label %159

159:                                              ; preds = %156, %154
  %160 = phi i8* [ %155, %154 ], [ %158, %156 ]
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = call i32 @DPRINTF(i32 1, i8* %163)
  br label %165

165:                                              ; preds = %159, %150
  %166 = load i64, i64* @peer_free_count, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (...) @getmorepeermem()
  br label %170

170:                                              ; preds = %168, %165
  %171 = load %struct.peer*, %struct.peer** %28, align 8
  %172 = load i32, i32* @peer_free, align 4
  %173 = load i32, i32* @p_link, align 4
  %174 = call i32 @UNLINK_HEAD_SLIST(%struct.peer* %171, i32 %172, i32 %173)
  %175 = load %struct.peer*, %struct.peer** %28, align 8
  %176 = icmp ne %struct.peer* %175, null
  %177 = zext i1 %176 to i32
  %178 = call i32 @INSIST(i32 %177)
  %179 = load i64, i64* @peer_free_count, align 8
  %180 = add nsw i64 %179, -1
  store i64 %180, i64* @peer_free_count, align 8
  %181 = load i32, i32* @peer_associations, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @peer_associations, align 4
  %183 = load i32, i32* @FLAG_PREEMPT, align 4
  %184 = load i32, i32* %23, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %170
  %188 = load i32, i32* @peer_preempt, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @peer_preempt, align 4
  br label %190

190:                                              ; preds = %187, %170
  %191 = load i64, i64* @current_association_ID, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.peer*, %struct.peer** %28, align 8
  %194 = getelementptr inbounds %struct.peer, %struct.peer* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  %195 = load i64, i64* @current_association_ID, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* @current_association_ID, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load i64, i64* @current_association_ID, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* @current_association_ID, align 8
  br label %201

201:                                              ; preds = %198, %190
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.peer*, %struct.peer** %28, align 8
  %205 = getelementptr inbounds %struct.peer, %struct.peer* %204, i32 0, i32 10
  store i32 %203, i32* %205, align 8
  %206 = load i8*, i8** %16, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %201
  %209 = load i8*, i8** %16, align 8
  %210 = call i8* @estrdup(i8* %209)
  %211 = load %struct.peer*, %struct.peer** %28, align 8
  %212 = getelementptr inbounds %struct.peer, %struct.peer* %211, i32 0, i32 17
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %208, %201
  %214 = load i64, i64* %19, align 8
  %215 = load %struct.peer*, %struct.peer** %28, align 8
  %216 = getelementptr inbounds %struct.peer, %struct.peer* %215, i32 0, i32 9
  store i64 %214, i64* %216, align 8
  %217 = load i64, i64* %20, align 8
  %218 = load %struct.peer*, %struct.peer** %28, align 8
  %219 = getelementptr inbounds %struct.peer, %struct.peer* %218, i32 0, i32 8
  store i64 %217, i64* %219, align 8
  %220 = load i32, i32* %23, align 4
  %221 = load %struct.peer*, %struct.peer** %28, align 8
  %222 = getelementptr inbounds %struct.peer, %struct.peer* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load i64, i64* %24, align 8
  %224 = load %struct.peer*, %struct.peer** %28, align 8
  %225 = getelementptr inbounds %struct.peer, %struct.peer* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  %226 = load %struct.peer*, %struct.peer** %28, align 8
  %227 = load %struct.peer*, %struct.peer** %28, align 8
  %228 = load i32*, i32** %15, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %230 = call i32* @select_peerinterface(%struct.peer* %227, i32* %228, %struct.TYPE_9__* %229)
  %231 = call i32 @set_peerdstadr(%struct.peer* %226, i32* %230)
  %232 = load i64, i64* %21, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %213
  %235 = load i64, i64* @NTP_MINDPOLL, align 8
  %236 = load %struct.peer*, %struct.peer** %28, align 8
  %237 = getelementptr inbounds %struct.peer, %struct.peer* %236, i32 0, i32 3
  store i64 %235, i64* %237, align 8
  br label %244

238:                                              ; preds = %213
  %239 = load i64, i64* %21, align 8
  %240 = load i32, i32* @NTP_MAXPOLL, align 4
  %241 = call i64 @min(i64 %239, i32 %240)
  %242 = load %struct.peer*, %struct.peer** %28, align 8
  %243 = getelementptr inbounds %struct.peer, %struct.peer* %242, i32 0, i32 3
  store i64 %241, i64* %243, align 8
  br label %244

244:                                              ; preds = %238, %234
  %245 = load i64, i64* %22, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i64, i64* @NTP_MAXDPOLL, align 8
  %249 = load %struct.peer*, %struct.peer** %28, align 8
  %250 = getelementptr inbounds %struct.peer, %struct.peer* %249, i32 0, i32 4
  store i64 %248, i64* %250, align 8
  br label %257

251:                                              ; preds = %244
  %252 = load i64, i64* %22, align 8
  %253 = load i32, i32* @NTP_MINPOLL, align 4
  %254 = call i64 @max(i64 %252, i32 %253)
  %255 = load %struct.peer*, %struct.peer** %28, align 8
  %256 = getelementptr inbounds %struct.peer, %struct.peer* %255, i32 0, i32 4
  store i64 %254, i64* %256, align 8
  br label %257

257:                                              ; preds = %251, %247
  %258 = load %struct.peer*, %struct.peer** %28, align 8
  %259 = getelementptr inbounds %struct.peer, %struct.peer* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.peer*, %struct.peer** %28, align 8
  %262 = getelementptr inbounds %struct.peer, %struct.peer* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %260, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %257
  %266 = load %struct.peer*, %struct.peer** %28, align 8
  %267 = getelementptr inbounds %struct.peer, %struct.peer* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.peer*, %struct.peer** %28, align 8
  %270 = getelementptr inbounds %struct.peer, %struct.peer* %269, i32 0, i32 3
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %265, %257
  %272 = load %struct.peer*, %struct.peer** %28, align 8
  %273 = getelementptr inbounds %struct.peer, %struct.peer* %272, i32 0, i32 11
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %273, align 8
  %275 = icmp ne %struct.TYPE_9__* %274, null
  br i1 %275, label %276, label %290

276:                                              ; preds = %271
  %277 = load i32*, i32** %15, align 8
  %278 = call i8* @stoa(i32* %277)
  %279 = load %struct.peer*, %struct.peer** %28, align 8
  %280 = getelementptr inbounds %struct.peer, %struct.peer* %279, i32 0, i32 11
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.peer*, %struct.peer** %28, align 8
  %285 = getelementptr inbounds %struct.peer, %struct.peer* %284, i32 0, i32 11
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  %288 = call i8* @stoa(i32* %287)
  %289 = call i32 @DPRINTF(i32 3, i8* %288)
  br label %294

290:                                              ; preds = %271
  %291 = load i32*, i32** %15, align 8
  %292 = call i8* @stoa(i32* %291)
  %293 = call i32 @DPRINTF(i32 3, i8* %292)
  br label %294

294:                                              ; preds = %290, %276
  %295 = load i64, i64* @MDF_BCAST, align 8
  %296 = load i64, i64* %24, align 8
  %297 = and i64 %295, %296
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %294
  %300 = load %struct.peer*, %struct.peer** %28, align 8
  %301 = getelementptr inbounds %struct.peer, %struct.peer* %300, i32 0, i32 11
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %301, align 8
  %303 = icmp ne %struct.TYPE_9__* %302, null
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load %struct.peer*, %struct.peer** %28, align 8
  %306 = getelementptr inbounds %struct.peer, %struct.peer* %305, i32 0, i32 11
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = load i32*, i32** %15, align 8
  %309 = call i32 @enable_broadcast(%struct.TYPE_9__* %307, i32* %308)
  br label %310

310:                                              ; preds = %304, %299, %294
  %311 = load i64, i64* @MDF_MCAST, align 8
  %312 = load i64, i64* %24, align 8
  %313 = and i64 %311, %312
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %310
  %316 = load %struct.peer*, %struct.peer** %28, align 8
  %317 = getelementptr inbounds %struct.peer, %struct.peer* %316, i32 0, i32 11
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  %319 = icmp ne %struct.TYPE_9__* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %315
  %321 = load %struct.peer*, %struct.peer** %28, align 8
  %322 = getelementptr inbounds %struct.peer, %struct.peer* %321, i32 0, i32 11
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %322, align 8
  %324 = load i32*, i32** %15, align 8
  %325 = call i32 @enable_multicast_if(%struct.TYPE_9__* %323, i32* %324)
  br label %326

326:                                              ; preds = %320, %315, %310
  %327 = load i32, i32* %25, align 4
  %328 = load %struct.peer*, %struct.peer** %28, align 8
  %329 = getelementptr inbounds %struct.peer, %struct.peer* %328, i32 0, i32 7
  store i32 %327, i32* %329, align 8
  %330 = load i64, i64* %26, align 8
  %331 = load %struct.peer*, %struct.peer** %28, align 8
  %332 = getelementptr inbounds %struct.peer, %struct.peer* %331, i32 0, i32 6
  store i64 %330, i64* %332, align 8
  %333 = load i8*, i8** %27, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %326
  %336 = load i8*, i8** %27, align 8
  %337 = call i8* @estrdup(i8* %336)
  %338 = load %struct.peer*, %struct.peer** %28, align 8
  %339 = getelementptr inbounds %struct.peer, %struct.peer* %338, i32 0, i32 16
  store i8* %337, i8** %339, align 8
  br label %340

340:                                              ; preds = %335, %326
  %341 = load i32, i32* @sys_precision, align 4
  %342 = load %struct.peer*, %struct.peer** %28, align 8
  %343 = getelementptr inbounds %struct.peer, %struct.peer* %342, i32 0, i32 15
  store i32 %341, i32* %343, align 8
  %344 = load %struct.peer*, %struct.peer** %28, align 8
  %345 = getelementptr inbounds %struct.peer, %struct.peer* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.peer*, %struct.peer** %28, align 8
  %348 = getelementptr inbounds %struct.peer, %struct.peer* %347, i32 0, i32 5
  store i64 %346, i64* %348, align 8
  %349 = load i64, i64* %24, align 8
  %350 = load i64, i64* @MDF_ACAST, align 8
  %351 = and i64 %349, %350
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %340
  %354 = load %struct.peer*, %struct.peer** %28, align 8
  %355 = call i32 @peer_clear(%struct.peer* %354, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %386

356:                                              ; preds = %340
  %357 = load i64, i64* %24, align 8
  %358 = load i64, i64* @MDF_POOL, align 8
  %359 = and i64 %357, %358
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %356
  %362 = load %struct.peer*, %struct.peer** %28, align 8
  %363 = call i32 @peer_clear(%struct.peer* %362, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %385

364:                                              ; preds = %356
  %365 = load i64, i64* %24, align 8
  %366 = load i64, i64* @MDF_MCAST, align 8
  %367 = and i64 %365, %366
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load %struct.peer*, %struct.peer** %28, align 8
  %371 = call i32 @peer_clear(%struct.peer* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %384

372:                                              ; preds = %364
  %373 = load i64, i64* %24, align 8
  %374 = load i64, i64* @MDF_BCAST, align 8
  %375 = and i64 %373, %374
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %372
  %378 = load %struct.peer*, %struct.peer** %28, align 8
  %379 = call i32 @peer_clear(%struct.peer* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %383

380:                                              ; preds = %372
  %381 = load %struct.peer*, %struct.peer** %28, align 8
  %382 = call i32 @peer_clear(%struct.peer* %381, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %377
  br label %384

384:                                              ; preds = %383, %369
  br label %385

385:                                              ; preds = %384, %361
  br label %386

386:                                              ; preds = %385, %353
  %387 = load i64, i64* @mode_ntpdate, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i32, i32* @peer_ntpdate, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* @peer_ntpdate, align 4
  br label %392

392:                                              ; preds = %389, %386
  %393 = load i8*, i8** @current_time, align 8
  %394 = load %struct.peer*, %struct.peer** %28, align 8
  %395 = getelementptr inbounds %struct.peer, %struct.peer* %394, i32 0, i32 14
  store i8* %393, i8** %395, align 8
  %396 = load i8*, i8** @current_time, align 8
  %397 = load %struct.peer*, %struct.peer** %28, align 8
  %398 = getelementptr inbounds %struct.peer, %struct.peer* %397, i32 0, i32 13
  store i8* %396, i8** %398, align 8
  %399 = load i8*, i8** @current_time, align 8
  %400 = load %struct.peer*, %struct.peer** %28, align 8
  %401 = getelementptr inbounds %struct.peer, %struct.peer* %400, i32 0, i32 12
  store i8* %399, i8** %401, align 8
  %402 = load %struct.peer*, %struct.peer** %28, align 8
  %403 = getelementptr inbounds %struct.peer, %struct.peer* %402, i32 0, i32 10
  %404 = call i64 @ISREFCLOCKADR(i32* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %416

406:                                              ; preds = %392
  %407 = load i32, i32* @LOG_ERR, align 4
  %408 = load %struct.peer*, %struct.peer** %28, align 8
  %409 = getelementptr inbounds %struct.peer, %struct.peer* %408, i32 0, i32 10
  %410 = call i8* @stoa(i32* %409)
  %411 = call i32 (i32, i8*, ...) @msyslog(i32 %407, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0), i8* %410)
  %412 = load %struct.peer*, %struct.peer** %28, align 8
  %413 = call i32 @set_peerdstadr(%struct.peer* %412, i32* null)
  %414 = load %struct.peer*, %struct.peer** %28, align 8
  %415 = call i32 @free_peer(%struct.peer* %414, i32 0)
  store %struct.peer* null, %struct.peer** %14, align 8
  br label %500

416:                                              ; preds = %392
  %417 = load %struct.peer*, %struct.peer** %28, align 8
  %418 = getelementptr inbounds %struct.peer, %struct.peer* %417, i32 0, i32 10
  %419 = call i32 @NTP_HASH_ADDR(i32* %418)
  store i32 %419, i32* %29, align 4
  %420 = load i32*, i32** @peer_hash, align 8
  %421 = load i32, i32* %29, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.peer*, %struct.peer** %28, align 8
  %426 = load i32, i32* @adr_link, align 4
  %427 = call i32 @LINK_SLIST(i32 %424, %struct.peer* %425, i32 %426)
  %428 = load i32*, i32** @peer_hash_count, align 8
  %429 = load i32, i32* %29, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %431, align 4
  %434 = load %struct.peer*, %struct.peer** %28, align 8
  %435 = getelementptr inbounds %struct.peer, %struct.peer* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* @NTP_HASH_MASK, align 4
  %438 = and i32 %436, %437
  store i32 %438, i32* %29, align 4
  %439 = load i32*, i32** @assoc_hash, align 8
  %440 = load i32, i32* %29, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.peer*, %struct.peer** %28, align 8
  %445 = load i32, i32* @aid_link, align 4
  %446 = call i32 @LINK_SLIST(i32 %443, %struct.peer* %444, i32 %445)
  %447 = load i32*, i32** @assoc_hash_count, align 8
  %448 = load i32, i32* %29, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %450, align 4
  %453 = load i32, i32* @peer_list, align 4
  %454 = load %struct.peer*, %struct.peer** %28, align 8
  %455 = load i32, i32* @p_link, align 4
  %456 = call i32 @LINK_SLIST(i32 %453, %struct.peer* %454, i32 %455)
  %457 = load %struct.peer*, %struct.peer** %28, align 8
  %458 = getelementptr inbounds %struct.peer, %struct.peer* %457, i32 0, i32 10
  %459 = call i32 @restrict_source(i32* %458, i32 0, i32 0)
  %460 = load i32, i32* @PEVNT_MOBIL, align 4
  %461 = load %struct.peer*, %struct.peer** %28, align 8
  %462 = load %struct.peer*, %struct.peer** %28, align 8
  %463 = getelementptr inbounds %struct.peer, %struct.peer* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = call i32 @mprintf_event(i32 %460, %struct.peer* %461, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %464)
  %466 = load %struct.peer*, %struct.peer** %28, align 8
  %467 = getelementptr inbounds %struct.peer, %struct.peer* %466, i32 0, i32 11
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %467, align 8
  %469 = call i32 @latoa(%struct.TYPE_9__* %468)
  %470 = load %struct.peer*, %struct.peer** %28, align 8
  %471 = getelementptr inbounds %struct.peer, %struct.peer* %470, i32 0, i32 10
  %472 = call i8* @stoa(i32* %471)
  %473 = load %struct.peer*, %struct.peer** %28, align 8
  %474 = getelementptr inbounds %struct.peer, %struct.peer* %473, i32 0, i32 9
  %475 = load i64, i64* %474, align 8
  %476 = load %struct.peer*, %struct.peer** %28, align 8
  %477 = getelementptr inbounds %struct.peer, %struct.peer* %476, i32 0, i32 8
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.peer*, %struct.peer** %28, align 8
  %480 = getelementptr inbounds %struct.peer, %struct.peer* %479, i32 0, i32 3
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.peer*, %struct.peer** %28, align 8
  %483 = getelementptr inbounds %struct.peer, %struct.peer* %482, i32 0, i32 4
  %484 = load i64, i64* %483, align 8
  %485 = load %struct.peer*, %struct.peer** %28, align 8
  %486 = getelementptr inbounds %struct.peer, %struct.peer* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.peer*, %struct.peer** %28, align 8
  %489 = getelementptr inbounds %struct.peer, %struct.peer* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.peer*, %struct.peer** %28, align 8
  %492 = getelementptr inbounds %struct.peer, %struct.peer* %491, i32 0, i32 7
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.peer*, %struct.peer** %28, align 8
  %495 = getelementptr inbounds %struct.peer, %struct.peer* %494, i32 0, i32 6
  %496 = load i64, i64* %495, align 8
  %497 = inttoptr i64 %496 to i8*
  %498 = call i32 @DPRINTF(i32 1, i8* %497)
  %499 = load %struct.peer*, %struct.peer** %28, align 8
  store %struct.peer* %499, %struct.peer** %14, align 8
  br label %500

500:                                              ; preds = %416, %406, %144, %112
  %501 = load %struct.peer*, %struct.peer** %14, align 8
  ret %struct.peer* %501
}

declare dso_local i32 @DEBUG_REQUIRE(i32*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local %struct.peer* @findexistingpeer(i32*, i8*, %struct.peer*, i64, i64, i32*) #1

declare dso_local %struct.TYPE_9__* @ANY_INTERFACE_CHOOSE(i32*) #1

declare dso_local %struct.TYPE_9__* @findinterface(i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i32 @getmorepeermem(...) #1

declare dso_local i32 @UNLINK_HEAD_SLIST(%struct.peer*, i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @set_peerdstadr(%struct.peer*, i32*) #1

declare dso_local i32* @select_peerinterface(%struct.peer*, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @enable_broadcast(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @enable_multicast_if(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @peer_clear(%struct.peer*, i8*) #1

declare dso_local i64 @ISREFCLOCKADR(i32*) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @free_peer(%struct.peer*, i32) #1

declare dso_local i32 @NTP_HASH_ADDR(i32*) #1

declare dso_local i32 @LINK_SLIST(i32, %struct.peer*, i32) #1

declare dso_local i32 @restrict_source(i32*, i32, i32) #1

declare dso_local i32 @mprintf_event(i32, %struct.peer*, i8*, i32) #1

declare dso_local i32 @latoa(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
