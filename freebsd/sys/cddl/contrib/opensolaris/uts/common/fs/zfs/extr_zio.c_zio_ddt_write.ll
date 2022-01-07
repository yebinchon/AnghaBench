; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32 }
%struct.TYPE_40__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, %struct.TYPE_41__, %struct.TYPE_44__*, i32* }
%struct.TYPE_41__ = type { i32, i64, i32, i64 }
%struct.TYPE_44__ = type { i64 }
%struct.TYPE_43__ = type { %struct.TYPE_40__**, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i64 }

@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@zio_checksum_table = common dso_local global %struct.TYPE_39__* null, align 8
@ZCHECKSUM_FLAG_DEDUP = common dso_local global i32 0, align 4
@ZIO_STAGE_OPEN = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ZIO_WRITE_PIPELINE = common dso_local global i8* null, align 8
@SPA_DVAS_PER_BP = common dso_local global i32 0, align 4
@DDT_PHYS_DITTO = common dso_local global i64 0, align 8
@zio_ddt_ditto_write_done = common dso_local global i32 0, align 4
@zio_ddt_child_write_ready = common dso_local global i32* null, align 8
@zio_ddt_child_write_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_40__* (%struct.TYPE_40__*)* @zio_ddt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_40__* @zio_ddt_write(%struct.TYPE_40__* %0) #0 {
  %2 = alloca %struct.TYPE_40__*, align 8
  %3 = alloca %struct.TYPE_40__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_43__*, align 8
  %14 = alloca %struct.TYPE_42__*, align 8
  %15 = alloca %struct.TYPE_41__, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %3, align 8
  %16 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %16, i32 0, i32 13
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %19, i32 0, i32 12
  %21 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  store %struct.TYPE_44__* %21, %struct.TYPE_44__** %5, align 8
  %22 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %25, i32 0, i32 11
  store %struct.TYPE_41__* %26, %struct.TYPE_41__** %7, align 8
  %27 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %10, align 8
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %11, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %32 = call i32* @ddt_select(i32* %30, %struct.TYPE_44__* %31)
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %34 = call i32 @BP_GET_DEDUP(%struct.TYPE_44__* %33)
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %37 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_44__* %36)
  %38 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %45 = call i64 @BP_IS_HOLE(%struct.TYPE_44__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %1
  %48 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br label %52

52:                                               ; preds = %47, %1
  %53 = phi i1 [ true, %1 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %60, %52
  %68 = phi i1 [ false, %52 ], [ %66, %60 ]
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @ddt_enter(i32* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %76 = load i32, i32* @B_TRUE, align 4
  %77 = call %struct.TYPE_43__* @ddt_lookup(i32* %74, %struct.TYPE_44__* %75, i32 %76)
  store %struct.TYPE_43__* %77, %struct.TYPE_43__** %13, align 8
  %78 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_42__*, %struct.TYPE_42__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %80, i64 %82
  store %struct.TYPE_42__* %83, %struct.TYPE_42__** %14, align 8
  %84 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %137

88:                                               ; preds = %67
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %92 = call i64 @zio_ddt_collision(%struct.TYPE_40__* %89, i32* %90, %struct.TYPE_43__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %137

94:                                               ; preds = %88
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** @zio_checksum_table, align 8
  %96 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ZCHECKSUM_FLAG_DEDUP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %94
  %106 = load i32*, i32** %4, align 8
  %107 = call i64 @spa_dedup_checksum(i32* %106)
  %108 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %111 = call i32 @zio_pop_transforms(%struct.TYPE_40__* %110)
  %112 = load i8*, i8** @ZIO_STAGE_OPEN, align 8
  %113 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 10
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %116 = call i32 @BP_ZERO(%struct.TYPE_44__* %115)
  br label %124

117:                                              ; preds = %94
  %118 = load i32, i32* @B_FALSE, align 4
  %119 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %122 = load i32, i32* @B_FALSE, align 4
  %123 = call i32 @BP_SET_DEDUP(%struct.TYPE_44__* %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %105
  %125 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %126 = call i32 @BP_GET_DEDUP(%struct.TYPE_44__* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @ASSERT(i32 %129)
  %131 = load i8*, i8** @ZIO_WRITE_PIPELINE, align 8
  %132 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 9
  store i8* %131, i8** %133, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @ddt_exit(i32* %134)
  %136 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  store %struct.TYPE_40__* %136, %struct.TYPE_40__** %2, align 8
  br label %352

137:                                              ; preds = %88, %67
  %138 = load i32*, i32** %12, align 8
  %139 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %141 = call i32 @ddt_ditto_copies_needed(i32* %138, %struct.TYPE_43__* %139, %struct.TYPE_42__* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @SPA_DVAS_PER_BP, align 4
  %144 = icmp slt i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @ASSERT(i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %149 = call i32 @ddt_ditto_copies_present(%struct.TYPE_43__* %148)
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %223

151:                                              ; preds = %137
  %152 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %153, align 8
  %155 = load i64, i64* @DDT_PHYS_DITTO, align 8
  %156 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %154, i64 %155
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %156, align 8
  %158 = icmp eq %struct.TYPE_40__* %157, null
  br i1 %158, label %159, label %223

159:                                              ; preds = %151
  %160 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %161 = bitcast %struct.TYPE_41__* %15 to i8*
  %162 = bitcast %struct.TYPE_41__* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 32, i1 false)
  %163 = load i32, i32* %9, align 4
  %164 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %15, i32 0, i32 0
  store i32 %163, i32* %164, align 8
  %165 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %185

169:                                              ; preds = %159
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %171 = call i32 @zio_pop_transforms(%struct.TYPE_40__* %170)
  %172 = load i8*, i8** @ZIO_STAGE_OPEN, align 8
  %173 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %173, i32 0, i32 10
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @ZIO_WRITE_PIPELINE, align 8
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %176, i32 0, i32 9
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %178, i32 0, i32 8
  store i32* null, i32** %179, align 8
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %181 = call i32 @BP_ZERO(%struct.TYPE_44__* %180)
  %182 = load i32*, i32** %12, align 8
  %183 = call i32 @ddt_exit(i32* %182)
  %184 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  store %struct.TYPE_40__* %184, %struct.TYPE_40__** %2, align 8
  br label %352

185:                                              ; preds = %159
  %186 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %187 = load i32*, i32** %4, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %190 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @zio_ddt_ditto_write_done, align 4
  %200 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %201 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %205 = call i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_40__* %204)
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %206, i32 0, i32 4
  %208 = call %struct.TYPE_40__* @zio_write(%struct.TYPE_40__* %186, i32* %187, i64 %188, %struct.TYPE_44__* %189, i32 %192, i32 %195, i32 %198, %struct.TYPE_41__* %15, i32* null, i32* null, i32* null, i32 %199, %struct.TYPE_43__* %200, i32 %203, i32 %205, i32* %207)
  store %struct.TYPE_40__* %208, %struct.TYPE_40__** %11, align 8
  %209 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %210 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @zio_push_transform(%struct.TYPE_40__* %209, i32 %212, i32 %215, i32 0, i32* null)
  %217 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %218 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %219, align 8
  %221 = load i64, i64* @DDT_PHYS_DITTO, align 8
  %222 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %220, i64 %221
  store %struct.TYPE_40__* %217, %struct.TYPE_40__** %222, align 8
  br label %223

223:                                              ; preds = %185, %151, %137
  %224 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %223
  %229 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %231, i64 %233
  %235 = load %struct.TYPE_40__*, %struct.TYPE_40__** %234, align 8
  %236 = icmp ne %struct.TYPE_40__* %235, null
  br i1 %236, label %237, label %270

237:                                              ; preds = %228, %223
  %238 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %244 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %245 = load i64, i64* %6, align 8
  %246 = call i32 @ddt_bp_fill(%struct.TYPE_42__* %243, %struct.TYPE_44__* %244, i64 %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %250, i64 %252
  %254 = load %struct.TYPE_40__*, %struct.TYPE_40__** %253, align 8
  %255 = icmp ne %struct.TYPE_40__* %254, null
  br i1 %255, label %256, label %266

256:                                              ; preds = %247
  %257 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %258 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %260, i64 %262
  %264 = load %struct.TYPE_40__*, %struct.TYPE_40__** %263, align 8
  %265 = call i32 @zio_add_child(%struct.TYPE_40__* %257, %struct.TYPE_40__* %264)
  br label %269

266:                                              ; preds = %247
  %267 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %268 = call i32 @ddt_phys_addref(%struct.TYPE_42__* %267)
  br label %269

269:                                              ; preds = %266, %256
  br label %336

270:                                              ; preds = %228
  %271 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %271, i32 0, i32 8
  %273 = load i32*, i32** %272, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %294

275:                                              ; preds = %270
  %276 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %6, align 8
  %280 = icmp eq i64 %278, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @ASSERT(i32 %281)
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %284, i32 0, i32 8
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @BP_EQUAL(%struct.TYPE_44__* %283, i32* %286)
  %288 = call i32 @ASSERT(i32 %287)
  %289 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %290 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %291 = call i32 @ddt_phys_fill(%struct.TYPE_42__* %289, %struct.TYPE_44__* %290)
  %292 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %293 = call i32 @ddt_phys_addref(%struct.TYPE_42__* %292)
  br label %335

294:                                              ; preds = %270
  %295 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %296 = load i32*, i32** %4, align 8
  %297 = load i64, i64* %6, align 8
  %298 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %299 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %309 = load i32*, i32** @zio_ddt_child_write_ready, align 8
  %310 = load i32, i32* @zio_ddt_child_write_done, align 4
  %311 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %312 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %316 = call i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_40__* %315)
  %317 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %317, i32 0, i32 4
  %319 = call %struct.TYPE_40__* @zio_write(%struct.TYPE_40__* %295, i32* %296, i64 %297, %struct.TYPE_44__* %298, i32 %301, i32 %304, i32 %307, %struct.TYPE_41__* %308, i32* %309, i32* null, i32* null, i32 %310, %struct.TYPE_43__* %311, i32 %314, i32 %316, i32* %318)
  store %struct.TYPE_40__* %319, %struct.TYPE_40__** %10, align 8
  %320 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %321 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @zio_push_transform(%struct.TYPE_40__* %320, i32 %323, i32 %326, i32 0, i32* null)
  %328 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %329 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %330, align 8
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %331, i64 %333
  store %struct.TYPE_40__* %328, %struct.TYPE_40__** %334, align 8
  br label %335

335:                                              ; preds = %294, %275
  br label %336

336:                                              ; preds = %335, %269
  %337 = load i32*, i32** %12, align 8
  %338 = call i32 @ddt_exit(i32* %337)
  %339 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %340 = icmp ne %struct.TYPE_40__* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %343 = call i32 @zio_nowait(%struct.TYPE_40__* %342)
  br label %344

344:                                              ; preds = %341, %336
  %345 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %346 = icmp ne %struct.TYPE_40__* %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %344
  %348 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %349 = call i32 @zio_nowait(%struct.TYPE_40__* %348)
  br label %350

350:                                              ; preds = %347, %344
  %351 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  store %struct.TYPE_40__* %351, %struct.TYPE_40__** %2, align 8
  br label %352

352:                                              ; preds = %350, %169, %124
  %353 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  ret %struct.TYPE_40__* %353
}

declare dso_local i32* @ddt_select(i32*, %struct.TYPE_44__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_GET_DEDUP(%struct.TYPE_44__*) #1

declare dso_local i64 @BP_GET_CHECKSUM(%struct.TYPE_44__*) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_44__*) #1

declare dso_local i32 @ddt_enter(i32*) #1

declare dso_local %struct.TYPE_43__* @ddt_lookup(i32*, %struct.TYPE_44__*, i32) #1

declare dso_local i64 @zio_ddt_collision(%struct.TYPE_40__*, i32*, %struct.TYPE_43__*) #1

declare dso_local i64 @spa_dedup_checksum(i32*) #1

declare dso_local i32 @zio_pop_transforms(%struct.TYPE_40__*) #1

declare dso_local i32 @BP_ZERO(%struct.TYPE_44__*) #1

declare dso_local i32 @BP_SET_DEDUP(%struct.TYPE_44__*, i32) #1

declare dso_local i32 @ddt_exit(i32*) #1

declare dso_local i32 @ddt_ditto_copies_needed(i32*, %struct.TYPE_43__*, %struct.TYPE_42__*) #1

declare dso_local i32 @ddt_ditto_copies_present(%struct.TYPE_43__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_40__* @zio_write(%struct.TYPE_40__*, i32*, i64, %struct.TYPE_44__*, i32, i32, i32, %struct.TYPE_41__*, i32*, i32*, i32*, i32, %struct.TYPE_43__*, i32, i32, i32*) #1

declare dso_local i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_40__*) #1

declare dso_local i32 @zio_push_transform(%struct.TYPE_40__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ddt_bp_fill(%struct.TYPE_42__*, %struct.TYPE_44__*, i64) #1

declare dso_local i32 @zio_add_child(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ddt_phys_addref(%struct.TYPE_42__*) #1

declare dso_local i32 @BP_EQUAL(%struct.TYPE_44__*, i32*) #1

declare dso_local i32 @ddt_phys_fill(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
