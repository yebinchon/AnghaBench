; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_inherit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 (i8*)*, i64 (i8*, i8**)*, i64 (i8*)*, i32 (i8*, i64)* }
%struct.TYPE_16__ = type { i64, i32, i8* }

@VDIR = common dso_local global i64 0, align 8
@VREG = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_ACL_DISCARD = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@ZFS_ACL_NOALLOW = common dso_local global i64 0, align 8
@ALLOW = common dso_local global i64 0, align 8
@ZFS_ACL_PASSTHROUGH = common dso_local global i64 0, align 8
@ZFS_ACL_PASSTHROUGH_X = common dso_local global i64 0, align 8
@ACE_OWNER = common dso_local global i64 0, align 8
@ACE_EVERYONE = common dso_local global i64 0, align 8
@OWNING_GROUP = common dso_local global i64 0, align 8
@ACE_DIRECTORY_INHERIT_ACE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ZFS_ACL_RESTRICTED = common dso_local global i64 0, align 8
@RESTRICTED_CLEAR = common dso_local global i32 0, align 4
@ACE_INHERITED_ACE = common dso_local global i64 0, align 8
@ACE_NO_PROPAGATE_INHERIT_ACE = common dso_local global i64 0, align 8
@ALL_INHERIT = common dso_local global i64 0, align 8
@ZFS_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_FILE_INHERIT_ACE = common dso_local global i64 0, align 8
@ACE_INHERIT_ONLY_ACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, i64, %struct.TYPE_15__*, i32, i32*)* @zfs_acl_inherit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @zfs_acl_inherit(%struct.TYPE_14__* %0, i64 %1, %struct.TYPE_15__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @VDIR, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %27, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @VREG, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %28, align 4
  %37 = load i32, i32* @B_TRUE, align 4
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_15__* @zfs_acl_alloc(i32 %41)
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %15, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %26, align 8
  %46 = load i64, i64* %26, align 8
  %47 = load i64, i64* @ZFS_ACL_DISCARD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %5
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @VLNK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %5
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %6, align 8
  br label %289

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %286, %232, %80, %66, %55
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i8* @zfs_acl_next_ace(%struct.TYPE_15__* %57, i8* %58, i32* %16, i32* %17, i64* %18, i64* %20)
  store i8* %59, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %287

61:                                               ; preds = %56
  %62 = load i64, i64* %20, align 8
  %63 = load i64, i64* %18, align 8
  %64 = call i32 @zfs_acl_valid_ace_type(i64 %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %56

67:                                               ; preds = %61
  %68 = load i64, i64* %26, align 8
  %69 = load i64, i64* @ZFS_ACL_NOALLOW, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %20, align 8
  %73 = load i64, i64* @ALLOW, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %71, %67
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %18, align 8
  %78 = call i32 @zfs_ace_can_use(i64 %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75, %71
  br label %56

81:                                               ; preds = %75
  %82 = load i64, i64* %26, align 8
  %83 = load i64, i64* @ZFS_ACL_PASSTHROUGH, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %26, align 8
  %87 = load i64, i64* @ZFS_ACL_PASSTHROUGH_X, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85, %81
  %90 = load i64, i64* %18, align 8
  %91 = load i64, i64* @ACE_OWNER, align 8
  %92 = load i64, i64* @ACE_EVERYONE, align 8
  %93 = or i64 %91, %92
  %94 = and i64 %90, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* @OWNING_GROUP, align 8
  %99 = and i64 %97, %98
  %100 = load i64, i64* @OWNING_GROUP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96, %89
  %103 = load i32, i32* %28, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %27, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* @ACE_DIRECTORY_INHERIT_ACE, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %102
  %114 = load i32, i32* @B_FALSE, align 4
  %115 = load i32*, i32** %11, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %108, %105, %96, %85
  %117 = load i64, i64* %26, align 8
  %118 = load i64, i64* @ZFS_ACL_PASSTHROUGH_X, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %116
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* @ALLOW, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load i32, i32* %27, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @S_IXUSR, align 4
  %130 = load i32, i32* @S_IXGRP, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @S_IXOTH, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %128, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load i32, i32* @ACE_EXECUTE, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %17, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %17, align 4
  br label %141

141:                                              ; preds = %136, %127, %124, %120, %116
  %142 = load i64, i64* %26, align 8
  %143 = load i64, i64* @ZFS_ACL_RESTRICTED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i64, i64* %20, align 8
  %147 = load i64, i64* @ALLOW, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* @RESTRICTED_CLEAR, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %17, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %17, align 4
  br label %154

154:                                              ; preds = %149, %145, %141
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i64 (i8*)*, i64 (i8*)** %157, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = call i64 %158(i8* %159)
  store i64 %160, i64* %21, align 8
  %161 = load i64, i64* %21, align 8
  %162 = call %struct.TYPE_16__* @zfs_acl_node_alloc(i64 %161)
  store %struct.TYPE_16__* %162, %struct.TYPE_16__** %14, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %166 = call i32 @list_insert_tail(i32* %164, %struct.TYPE_16__* %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %13, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* %17, align 4
  %173 = load i64, i64* %20, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %177 = or i64 %175, %176
  %178 = call i32 @zfs_set_ace(%struct.TYPE_15__* %170, i8* %171, i32 %172, i64 %173, i32 %174, i64 %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i64 (i8*, i8**)*, i64 (i8*, i8**)** %181, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = call i64 %182(i8* %183, i8** %22)
  store i64 %184, i64* %24, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %154
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i64 (i8*, i8**)*, i64 (i8*, i8**)** %189, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = call i64 %190(i8* %191, i8** %23)
  store i64 %192, i64* %25, align 8
  %193 = load i64, i64* %24, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @VERIFY(i32 %195)
  %197 = load i8*, i8** %22, align 8
  %198 = load i8*, i8** %23, align 8
  %199 = load i64, i64* %25, align 8
  %200 = call i32 @bcopy(i8* %197, i8* %198, i64 %199)
  br label %201

201:                                              ; preds = %186, %154
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %212
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %214, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  %222 = load i64 (i8*)*, i64 (i8*)** %221, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = call i64 %222(i8* %223)
  store i64 %224, i64* %19, align 8
  %225 = load i32, i32* %27, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %201
  %228 = load i64, i64* %18, align 8
  %229 = load i64, i64* @ACE_NO_PROPAGATE_INHERIT_ACE, align 8
  %230 = and i64 %228, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %227, %201
  %233 = load i64, i64* @ALL_INHERIT, align 8
  %234 = xor i64 %233, -1
  %235 = load i64, i64* %19, align 8
  %236 = and i64 %235, %234
  store i64 %236, i64* %19, align 8
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 3
  %240 = load i32 (i8*, i64)*, i32 (i8*, i64)** %239, align 8
  %241 = load i8*, i8** %13, align 8
  %242 = load i64, i64* %19, align 8
  %243 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %244 = or i64 %242, %243
  %245 = call i32 %240(i8* %241, i64 %244)
  br label %56

246:                                              ; preds = %227
  %247 = load i32, i32* @ZFS_INHERIT_ACE, align 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load i64, i64* %18, align 8
  %253 = load i64, i64* @ACE_FILE_INHERIT_ACE, align 8
  %254 = load i64, i64* @ACE_DIRECTORY_INHERIT_ACE, align 8
  %255 = or i64 %253, %254
  %256 = and i64 %252, %255
  %257 = load i64, i64* @ACE_FILE_INHERIT_ACE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %272

259:                                              ; preds = %246
  %260 = load i64, i64* @ACE_INHERIT_ONLY_ACE, align 8
  %261 = load i64, i64* %19, align 8
  %262 = or i64 %261, %260
  store i64 %262, i64* %19, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 3
  %266 = load i32 (i8*, i64)*, i32 (i8*, i64)** %265, align 8
  %267 = load i8*, i8** %13, align 8
  %268 = load i64, i64* %19, align 8
  %269 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %270 = or i64 %268, %269
  %271 = call i32 %266(i8* %267, i64 %270)
  br label %286

272:                                              ; preds = %246
  %273 = load i64, i64* @ACE_INHERIT_ONLY_ACE, align 8
  %274 = xor i64 %273, -1
  %275 = load i64, i64* %19, align 8
  %276 = and i64 %275, %274
  store i64 %276, i64* %19, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 3
  %280 = load i32 (i8*, i64)*, i32 (i8*, i64)** %279, align 8
  %281 = load i8*, i8** %13, align 8
  %282 = load i64, i64* %19, align 8
  %283 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %284 = or i64 %282, %283
  %285 = call i32 %280(i8* %281, i64 %284)
  br label %286

286:                                              ; preds = %272, %259
  br label %56

287:                                              ; preds = %56
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %288, %struct.TYPE_15__** %6, align 8
  br label %289

289:                                              ; preds = %287, %53
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %290
}

declare dso_local %struct.TYPE_15__* @zfs_acl_alloc(i32) #1

declare dso_local i8* @zfs_acl_next_ace(%struct.TYPE_15__*, i8*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @zfs_acl_valid_ace_type(i64, i64) #1

declare dso_local i32 @zfs_ace_can_use(i64, i64) #1

declare dso_local %struct.TYPE_16__* @zfs_acl_node_alloc(i64) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @zfs_set_ace(%struct.TYPE_15__*, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
