; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i32, i32 }
%struct.TYPE_30__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i64, i64, i32, i32*, i32, i32, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATTR_NOACLCHECK = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@ZFS_ACL_TRIVIAL = common dso_local global i32 0, align 4
@ACE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@VROOT = common dso_local global i32 0, align 4
@ZFS_LINK_MAX = common dso_local global i64 0, align 8
@XAT_ARCHIVE = common dso_local global i32 0, align 4
@ZFS_ARCHIVE = common dso_local global i32 0, align 4
@XAT_READONLY = common dso_local global i32 0, align 4
@ZFS_READONLY = common dso_local global i32 0, align 4
@XAT_SYSTEM = common dso_local global i32 0, align 4
@ZFS_SYSTEM = common dso_local global i32 0, align 4
@XAT_HIDDEN = common dso_local global i32 0, align 4
@ZFS_HIDDEN = common dso_local global i32 0, align 4
@XAT_NOUNLINK = common dso_local global i32 0, align 4
@ZFS_NOUNLINK = common dso_local global i32 0, align 4
@XAT_IMMUTABLE = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@XAT_APPENDONLY = common dso_local global i32 0, align 4
@ZFS_APPENDONLY = common dso_local global i32 0, align 4
@XAT_NODUMP = common dso_local global i32 0, align 4
@ZFS_NODUMP = common dso_local global i32 0, align 4
@XAT_OPAQUE = common dso_local global i32 0, align 4
@ZFS_OPAQUE = common dso_local global i32 0, align 4
@XAT_AV_QUARANTINED = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@XAT_AV_MODIFIED = common dso_local global i32 0, align 4
@ZFS_AV_MODIFIED = common dso_local global i32 0, align 4
@XAT_AV_SCANSTAMP = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@XAT_REPARSE = common dso_local global i32 0, align 4
@ZFS_REPARSE = common dso_local global i32 0, align 4
@XAT_GEN = common dso_local global i32 0, align 4
@XAT_OFFLINE = common dso_local global i32 0, align 4
@ZFS_OFFLINE = common dso_local global i32 0, align 4
@XAT_SPARSE = common dso_local global i32 0, align 4
@ZFS_SPARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, i32, i32*, i32*)* @zfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_getattr(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %7, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %27 = call %struct.TYPE_26__* @VTOZ(%struct.TYPE_29__* %26)
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %12, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 10
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %13, align 8
  store i32 0, i32* %14, align 4
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %32 = bitcast %struct.TYPE_30__* %31 to i32*
  store i32* %32, i32** %21, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %22, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ATTR_NOACLCHECK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @B_TRUE, align 4
  br label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @B_FALSE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %44 = call i32 @ZFS_ENTER(%struct.TYPE_27__* %43)
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %46 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_26__* %45)
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 16
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 17
  %53 = call i32 @zfs_fuid_map_ids(%struct.TYPE_26__* %47, i32* %48, i32* %50, i32* %52)
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %55 = load i32, i32* %25, align 4
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %57 = call i32 @SA_ZPL_MTIME(%struct.TYPE_27__* %56)
  %58 = bitcast [2 x i32]* %17 to i32*
  %59 = call i32 @SA_ADD_BULK_ATTR(i32* %54, i32 %55, i32 %57, i32* null, i32* %58, i32 16)
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %61 = load i32, i32* %25, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %63 = call i32 @SA_ZPL_CTIME(%struct.TYPE_27__* %62)
  %64 = bitcast [2 x i32]* %18 to i32*
  %65 = call i32 @SA_ADD_BULK_ATTR(i32* %60, i32 %61, i32 %63, i32* null, i32* %64, i32 16)
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %67 = load i32, i32* %25, align 4
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %69 = call i32 @SA_ZPL_CRTIME(%struct.TYPE_27__* %68)
  %70 = bitcast [2 x i32]* %19 to i32*
  %71 = call i32 @SA_ADD_BULK_ATTR(i32* %66, i32 %67, i32 %69, i32* null, i32* %70, i32 16)
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VBLK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %41
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VCHR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77, %41
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %85 = load i32, i32* %25, align 4
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %87 = call i32 @SA_ZPL_RDEV(%struct.TYPE_27__* %86)
  %88 = call i32 @SA_ADD_BULK_ATTR(i32* %84, i32 %85, i32 %87, i32* null, i32* %20, i32 8)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %94 = load i32, i32* %25, align 4
  %95 = call i32 @sa_bulk_lookup(i32 %92, i32* %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %99 = call i32 @ZFS_EXIT(%struct.TYPE_27__* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %544

101:                                              ; preds = %89
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ZFS_ACL_TRIVIAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %101
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @crgetuid(i32* %112)
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %117 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %118 = load i32, i32* %23, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @zfs_zaccess(%struct.TYPE_26__* %116, i32 %117, i32 0, i32 %118, i32* %119)
  store i32 %120, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %124 = call i32 @ZFS_EXIT(%struct.TYPE_27__* %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %6, align 4
  br label %544

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %108, %101
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @IFTOVT(i32 %130)
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 15
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @S_IFMT, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %144 = call i32 @vn_fsid(%struct.TYPE_29__* %142, %struct.TYPE_30__* %143)
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 13
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @VROOT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %127
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %163 = call i64 @zfs_show_ctldir(%struct.TYPE_26__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %161
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ZFS_LINK_MAX, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %171, %165, %161, %127
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 12
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @VBLK, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %176
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @VCHR, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %187, %176
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @zfs_cmpldev(i32 %194)
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 11
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %187
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 10
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 9
  store i64 0, i64* %205, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 8
  %211 = load i32*, i32** %21, align 8
  %212 = call %struct.TYPE_28__* @xva_getxoptattr(i32* %211)
  store %struct.TYPE_28__* %212, %struct.TYPE_28__** %22, align 8
  %213 = icmp ne %struct.TYPE_28__* %212, null
  br i1 %213, label %214, label %501

214:                                              ; preds = %198
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %501

219:                                              ; preds = %214
  %220 = load i32*, i32** %21, align 8
  %221 = load i32, i32* @XAT_ARCHIVE, align 4
  %222 = call i64 @XVA_ISSET_REQ(i32* %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %219
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ZFS_ARCHIVE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  %234 = load i32*, i32** %21, align 8
  %235 = load i32, i32* @XAT_ARCHIVE, align 4
  %236 = call i32 @XVA_SET_RTN(i32* %234, i32 %235)
  br label %237

237:                                              ; preds = %224, %219
  %238 = load i32*, i32** %21, align 8
  %239 = load i32, i32* @XAT_READONLY, align 4
  %240 = call i64 @XVA_ISSET_REQ(i32* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @ZFS_READONLY, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load i32*, i32** %21, align 8
  %253 = load i32, i32* @XAT_READONLY, align 4
  %254 = call i32 @XVA_SET_RTN(i32* %252, i32 %253)
  br label %255

255:                                              ; preds = %242, %237
  %256 = load i32*, i32** %21, align 8
  %257 = load i32, i32* @XAT_SYSTEM, align 4
  %258 = call i64 @XVA_ISSET_REQ(i32* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %255
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ZFS_SYSTEM, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i32
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 4
  %270 = load i32*, i32** %21, align 8
  %271 = load i32, i32* @XAT_SYSTEM, align 4
  %272 = call i32 @XVA_SET_RTN(i32* %270, i32 %271)
  br label %273

273:                                              ; preds = %260, %255
  %274 = load i32*, i32** %21, align 8
  %275 = load i32, i32* @XAT_HIDDEN, align 4
  %276 = call i64 @XVA_ISSET_REQ(i32* %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %273
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @ZFS_HIDDEN, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  %285 = zext i1 %284 to i32
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  %288 = load i32*, i32** %21, align 8
  %289 = load i32, i32* @XAT_HIDDEN, align 4
  %290 = call i32 @XVA_SET_RTN(i32* %288, i32 %289)
  br label %291

291:                                              ; preds = %278, %273
  %292 = load i32*, i32** %21, align 8
  %293 = load i32, i32* @XAT_NOUNLINK, align 4
  %294 = call i64 @XVA_ISSET_REQ(i32* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %291
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @ZFS_NOUNLINK, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 4
  store i32 %303, i32* %305, align 4
  %306 = load i32*, i32** %21, align 8
  %307 = load i32, i32* @XAT_NOUNLINK, align 4
  %308 = call i32 @XVA_SET_RTN(i32* %306, i32 %307)
  br label %309

309:                                              ; preds = %296, %291
  %310 = load i32*, i32** %21, align 8
  %311 = load i32, i32* @XAT_IMMUTABLE, align 4
  %312 = call i64 @XVA_ISSET_REQ(i32* %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %309
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i32
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i32 0, i32 5
  store i32 %321, i32* %323, align 4
  %324 = load i32*, i32** %21, align 8
  %325 = load i32, i32* @XAT_IMMUTABLE, align 4
  %326 = call i32 @XVA_SET_RTN(i32* %324, i32 %325)
  br label %327

327:                                              ; preds = %314, %309
  %328 = load i32*, i32** %21, align 8
  %329 = load i32, i32* @XAT_APPENDONLY, align 4
  %330 = call i64 @XVA_ISSET_REQ(i32* %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %345

332:                                              ; preds = %327
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @ZFS_APPENDONLY, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  %339 = zext i1 %338 to i32
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 6
  store i32 %339, i32* %341, align 4
  %342 = load i32*, i32** %21, align 8
  %343 = load i32, i32* @XAT_APPENDONLY, align 4
  %344 = call i32 @XVA_SET_RTN(i32* %342, i32 %343)
  br label %345

345:                                              ; preds = %332, %327
  %346 = load i32*, i32** %21, align 8
  %347 = load i32, i32* @XAT_NODUMP, align 4
  %348 = call i64 @XVA_ISSET_REQ(i32* %346, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %345
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @ZFS_NODUMP, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i32
  %358 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 7
  store i32 %357, i32* %359, align 4
  %360 = load i32*, i32** %21, align 8
  %361 = load i32, i32* @XAT_NODUMP, align 4
  %362 = call i32 @XVA_SET_RTN(i32* %360, i32 %361)
  br label %363

363:                                              ; preds = %350, %345
  %364 = load i32*, i32** %21, align 8
  %365 = load i32, i32* @XAT_OPAQUE, align 4
  %366 = call i64 @XVA_ISSET_REQ(i32* %364, i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %363
  %369 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @ZFS_OPAQUE, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  %375 = zext i1 %374 to i32
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 8
  store i32 %375, i32* %377, align 4
  %378 = load i32*, i32** %21, align 8
  %379 = load i32, i32* @XAT_OPAQUE, align 4
  %380 = call i32 @XVA_SET_RTN(i32* %378, i32 %379)
  br label %381

381:                                              ; preds = %368, %363
  %382 = load i32*, i32** %21, align 8
  %383 = load i32, i32* @XAT_AV_QUARANTINED, align 4
  %384 = call i64 @XVA_ISSET_REQ(i32* %382, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %399

386:                                              ; preds = %381
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  %393 = zext i1 %392 to i32
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %395 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %394, i32 0, i32 9
  store i32 %393, i32* %395, align 4
  %396 = load i32*, i32** %21, align 8
  %397 = load i32, i32* @XAT_AV_QUARANTINED, align 4
  %398 = call i32 @XVA_SET_RTN(i32* %396, i32 %397)
  br label %399

399:                                              ; preds = %386, %381
  %400 = load i32*, i32** %21, align 8
  %401 = load i32, i32* @XAT_AV_MODIFIED, align 4
  %402 = call i64 @XVA_ISSET_REQ(i32* %400, i32 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %417

404:                                              ; preds = %399
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @ZFS_AV_MODIFIED, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  %411 = zext i1 %410 to i32
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 10
  store i32 %411, i32* %413, align 4
  %414 = load i32*, i32** %21, align 8
  %415 = load i32, i32* @XAT_AV_MODIFIED, align 4
  %416 = call i32 @XVA_SET_RTN(i32* %414, i32 %415)
  br label %417

417:                                              ; preds = %404, %399
  %418 = load i32*, i32** %21, align 8
  %419 = load i32, i32* @XAT_AV_SCANSTAMP, align 4
  %420 = call i64 @XVA_ISSET_REQ(i32* %418, i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %432

422:                                              ; preds = %417
  %423 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @VREG, align 8
  %427 = icmp eq i64 %425, %426
  br i1 %427, label %428, label %432

428:                                              ; preds = %422
  %429 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %430 = load i32*, i32** %21, align 8
  %431 = call i32 @zfs_sa_get_scanstamp(%struct.TYPE_26__* %429, i32* %430)
  br label %432

432:                                              ; preds = %428, %422, %417
  %433 = load i32*, i32** %21, align 8
  %434 = load i32, i32* @XAT_REPARSE, align 4
  %435 = call i64 @XVA_ISSET_REQ(i32* %433, i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %432
  %438 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %439 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @ZFS_REPARSE, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  %444 = zext i1 %443 to i32
  %445 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i32 0, i32 11
  store i32 %444, i32* %446, align 4
  %447 = load i32*, i32** %21, align 8
  %448 = load i32, i32* @XAT_REPARSE, align 4
  %449 = call i32 @XVA_SET_RTN(i32* %447, i32 %448)
  br label %450

450:                                              ; preds = %437, %432
  %451 = load i32*, i32** %21, align 8
  %452 = load i32, i32* @XAT_GEN, align 4
  %453 = call i64 @XVA_ISSET_REQ(i32* %451, i32 %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %450
  %456 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %456, i32 0, i32 6
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 14
  store i32 %458, i32* %460, align 4
  %461 = load i32*, i32** %21, align 8
  %462 = load i32, i32* @XAT_GEN, align 4
  %463 = call i32 @XVA_SET_RTN(i32* %461, i32 %462)
  br label %464

464:                                              ; preds = %455, %450
  %465 = load i32*, i32** %21, align 8
  %466 = load i32, i32* @XAT_OFFLINE, align 4
  %467 = call i64 @XVA_ISSET_REQ(i32* %465, i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %482

469:                                              ; preds = %464
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %471 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @ZFS_OFFLINE, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  %476 = zext i1 %475 to i32
  %477 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %478 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %477, i32 0, i32 12
  store i32 %476, i32* %478, align 4
  %479 = load i32*, i32** %21, align 8
  %480 = load i32, i32* @XAT_OFFLINE, align 4
  %481 = call i32 @XVA_SET_RTN(i32* %479, i32 %480)
  br label %482

482:                                              ; preds = %469, %464
  %483 = load i32*, i32** %21, align 8
  %484 = load i32, i32* @XAT_SPARSE, align 4
  %485 = call i64 @XVA_ISSET_REQ(i32* %483, i32 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %500

487:                                              ; preds = %482
  %488 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %489 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* @ZFS_SPARSE, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  %494 = zext i1 %493 to i32
  %495 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %496 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %495, i32 0, i32 13
  store i32 %494, i32* %496, align 4
  %497 = load i32*, i32** %21, align 8
  %498 = load i32, i32* @XAT_SPARSE, align 4
  %499 = call i32 @XVA_SET_RTN(i32* %497, i32 %498)
  br label %500

500:                                              ; preds = %487, %482
  br label %501

501:                                              ; preds = %500, %214, %198
  %502 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %503 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %502, i32 0, i32 7
  %504 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %505 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %504, i32 0, i32 5
  %506 = load i32*, i32** %505, align 8
  %507 = call i32 @ZFS_TIME_DECODE(i32* %503, i32* %506)
  %508 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %508, i32 0, i32 6
  %510 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %511 = call i32 @ZFS_TIME_DECODE(i32* %509, i32* %510)
  %512 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %513 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %512, i32 0, i32 5
  %514 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %515 = call i32 @ZFS_TIME_DECODE(i32* %513, i32* %514)
  %516 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %517 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %516, i32 0, i32 4
  %518 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %519 = call i32 @ZFS_TIME_DECODE(i32* %517, i32* %518)
  %520 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %521 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @sa_object_size(i32 %522, i32* %15, i32* %16)
  %524 = load i32, i32* %15, align 4
  %525 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %526 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %525, i32 0, i32 3
  store i32 %524, i32* %526, align 4
  %527 = load i32, i32* %16, align 4
  %528 = shl i32 %527, 9
  %529 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %530 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %529, i32 0, i32 2
  store i32 %528, i32* %530, align 8
  %531 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %532 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %531, i32 0, i32 3
  %533 = load i64, i64* %532, align 8
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %541

535:                                              ; preds = %501
  %536 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %537 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %540 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %539, i32 0, i32 3
  store i32 %538, i32* %540, align 4
  br label %541

541:                                              ; preds = %535, %501
  %542 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %543 = call i32 @ZFS_EXIT(%struct.TYPE_27__* %542)
  store i32 0, i32* %6, align 4
  br label %544

544:                                              ; preds = %541, %122, %97
  %545 = load i32, i32* %6, align 4
  ret i32 %545
}

declare dso_local %struct.TYPE_26__* @VTOZ(%struct.TYPE_29__*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_27__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_26__*) #1

declare dso_local i32 @zfs_fuid_map_ids(%struct.TYPE_26__*, i32*, i32*, i32*) #1

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @SA_ZPL_MTIME(%struct.TYPE_27__*) #1

declare dso_local i32 @SA_ZPL_CTIME(%struct.TYPE_27__*) #1

declare dso_local i32 @SA_ZPL_CRTIME(%struct.TYPE_27__*) #1

declare dso_local i32 @SA_ZPL_RDEV(%struct.TYPE_27__*) #1

declare dso_local i32 @sa_bulk_lookup(i32, i32*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_27__*) #1

declare dso_local i32 @crgetuid(i32*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_26__*, i32, i32, i32, i32*) #1

declare dso_local i32 @IFTOVT(i32) #1

declare dso_local i32 @vn_fsid(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i64 @zfs_show_ctldir(%struct.TYPE_26__*) #1

declare dso_local i32 @zfs_cmpldev(i32) #1

declare dso_local %struct.TYPE_28__* @xva_getxoptattr(i32*) #1

declare dso_local i64 @XVA_ISSET_REQ(i32*, i32) #1

declare dso_local i32 @XVA_SET_RTN(i32*, i32) #1

declare dso_local i32 @zfs_sa_get_scanstamp(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @ZFS_TIME_DECODE(i32*, i32*) #1

declare dso_local i32 @sa_object_size(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
