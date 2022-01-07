; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 (...)*, i32 (i8*)* }
%struct.TYPE_14__ = type { i32, i32, i8* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64 }

@VDIR = common dso_local global i64 0, align 8
@ALLOW = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@DENY = common dso_local global i32 0, align 4
@OWNING_GROUP = common dso_local global i32 0, align 4
@ACE_TYPE_FLAGS = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4
@ACE_FILE_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_DIRECTORY_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@ZFS_INHERIT_ACE = common dso_local global i32 0, align 4
@ZFS_ACL_OBJ_ACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32, %struct.TYPE_13__*)* @zfs_acl_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_acl_chmod(i64 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_15__, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %10, align 8
  store i8* null, i8** %11, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64 (...)*, i64 (...)** %27, align 8
  %29 = call i64 (...) %28()
  store i64 %29, i64* %21, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @VDIR, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %23, align 4
  %36 = call i32 @acl_trivial_access_masks(i32 %34, i32 %35, %struct.TYPE_15__* %24)
  %37 = load i64, i64* %21, align 8
  %38 = mul i64 %37, 6
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = call %struct.TYPE_14__* @zfs_acl_node_alloc(i64 %42)
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %20, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %5
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ALLOW, align 4
  %56 = load i32, i32* @ACE_OWNER, align 4
  %57 = call i32 @zfs_set_ace(%struct.TYPE_13__* %51, i8* %52, i64 %54, i32 %55, i32 -1, i32 %56)
  %58 = load i8*, i8** %22, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i64, i64* %21, align 8
  %61 = add i64 %59, %60
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %22, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  %65 = load i64, i64* %21, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %50, %5
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = load i8*, i8** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @DENY, align 4
  %80 = load i32, i32* @ACE_OWNER, align 4
  %81 = call i32 @zfs_set_ace(%struct.TYPE_13__* %75, i8* %76, i64 %78, i32 %79, i32 -1, i32 %80)
  %82 = load i8*, i8** %22, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load i64, i64* %21, align 8
  %85 = add i64 %83, %84
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %22, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  %89 = load i64, i64* %21, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %74, %70
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = load i8*, i8** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @DENY, align 4
  %104 = load i32, i32* @OWNING_GROUP, align 4
  %105 = call i32 @zfs_set_ace(%struct.TYPE_13__* %99, i8* %100, i64 %102, i32 %103, i32 -1, i32 %104)
  %106 = load i8*, i8** %22, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load i64, i64* %21, align 8
  %109 = add i64 %107, %108
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** %22, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = load i64, i64* %21, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %98, %94
  br label %119

119:                                              ; preds = %208, %152, %118
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i8* @zfs_acl_next_ace(%struct.TYPE_13__* %120, i8* %121, i32* %12, i64* %19, i32* %17, i32* %18)
  store i8* %122, i8** %11, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %233

124:                                              ; preds = %119
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @ACE_TYPE_FLAGS, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %124
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @ACE_OWNER, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @OWNING_GROUP, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @ACE_EVERYONE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %138, %134, %130
  %143 = load i32, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @ACE_FILE_INHERIT_ACE, align 4
  %148 = load i32, i32* @ACE_DIRECTORY_INHERIT_ACE, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145, %142
  br label %119

153:                                              ; preds = %145
  %154 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %155 = load i32, i32* %17, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %153, %138, %124
  %158 = load i32, i32* %23, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @ACE_FILE_INHERIT_ACE, align 4
  %163 = load i32, i32* @ACE_DIRECTORY_INHERIT_ACE, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i32, i32* @ZFS_INHERIT_ACE, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %167, %160, %157
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @ALLOW, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* @DENY, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %186, label %181

181:                                              ; preds = %177, %173
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181, %177
  %187 = load i32, i32* %18, align 4
  switch i32 %187, label %194 [
    i32 131, label %188
    i32 130, label %188
    i32 128, label %188
    i32 129, label %188
  ]

188:                                              ; preds = %186, %186, %186, %186
  %189 = load i32, i32* @ZFS_ACL_OBJ_ACE, align 4
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %186, %188
  br label %208

195:                                              ; preds = %181
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* @ALLOW, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %19, align 8
  %206 = and i64 %205, %204
  store i64 %206, i64* %19, align 8
  br label %207

207:                                              ; preds = %202, %199, %195
  br label %208

208:                                              ; preds = %207, %194
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %210 = load i8*, i8** %22, align 8
  %211 = load i64, i64* %19, align 8
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @zfs_set_ace(%struct.TYPE_13__* %209, i8* %210, i64 %211, i32 %212, i32 %213, i32 %214)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32 (i8*)*, i32 (i8*)** %218, align 8
  %220 = load i8*, i8** %11, align 8
  %221 = call i32 %219(i8* %220)
  store i32 %221, i32* %15, align 4
  %222 = load i8*, i8** %22, align 8
  %223 = ptrtoint i8* %222 to i64
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = add i64 %223, %225
  %227 = inttoptr i64 %226 to i8*
  store i8* %227, i8** %22, align 8
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %14, align 4
  br label %119

233:                                              ; preds = %119
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %235 = load i8*, i8** %22, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @ALLOW, align 4
  %239 = load i32, i32* @ACE_OWNER, align 4
  %240 = call i32 @zfs_set_ace(%struct.TYPE_13__* %234, i8* %235, i64 %237, i32 %238, i32 -1, i32 %239)
  %241 = load i8*, i8** %22, align 8
  %242 = ptrtoint i8* %241 to i64
  %243 = load i64, i64* %21, align 8
  %244 = add i64 %242, %243
  %245 = inttoptr i64 %244 to i8*
  store i8* %245, i8** %22, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %247 = load i8*, i8** %22, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* @ALLOW, align 4
  %251 = load i32, i32* @OWNING_GROUP, align 4
  %252 = call i32 @zfs_set_ace(%struct.TYPE_13__* %246, i8* %247, i64 %249, i32 %250, i32 -1, i32 %251)
  %253 = load i8*, i8** %22, align 8
  %254 = ptrtoint i8* %253 to i64
  %255 = load i64, i64* %21, align 8
  %256 = add i64 %254, %255
  %257 = inttoptr i64 %256 to i8*
  store i8* %257, i8** %22, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %259 = load i8*, i8** %22, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* @ALLOW, align 4
  %263 = load i32, i32* @ACE_EVERYONE, align 4
  %264 = call i32 @zfs_set_ace(%struct.TYPE_13__* %258, i8* %259, i64 %261, i32 %262, i32 -1, i32 %263)
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 3
  store i32 %266, i32* %13, align 4
  %267 = load i64, i64* %21, align 8
  %268 = mul i64 %267, 3
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = add i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %14, align 4
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %274 = call i32 @zfs_acl_release_nodes(%struct.TYPE_13__* %273)
  %275 = load i32, i32* %13, align 4
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  store i64 %279, i64* %281, align 8
  %282 = load i32, i32* %13, align 4
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %291 = call i32 @list_insert_tail(i32* %289, %struct.TYPE_14__* %290)
  ret void
}

declare dso_local i32 @acl_trivial_access_masks(i32, i32, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @zfs_acl_node_alloc(i64) #1

declare dso_local i32 @zfs_set_ace(%struct.TYPE_13__*, i8*, i64, i32, i32, i32) #1

declare dso_local i8* @zfs_acl_next_ace(%struct.TYPE_13__*, i8*, i32*, i64*, i32*, i32*) #1

declare dso_local i32 @zfs_acl_release_nodes(%struct.TYPE_13__*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
