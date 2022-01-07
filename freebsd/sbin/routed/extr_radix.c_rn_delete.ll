; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32, i32, i32, i32, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_mask*, %struct.radix_node*, %struct.radix_node*, i8*, i8* }
%struct.radix_mask = type { i64, %struct.radix_mask*, i8*, %struct.radix_node* }
%struct.radix_node_head = type { %struct.radix_node* }

@RNF_NORMAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rn_delete: inconsistent annotation\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rn_delete: couldn't find our annotation\0A\00", align 1
@RNF_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"rn_delete: couldn't find us\0A\00", align 1
@RNF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s 0x%lx at 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"rn_delete: Orphaned Mask\00", align 1
@rn_clist = common dso_local global %struct.radix_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, i8*, %struct.radix_node_head*)* @rn_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @rn_delete(i8* %0, i8* %1, %struct.radix_node_head* %2) #0 {
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_node_head*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca %struct.radix_node*, align 8
  %11 = alloca %struct.radix_node*, align 8
  %12 = alloca %struct.radix_mask*, align 8
  %13 = alloca %struct.radix_mask*, align 8
  %14 = alloca %struct.radix_mask**, align 8
  %15 = alloca %struct.radix_node*, align 8
  %16 = alloca %struct.radix_node*, align 8
  %17 = alloca %struct.radix_node*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.radix_mask*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.radix_node_head* %2, %struct.radix_node_head** %7, align 8
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %18, align 8
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %19, align 8
  %26 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %27 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %26, i32 0, i32 0
  %28 = load %struct.radix_node*, %struct.radix_node** %27, align 8
  store %struct.radix_node* %28, %struct.radix_node** %10, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %31 = call %struct.radix_node* @rn_search(i8* %29, %struct.radix_node* %30)
  store %struct.radix_node* %31, %struct.radix_node** %11, align 8
  %32 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %33 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %21, align 4
  %35 = load i8*, i8** %18, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %22, align 4
  %38 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %38, %struct.radix_node** %16, align 8
  %39 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  store %struct.radix_node* %39, %struct.radix_node** %17, align 8
  %40 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %41 = icmp eq %struct.radix_node* %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %3
  %43 = load i8*, i8** %18, align 8
  %44 = load i32, i32* %21, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %48 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %47, i32 0, i32 11
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %21, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i64 @Bcmp(i8* %46, i8* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %42, %3
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %483

59:                                               ; preds = %42
  %60 = load i8*, i8** %19, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = load i8*, i8** %19, align 8
  %64 = load i32, i32* %21, align 4
  %65 = call %struct.radix_node* @rn_addmask(i8* %63, i32 1, i32 %64)
  store %struct.radix_node* %65, %struct.radix_node** %10, align 8
  %66 = icmp eq %struct.radix_node* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %483

68:                                               ; preds = %62
  %69 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %70 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %69, i32 0, i32 11
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %19, align 8
  br label %72

72:                                               ; preds = %84, %68
  %73 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %74 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %73, i32 0, i32 10
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %80 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %79, i32 0, i32 8
  %81 = load %struct.radix_node*, %struct.radix_node** %80, align 8
  store %struct.radix_node* %81, %struct.radix_node** %11, align 8
  %82 = icmp eq %struct.radix_node* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %483

84:                                               ; preds = %78
  br label %72

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %59
  %87 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %88 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %87, i32 0, i32 10
  %89 = load i8*, i8** %88, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %93 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %92, i32 0, i32 7
  %94 = load %struct.radix_mask*, %struct.radix_mask** %93, align 8
  store %struct.radix_mask* %94, %struct.radix_mask** %12, align 8
  store %struct.radix_mask* %94, %struct.radix_mask** %13, align 8
  %95 = icmp eq %struct.radix_mask* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %86
  br label %207

97:                                               ; preds = %91
  %98 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %99 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RNF_NORMAL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %106 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %105, i32 0, i32 3
  %107 = load %struct.radix_node*, %struct.radix_node** %106, align 8
  %108 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %109 = icmp ne %struct.radix_node* %107, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %112 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110, %104
  %116 = load i32, i32* @LOG_ERR, align 4
  %117 = call i32 @log(i32 %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %483

118:                                              ; preds = %110
  br label %138

119:                                              ; preds = %97
  %120 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %121 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %124 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %123, i32 0, i32 10
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* @LOG_ERR, align 4
  %129 = call i32 @log(i32 %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %207

130:                                              ; preds = %119
  %131 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %132 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %207

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %118
  %139 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %140 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 -1, %141
  store i32 %142, i32* %20, align 4
  %143 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %144 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %143, i32 0, i32 6
  %145 = load %struct.radix_node*, %struct.radix_node** %144, align 8
  store %struct.radix_node* %145, %struct.radix_node** %8, align 8
  %146 = load i32, i32* %20, align 4
  %147 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %148 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  br label %207

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %168, %152
  %154 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  store %struct.radix_node* %154, %struct.radix_node** %10, align 8
  %155 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %156 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %155, i32 0, i32 6
  %157 = load %struct.radix_node*, %struct.radix_node** %156, align 8
  store %struct.radix_node* %157, %struct.radix_node** %8, align 8
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %20, align 4
  %160 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %161 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp sle i32 %159, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %166 = load %struct.radix_node*, %struct.radix_node** %17, align 8
  %167 = icmp ne %struct.radix_node* %165, %166
  br label %168

168:                                              ; preds = %164, %158
  %169 = phi i1 [ false, %158 ], [ %167, %164 ]
  br i1 %169, label %153, label %170

170:                                              ; preds = %168
  %171 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %172 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %171, i32 0, i32 7
  store %struct.radix_mask** %172, %struct.radix_mask*** %14, align 8
  br label %173

173:                                              ; preds = %189, %170
  %174 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  %175 = load %struct.radix_mask*, %struct.radix_mask** %174, align 8
  store %struct.radix_mask* %175, %struct.radix_mask** %12, align 8
  %176 = icmp ne %struct.radix_mask* %175, null
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %179 = load %struct.radix_mask*, %struct.radix_mask** %13, align 8
  %180 = icmp eq %struct.radix_mask* %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %183 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %182, i32 0, i32 1
  %184 = load %struct.radix_mask*, %struct.radix_mask** %183, align 8
  %185 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  store %struct.radix_mask* %184, %struct.radix_mask** %185, align 8
  %186 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %187 = call i32 @MKFree(%struct.radix_mask* %186)
  br label %192

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %191 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %190, i32 0, i32 1
  store %struct.radix_mask** %191, %struct.radix_mask*** %14, align 8
  br label %173

192:                                              ; preds = %181, %173
  %193 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %194 = icmp eq %struct.radix_mask* %193, null
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load i32, i32* @LOG_ERR, align 4
  %197 = call i32 @log(i32 %196, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %198 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %199 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @RNF_NORMAL, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %483

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %192
  br label %207

207:                                              ; preds = %206, %151, %136, %127, %96
  %208 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %209 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @RNF_ROOT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %483

215:                                              ; preds = %207
  %216 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %217 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %216, i32 0, i32 6
  %218 = load %struct.radix_node*, %struct.radix_node** %217, align 8
  store %struct.radix_node* %218, %struct.radix_node** %8, align 8
  %219 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %220 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %219, i32 0, i32 8
  %221 = load %struct.radix_node*, %struct.radix_node** %220, align 8
  store %struct.radix_node* %221, %struct.radix_node** %15, align 8
  %222 = icmp ne %struct.radix_node* %221, null
  br i1 %222, label %223, label %319

223:                                              ; preds = %215
  %224 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %225 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %226 = icmp eq %struct.radix_node* %224, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %223
  %228 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  store %struct.radix_node* %228, %struct.radix_node** %10, align 8
  %229 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %230 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %231 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %230, i32 0, i32 6
  store %struct.radix_node* %229, %struct.radix_node** %231, align 8
  %232 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %233 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %232, i32 0, i32 5
  %234 = load %struct.radix_node*, %struct.radix_node** %233, align 8
  %235 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %236 = icmp eq %struct.radix_node* %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %227
  %238 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %239 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %240 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %239, i32 0, i32 5
  store %struct.radix_node* %238, %struct.radix_node** %240, align 8
  br label %245

241:                                              ; preds = %227
  %242 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %243 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %244 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %243, i32 0, i32 4
  store %struct.radix_node* %242, %struct.radix_node** %244, align 8
  br label %245

245:                                              ; preds = %241, %237
  br label %276

246:                                              ; preds = %223
  %247 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  store %struct.radix_node* %247, %struct.radix_node** %9, align 8
  store %struct.radix_node* %247, %struct.radix_node** %10, align 8
  br label %248

248:                                              ; preds = %259, %246
  %249 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %250 = icmp ne %struct.radix_node* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %253 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %252, i32 0, i32 8
  %254 = load %struct.radix_node*, %struct.radix_node** %253, align 8
  %255 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %256 = icmp ne %struct.radix_node* %254, %255
  br label %257

257:                                              ; preds = %251, %248
  %258 = phi i1 [ false, %248 ], [ %256, %251 ]
  br i1 %258, label %259, label %263

259:                                              ; preds = %257
  %260 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %261 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %260, i32 0, i32 8
  %262 = load %struct.radix_node*, %struct.radix_node** %261, align 8
  store %struct.radix_node* %262, %struct.radix_node** %9, align 8
  br label %248

263:                                              ; preds = %257
  %264 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %265 = icmp ne %struct.radix_node* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %268 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %267, i32 0, i32 8
  %269 = load %struct.radix_node*, %struct.radix_node** %268, align 8
  %270 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %271 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %270, i32 0, i32 8
  store %struct.radix_node* %269, %struct.radix_node** %271, align 8
  br label %275

272:                                              ; preds = %263
  %273 = load i32, i32* @LOG_ERR, align 4
  %274 = call i32 @log(i32 %273, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %275

275:                                              ; preds = %272, %266
  br label %276

276:                                              ; preds = %275, %245
  %277 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %278 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %277, i64 1
  store %struct.radix_node* %278, %struct.radix_node** %8, align 8
  %279 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %280 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @RNF_ACTIVE, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %318

285:                                              ; preds = %276
  %286 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %287 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %286, i32 1
  store %struct.radix_node* %287, %struct.radix_node** %10, align 8
  %288 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %289 = bitcast %struct.radix_node* %287 to i8*
  %290 = bitcast %struct.radix_node* %288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %289, i8* align 8 %290, i64 80, i1 false)
  %291 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %292 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %291, i32 0, i32 6
  %293 = load %struct.radix_node*, %struct.radix_node** %292, align 8
  store %struct.radix_node* %293, %struct.radix_node** %9, align 8
  %294 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %295 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %294, i32 0, i32 5
  %296 = load %struct.radix_node*, %struct.radix_node** %295, align 8
  %297 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %298 = icmp eq %struct.radix_node* %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %285
  %300 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %301 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %302 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %301, i32 0, i32 5
  store %struct.radix_node* %300, %struct.radix_node** %302, align 8
  br label %307

303:                                              ; preds = %285
  %304 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %305 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %306 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %305, i32 0, i32 4
  store %struct.radix_node* %304, %struct.radix_node** %306, align 8
  br label %307

307:                                              ; preds = %303, %299
  %308 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %309 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %310 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %309, i32 0, i32 5
  %311 = load %struct.radix_node*, %struct.radix_node** %310, align 8
  %312 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %311, i32 0, i32 6
  store %struct.radix_node* %308, %struct.radix_node** %312, align 8
  %313 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %314 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %315 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %314, i32 0, i32 4
  %316 = load %struct.radix_node*, %struct.radix_node** %315, align 8
  %317 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %316, i32 0, i32 6
  store %struct.radix_node* %313, %struct.radix_node** %317, align 8
  br label %318

318:                                              ; preds = %307, %276
  br label %468

319:                                              ; preds = %215
  %320 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %321 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %320, i32 0, i32 5
  %322 = load %struct.radix_node*, %struct.radix_node** %321, align 8
  %323 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %324 = icmp eq %struct.radix_node* %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %327 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %326, i32 0, i32 4
  %328 = load %struct.radix_node*, %struct.radix_node** %327, align 8
  store %struct.radix_node* %328, %struct.radix_node** %10, align 8
  br label %333

329:                                              ; preds = %319
  %330 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %331 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %330, i32 0, i32 5
  %332 = load %struct.radix_node*, %struct.radix_node** %331, align 8
  store %struct.radix_node* %332, %struct.radix_node** %10, align 8
  br label %333

333:                                              ; preds = %329, %325
  %334 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %335 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %334, i32 0, i32 6
  %336 = load %struct.radix_node*, %struct.radix_node** %335, align 8
  store %struct.radix_node* %336, %struct.radix_node** %9, align 8
  %337 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %338 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %337, i32 0, i32 4
  %339 = load %struct.radix_node*, %struct.radix_node** %338, align 8
  %340 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %341 = icmp eq %struct.radix_node* %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %333
  %343 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %344 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %345 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %344, i32 0, i32 4
  store %struct.radix_node* %343, %struct.radix_node** %345, align 8
  br label %350

346:                                              ; preds = %333
  %347 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %348 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %349 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %348, i32 0, i32 5
  store %struct.radix_node* %347, %struct.radix_node** %349, align 8
  br label %350

350:                                              ; preds = %346, %342
  %351 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %352 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %353 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %352, i32 0, i32 6
  store %struct.radix_node* %351, %struct.radix_node** %353, align 8
  %354 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %355 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %354, i32 0, i32 7
  %356 = load %struct.radix_mask*, %struct.radix_mask** %355, align 8
  %357 = icmp ne %struct.radix_mask* %356, null
  br i1 %357, label %358, label %429

358:                                              ; preds = %350
  %359 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %360 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp sge i32 %361, 0
  br i1 %362, label %363, label %378

363:                                              ; preds = %358
  %364 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %365 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %364, i32 0, i32 7
  store %struct.radix_mask** %365, %struct.radix_mask*** %14, align 8
  br label %366

366:                                              ; preds = %370, %363
  %367 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  %368 = load %struct.radix_mask*, %struct.radix_mask** %367, align 8
  store %struct.radix_mask* %368, %struct.radix_mask** %12, align 8
  %369 = icmp ne %struct.radix_mask* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %366
  %371 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %372 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %371, i32 0, i32 1
  store %struct.radix_mask** %372, %struct.radix_mask*** %14, align 8
  br label %366

373:                                              ; preds = %366
  %374 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %375 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %374, i32 0, i32 7
  %376 = load %struct.radix_mask*, %struct.radix_mask** %375, align 8
  %377 = load %struct.radix_mask**, %struct.radix_mask*** %14, align 8
  store %struct.radix_mask* %376, %struct.radix_mask** %377, align 8
  br label %428

378:                                              ; preds = %358
  %379 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %380 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %379, i32 0, i32 7
  %381 = load %struct.radix_mask*, %struct.radix_mask** %380, align 8
  store %struct.radix_mask* %381, %struct.radix_mask** %12, align 8
  br label %382

382:                                              ; preds = %413, %378
  %383 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %384 = icmp ne %struct.radix_mask* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %387 = icmp ne %struct.radix_node* %386, null
  br label %388

388:                                              ; preds = %385, %382
  %389 = phi i1 [ false, %382 ], [ %387, %385 ]
  br i1 %389, label %390, label %417

390:                                              ; preds = %388
  %391 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %392 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %393 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %392, i32 0, i32 7
  %394 = load %struct.radix_mask*, %struct.radix_mask** %393, align 8
  %395 = icmp eq %struct.radix_mask* %391, %394
  br i1 %395, label %396, label %412

396:                                              ; preds = %390
  %397 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %398 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %397, i32 0, i32 1
  %399 = load %struct.radix_mask*, %struct.radix_mask** %398, align 8
  store %struct.radix_mask* %399, %struct.radix_mask** %23, align 8
  %400 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %401 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %400, i32 0, i32 7
  store %struct.radix_mask* null, %struct.radix_mask** %401, align 8
  %402 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %403 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = add nsw i64 %404, -1
  store i64 %405, i64* %403, align 8
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %396
  %408 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %409 = call i32 @MKFree(%struct.radix_mask* %408)
  br label %410

410:                                              ; preds = %407, %396
  %411 = load %struct.radix_mask*, %struct.radix_mask** %23, align 8
  store %struct.radix_mask* %411, %struct.radix_mask** %12, align 8
  br label %412

412:                                              ; preds = %410, %390
  br label %413

413:                                              ; preds = %412
  %414 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %415 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %414, i32 0, i32 8
  %416 = load %struct.radix_node*, %struct.radix_node** %415, align 8
  store %struct.radix_node* %416, %struct.radix_node** %10, align 8
  br label %382

417:                                              ; preds = %388
  %418 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %419 = icmp ne %struct.radix_mask* %418, null
  br i1 %419, label %420, label %427

420:                                              ; preds = %417
  %421 = load i32, i32* @LOG_ERR, align 4
  %422 = load %struct.radix_mask*, %struct.radix_mask** %12, align 8
  %423 = ptrtoint %struct.radix_mask* %422 to i64
  %424 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %425 = ptrtoint %struct.radix_node* %424 to i64
  %426 = call i32 @syslog(i32 %421, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %423, i64 %425)
  br label %427

427:                                              ; preds = %420, %417
  br label %428

428:                                              ; preds = %427, %373
  br label %429

429:                                              ; preds = %428, %350
  %430 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %431 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %430, i64 1
  store %struct.radix_node* %431, %struct.radix_node** %10, align 8
  %432 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %433 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %434 = icmp ne %struct.radix_node* %432, %433
  br i1 %434, label %435, label %467

435:                                              ; preds = %429
  %436 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %437 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %438 = bitcast %struct.radix_node* %436 to i8*
  %439 = bitcast %struct.radix_node* %437 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %438, i8* align 8 %439, i64 80, i1 false)
  %440 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %441 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %442 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %441, i32 0, i32 5
  %443 = load %struct.radix_node*, %struct.radix_node** %442, align 8
  %444 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %443, i32 0, i32 6
  store %struct.radix_node* %440, %struct.radix_node** %444, align 8
  %445 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %446 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %447 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %446, i32 0, i32 4
  %448 = load %struct.radix_node*, %struct.radix_node** %447, align 8
  %449 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %448, i32 0, i32 6
  store %struct.radix_node* %445, %struct.radix_node** %449, align 8
  %450 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %451 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %450, i32 0, i32 6
  %452 = load %struct.radix_node*, %struct.radix_node** %451, align 8
  store %struct.radix_node* %452, %struct.radix_node** %9, align 8
  %453 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %454 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %453, i32 0, i32 5
  %455 = load %struct.radix_node*, %struct.radix_node** %454, align 8
  %456 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  %457 = icmp eq %struct.radix_node* %455, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %435
  %459 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %460 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %461 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %460, i32 0, i32 5
  store %struct.radix_node* %459, %struct.radix_node** %461, align 8
  br label %466

462:                                              ; preds = %435
  %463 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %464 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %465 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %464, i32 0, i32 4
  store %struct.radix_node* %463, %struct.radix_node** %465, align 8
  br label %466

466:                                              ; preds = %462, %458
  br label %467

467:                                              ; preds = %466, %429
  br label %468

468:                                              ; preds = %467, %318
  %469 = load i32, i32* @RNF_ACTIVE, align 4
  %470 = xor i32 %469, -1
  %471 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %472 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = and i32 %473, %470
  store i32 %474, i32* %472, align 4
  %475 = load i32, i32* @RNF_ACTIVE, align 4
  %476 = xor i32 %475, -1
  %477 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %478 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %477, i64 1
  %479 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = and i32 %480, %476
  store i32 %481, i32* %479, align 4
  %482 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %482, %struct.radix_node** %4, align 8
  br label %483

483:                                              ; preds = %468, %214, %204, %115, %83, %67, %58
  %484 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  ret %struct.radix_node* %484
}

declare dso_local %struct.radix_node* @rn_search(i8*, %struct.radix_node*) #1

declare dso_local i64 @Bcmp(i8*, i8*, i32) #1

declare dso_local %struct.radix_node* @rn_addmask(i8*, i32, i32) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @MKFree(%struct.radix_mask*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
