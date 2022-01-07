; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_xvattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_xvattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@XAT_READONLY = common dso_local global i32 0, align 4
@XAT0_READONLY = common dso_local global i32 0, align 4
@XAT_HIDDEN = common dso_local global i32 0, align 4
@XAT0_HIDDEN = common dso_local global i32 0, align 4
@XAT_SYSTEM = common dso_local global i32 0, align 4
@XAT0_SYSTEM = common dso_local global i32 0, align 4
@XAT_ARCHIVE = common dso_local global i32 0, align 4
@XAT0_ARCHIVE = common dso_local global i32 0, align 4
@XAT_IMMUTABLE = common dso_local global i32 0, align 4
@XAT0_IMMUTABLE = common dso_local global i32 0, align 4
@XAT_NOUNLINK = common dso_local global i32 0, align 4
@XAT0_NOUNLINK = common dso_local global i32 0, align 4
@XAT_APPENDONLY = common dso_local global i32 0, align 4
@XAT0_APPENDONLY = common dso_local global i32 0, align 4
@XAT_OPAQUE = common dso_local global i32 0, align 4
@XAT_NODUMP = common dso_local global i32 0, align 4
@XAT0_NODUMP = common dso_local global i32 0, align 4
@XAT_AV_QUARANTINED = common dso_local global i32 0, align 4
@XAT0_AV_QUARANTINED = common dso_local global i32 0, align 4
@XAT_AV_MODIFIED = common dso_local global i32 0, align 4
@XAT0_AV_MODIFIED = common dso_local global i32 0, align 4
@XAT_CREATETIME = common dso_local global i32 0, align 4
@XAT_AV_SCANSTAMP = common dso_local global i32 0, align 4
@AV_SCANSTAMP_SZ = common dso_local global i32 0, align 4
@XAT_REPARSE = common dso_local global i32 0, align 4
@XAT0_REPARSE = common dso_local global i32 0, align 4
@XAT_OFFLINE = common dso_local global i32 0, align 4
@XAT0_OFFLINE = common dso_local global i32 0, align 4
@XAT_SPARSE = common dso_local global i32 0, align 4
@XAT0_SPARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_10__*)* @zfs_log_xvattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_log_xvattr(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = call %struct.TYPE_11__* @xva_getxoptattr(%struct.TYPE_10__* %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = call i32 @ASSERT(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i32* %21, i32** %5, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %37, %2
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = bitcast i32* %47 to i8*
  store i8* %48, i8** %9, align 8
  %49 = load i32*, i32** %6, align 8
  store i32 0, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load i32, i32* @XAT_READONLY, align 4
  %52 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @XAT0_READONLY, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 0, %59 ], [ %61, %60 ]
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %42
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = load i32, i32* @XAT_HIDDEN, align 4
  %70 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @XAT0_HIDDEN, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ 0, %77 ], [ %79, %78 ]
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80, %67
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = load i32, i32* @XAT_SYSTEM, align 4
  %88 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @XAT0_SYSTEM, align 4
  br label %98

98:                                               ; preds = %96, %95
  %99 = phi i32 [ 0, %95 ], [ %97, %96 ]
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %85
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = load i32, i32* @XAT_ARCHIVE, align 4
  %106 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @XAT0_ARCHIVE, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i32 [ 0, %113 ], [ %115, %114 ]
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %103
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = load i32, i32* @XAT_IMMUTABLE, align 4
  %124 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @XAT0_IMMUTABLE, align 4
  br label %134

134:                                              ; preds = %132, %131
  %135 = phi i32 [ 0, %131 ], [ %133, %132 ]
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %121
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = load i32, i32* @XAT_NOUNLINK, align 4
  %142 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @XAT0_NOUNLINK, align 4
  br label %152

152:                                              ; preds = %150, %149
  %153 = phi i32 [ 0, %149 ], [ %151, %150 ]
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %139
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = load i32, i32* @XAT_APPENDONLY, align 4
  %160 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @XAT0_APPENDONLY, align 4
  br label %170

170:                                              ; preds = %168, %167
  %171 = phi i32 [ 0, %167 ], [ %169, %168 ]
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %170, %157
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = load i32, i32* @XAT_OPAQUE, align 4
  %178 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %188

186:                                              ; preds = %180
  %187 = load i32, i32* @XAT0_APPENDONLY, align 4
  br label %188

188:                                              ; preds = %186, %185
  %189 = phi i32 [ 0, %185 ], [ %187, %186 ]
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %189
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %188, %175
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %195 = load i32, i32* @XAT_NODUMP, align 4
  %196 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 8
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @XAT0_NODUMP, align 4
  br label %206

206:                                              ; preds = %204, %203
  %207 = phi i32 [ 0, %203 ], [ %205, %204 ]
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %207
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %206, %193
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = load i32, i32* @XAT_AV_QUARANTINED, align 4
  %214 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %211
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 9
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %224

222:                                              ; preds = %216
  %223 = load i32, i32* @XAT0_AV_QUARANTINED, align 4
  br label %224

224:                                              ; preds = %222, %221
  %225 = phi i32 [ 0, %221 ], [ %223, %222 ]
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %225
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %224, %211
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %231 = load i32, i32* @XAT_AV_MODIFIED, align 4
  %232 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %230, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %229
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 10
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %242

240:                                              ; preds = %234
  %241 = load i32, i32* @XAT0_AV_MODIFIED, align 4
  br label %242

242:                                              ; preds = %240, %239
  %243 = phi i32 [ 0, %239 ], [ %241, %240 ]
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %243
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %242, %229
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %249 = load i32, i32* @XAT_CREATETIME, align 4
  %250 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 15
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 @ZFS_TIME_ENCODE(i32* %254, i32* %255)
  br label %257

257:                                              ; preds = %252, %247
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %259 = load i32, i32* @XAT_AV_SCANSTAMP, align 4
  %260 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 14
  %265 = load i32, i32* %264, align 8
  %266 = load i8*, i8** %9, align 8
  %267 = load i32, i32* @AV_SCANSTAMP_SZ, align 4
  %268 = call i32 @bcopy(i32 %265, i8* %266, i32 %267)
  br label %269

269:                                              ; preds = %262, %257
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %271 = load i32, i32* @XAT_REPARSE, align 4
  %272 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %269
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 11
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %282

280:                                              ; preds = %274
  %281 = load i32, i32* @XAT0_REPARSE, align 4
  br label %282

282:                                              ; preds = %280, %279
  %283 = phi i32 [ 0, %279 ], [ %281, %280 ]
  %284 = load i32*, i32** %6, align 8
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %283
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %282, %269
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %289 = load i32, i32* @XAT_OFFLINE, align 4
  %290 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %287
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 12
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %300

298:                                              ; preds = %292
  %299 = load i32, i32* @XAT0_OFFLINE, align 4
  br label %300

300:                                              ; preds = %298, %297
  %301 = phi i32 [ 0, %297 ], [ %299, %298 ]
  %302 = load i32*, i32** %6, align 8
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %301
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %300, %287
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %307 = load i32, i32* @XAT_SPARSE, align 4
  %308 = call i64 @XVA_ISSET_REQ(%struct.TYPE_10__* %306, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %323

310:                                              ; preds = %305
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 13
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %318

316:                                              ; preds = %310
  %317 = load i32, i32* @XAT0_SPARSE, align 4
  br label %318

318:                                              ; preds = %316, %315
  %319 = phi i32 [ 0, %315 ], [ %317, %316 ]
  %320 = load i32*, i32** %6, align 8
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %319
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %318, %305
  ret void
}

declare dso_local %struct.TYPE_11__* @xva_getxoptattr(%struct.TYPE_10__*) #1

declare dso_local i32 @ASSERT(%struct.TYPE_11__*) #1

declare dso_local i64 @XVA_ISSET_REQ(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ZFS_TIME_ENCODE(i32*, i32*) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
