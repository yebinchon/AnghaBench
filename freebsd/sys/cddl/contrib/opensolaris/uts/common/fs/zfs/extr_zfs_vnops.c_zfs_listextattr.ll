; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_listextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_listextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_listextattr_args = type { i64*, i32, i32, i32, %struct.thread*, %struct.uio* }
%struct.thread = type { i32 }
%struct.uio = type { i32, i32, i32, i64, %struct.thread*, i32, %struct.iovec* }
%struct.iovec = type { i32, i8* }
%struct.nameidata = type { i32* }
%struct.dirent = type { i64, i32*, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@VREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOOKUP_XATTR = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"freebsd:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_listextattr_args*)* @zfs_listextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_listextattr(%struct.vop_listextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_listextattr_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nameidata, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [32 x i32], align 16
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca %struct.iovec, align 8
  %11 = alloca %struct.uio, align 8
  %12 = alloca %struct.uio*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vop_listextattr_args* %0, %struct.vop_listextattr_args** %3, align 8
  %22 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @VTOZ(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  %28 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %28, i32 0, i32 4
  %30 = load %struct.thread*, %struct.thread** %29, align 8
  store %struct.thread* %30, %struct.thread** %5, align 8
  %31 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %31, i32 0, i32 5
  %33 = load %struct.uio*, %struct.uio** %32, align 8
  store %struct.uio* %33, %struct.uio** %12, align 8
  %34 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %13, align 8
  store i32* null, i32** %15, align 8
  %37 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %41 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %46, i32 0, i32 4
  %48 = load %struct.thread*, %struct.thread** %47, align 8
  %49 = load i32, i32* @VREAD, align 4
  %50 = call i32 @extattr_check_cred(i32 %39, i32 %42, i32 %45, %struct.thread* %48, i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %2, align 4
  br label %258

55:                                               ; preds = %1
  %56 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %60 = call i32 @zfs_create_attrname(i32 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %59, i32 16)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %2, align 4
  br label %258

65:                                               ; preds = %55
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %67 = call i64 @strlen(i8* %66)
  store i64 %67, i64* %14, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @ZFS_ENTER(i32* %68)
  %70 = load i64*, i64** %13, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64*, i64** %13, align 8
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %72, %65
  %75 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %76 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %79 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.thread*, %struct.thread** %5, align 8
  %82 = load i32, i32* @LOOKUP_XATTR, align 4
  %83 = call i32 @zfs_lookup(i32 %77, i32* null, i32** %15, i32* null, i32 0, i32 %80, %struct.thread* %81, i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %74
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @ZFS_EXIT(i32* %87)
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @ENOATTR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %92, %86
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %2, align 4
  br label %258

95:                                               ; preds = %74
  %96 = load i32, i32* @LOOKUP, align 4
  %97 = load i32, i32* @NOFOLLOW, align 4
  %98 = load i32, i32* @LOCKLEAF, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @LOCKSHARED, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UIO_SYSSPACE, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = load %struct.thread*, %struct.thread** %5, align 8
  %105 = call i32 @NDINIT_ATVP(%struct.nameidata* %6, i32 %96, i32 %101, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %103, %struct.thread* %104)
  %106 = call i32 @namei(%struct.nameidata* %6)
  store i32 %106, i32* %18, align 4
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %16, align 8
  %109 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %110 = call i32 @NDFREE(%struct.nameidata* %6, i32 %109)
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %95
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @ZFS_EXIT(i32* %114)
  %116 = load i32, i32* %18, align 4
  store i32 %116, i32* %2, align 4
  br label %258

117:                                              ; preds = %95
  %118 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 6
  store %struct.iovec* %10, %struct.iovec** %118, align 8
  %119 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @UIO_SYSSPACE, align 4
  %121 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 5
  store i32 %120, i32* %121, align 8
  %122 = load %struct.thread*, %struct.thread** %5, align 8
  %123 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 4
  store %struct.thread* %122, %struct.thread** %123, align 8
  %124 = load i32, i32* @UIO_READ, align 4
  %125 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 2
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 3
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %250, %117
  %128 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %129 = bitcast i32* %128 to i8*
  %130 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i32 128, i32* %131, align 8
  %132 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  store i32 128, i32* %132, align 4
  %133 = load i32*, i32** %16, align 8
  %134 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %135 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @VOP_READDIR(i32* %133, %struct.uio* %11, i32 %136, i32* %19, i32* null, i32* null)
  store i32 %137, i32* %18, align 4
  %138 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sub i64 128, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  br label %252

146:                                              ; preds = %127
  store i32 0, i32* %20, align 4
  br label %147

147:                                              ; preds = %242, %194, %185, %175, %146
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %243

151:                                              ; preds = %147
  %152 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = bitcast i32* %155 to %struct.dirent*
  store %struct.dirent* %156, %struct.dirent** %9, align 8
  %157 = load %struct.dirent*, %struct.dirent** %9, align 8
  %158 = getelementptr inbounds %struct.dirent, %struct.dirent* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %20, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %20, align 4
  %164 = load %struct.dirent*, %struct.dirent** %9, align 8
  %165 = getelementptr inbounds %struct.dirent, %struct.dirent* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DT_REG, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %151
  %170 = load %struct.dirent*, %struct.dirent** %9, align 8
  %171 = getelementptr inbounds %struct.dirent, %struct.dirent* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DT_UNKNOWN, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %147

176:                                              ; preds = %169, %151
  %177 = load i64, i64* %14, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load %struct.dirent*, %struct.dirent** %9, align 8
  %181 = getelementptr inbounds %struct.dirent, %struct.dirent* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @strncmp(i32* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 8)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %147

186:                                              ; preds = %179, %176
  %187 = load %struct.dirent*, %struct.dirent** %9, align 8
  %188 = getelementptr inbounds %struct.dirent, %struct.dirent* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %191 = load i64, i64* %14, align 8
  %192 = call i64 @strncmp(i32* %189, i8* %190, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %147

195:                                              ; preds = %186
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.dirent*, %struct.dirent** %9, align 8
  %198 = getelementptr inbounds %struct.dirent, %struct.dirent* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %14, align 8
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %21, align 4
  %204 = load i64*, i64** %13, align 8
  %205 = icmp ne i64* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %196
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 1, %207
  %209 = sext i32 %208 to i64
  %210 = load i64*, i64** %13, align 8
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, %209
  store i64 %212, i64* %210, align 8
  br label %242

213:                                              ; preds = %196
  %214 = load %struct.uio*, %struct.uio** %12, align 8
  %215 = icmp ne %struct.uio* %214, null
  br i1 %215, label %216, label %241

216:                                              ; preds = %213
  %217 = load %struct.uio*, %struct.uio** %12, align 8
  %218 = getelementptr inbounds %struct.uio, %struct.uio* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.uio*, %struct.uio** %12, align 8
  %221 = call i32 @uiomove(i32* %21, i32 1, i32 %219, %struct.uio* %220)
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %216
  %225 = load %struct.dirent*, %struct.dirent** %9, align 8
  %226 = getelementptr inbounds %struct.dirent, %struct.dirent* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* %14, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %21, align 4
  %231 = load %struct.uio*, %struct.uio** %12, align 8
  %232 = getelementptr inbounds %struct.uio, %struct.uio* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.uio*, %struct.uio** %12, align 8
  %235 = call i32 @uiomove(i32* %229, i32 %230, i32 %233, %struct.uio* %234)
  store i32 %235, i32* %18, align 4
  br label %236

236:                                              ; preds = %224, %216
  %237 = load i32, i32* %18, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  br label %243

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %213
  br label %242

242:                                              ; preds = %241, %206
  br label %147

243:                                              ; preds = %239, %147
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %19, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* %18, align 4
  %249 = icmp eq i32 %248, 0
  br label %250

250:                                              ; preds = %247, %244
  %251 = phi i1 [ false, %244 ], [ %249, %247 ]
  br i1 %251, label %127, label %252

252:                                              ; preds = %250, %145
  %253 = load i32*, i32** %16, align 8
  %254 = call i32 @vput(i32* %253)
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 @ZFS_EXIT(i32* %255)
  %257 = load i32, i32* %18, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %113, %93, %63, %53
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.TYPE_2__* @VTOZ(i32) #1

declare dso_local i32 @extattr_check_cred(i32, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @zfs_create_attrname(i32, i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @zfs_lookup(i32, i32*, i32**, i32*, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

declare dso_local i32 @NDINIT_ATVP(%struct.nameidata*, i32, i32, i32, i8*, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_READDIR(i32*, %struct.uio*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local i32 @uiomove(i32*, i32, i32, %struct.uio*) #1

declare dso_local i32 @vput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
