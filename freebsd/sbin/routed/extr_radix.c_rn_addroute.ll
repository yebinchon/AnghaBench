; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_addroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_addroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i16, i64, i64, i32, i64, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, i64, i32 }
%struct.radix_node_head = type { %struct.radix_node* }
%struct.radix_mask = type { i16, i32, i64, i32, %struct.TYPE_2__*, %struct.radix_mask* }
%struct.TYPE_2__ = type { i64 }

@RNF_ACTIVE = common dso_local global i32 0, align 4
@RNF_NORMAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Non-unique normal route, mask not entered\00", align 1
@rn_clist = common dso_local global %struct.radix_node* null, align 8
@rn_nodenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, i8*, %struct.radix_node_head*, %struct.radix_node*)* @rn_addroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @rn_addroute(i8* %0, i8* %1, %struct.radix_node_head* %2, %struct.radix_node* %3) #0 {
  %5 = alloca %struct.radix_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.radix_node_head*, align 8
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.radix_node*, align 8
  %13 = alloca %struct.radix_node*, align 8
  %14 = alloca %struct.radix_node*, align 8
  %15 = alloca %struct.radix_node*, align 8
  %16 = alloca %struct.radix_node*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.radix_mask*, align 8
  %22 = alloca %struct.radix_mask**, align 8
  %23 = alloca %struct.radix_node*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.radix_node_head* %2, %struct.radix_node_head** %8, align 8
  store %struct.radix_node* %3, %struct.radix_node** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %11, align 8
  store %struct.radix_node* null, %struct.radix_node** %13, align 8
  %28 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %29 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %28, i32 0, i32 0
  %30 = load %struct.radix_node*, %struct.radix_node** %29, align 8
  store %struct.radix_node* %30, %struct.radix_node** %16, align 8
  store i16 0, i16* %17, align 2
  store i16 0, i16* %18, align 2
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %4
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %36 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.radix_node* @rn_addmask(i64 %34, i32 0, i32 %37)
  store %struct.radix_node* %38, %struct.radix_node** %13, align 8
  %39 = icmp eq %struct.radix_node* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store %struct.radix_node* null, %struct.radix_node** %5, align 8
  br label %417

41:                                               ; preds = %33
  %42 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %43 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 8
  store i16 %44, i16* %18, align 2
  %45 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %46 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %45, i32 0, i32 0
  %47 = load i16, i16* %46, align 8
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 -1, %48
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %17, align 2
  %51 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %52 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %41, %4
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %57 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %58 = call %struct.radix_node* @rn_insert(i64 %55, %struct.radix_node_head* %56, i32* %19, %struct.radix_node* %57)
  store %struct.radix_node* %58, %struct.radix_node** %14, align 8
  store %struct.radix_node* %58, %struct.radix_node** %15, align 8
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %163

61:                                               ; preds = %54
  %62 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %62, %struct.radix_node** %12, align 8
  br label %63

63:                                               ; preds = %105, %61
  %64 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %65 = icmp ne %struct.radix_node* %64, null
  br i1 %65, label %66, label %110

66:                                               ; preds = %63
  %67 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %68 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store %struct.radix_node* null, %struct.radix_node** %5, align 8
  br label %417

73:                                               ; preds = %66
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %73
  %77 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %78 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load i16, i16* %18, align 2
  %83 = sext i16 %82 to i32
  %84 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %85 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %84, i32 0, i32 0
  %86 = load i16, i16* %85, align 8
  %87 = sext i16 %86 to i32
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %103, label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %92 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @rn_refines(i64 %90, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %99 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @rn_lexobetter(i64 %97, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %89, %81, %73
  br label %110

104:                                              ; preds = %96, %76
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %106, %struct.radix_node** %12, align 8
  %107 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %108 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %107, i32 0, i32 6
  %109 = load %struct.radix_node*, %struct.radix_node** %108, align 8
  store %struct.radix_node* %109, %struct.radix_node** %14, align 8
  br label %63

110:                                              ; preds = %103, %63
  %111 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %112 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  %113 = icmp eq %struct.radix_node* %111, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %110
  %115 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  store %struct.radix_node* %115, %struct.radix_node** %23, align 8
  %116 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %117 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  store %struct.radix_node* %117, %struct.radix_node** %14, align 8
  %118 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %117, i32 0, i32 6
  store %struct.radix_node* %116, %struct.radix_node** %118, align 8
  %119 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %120 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %123 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %125 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %124, i32 0, i32 5
  %126 = load %struct.radix_node*, %struct.radix_node** %125, align 8
  store %struct.radix_node* %126, %struct.radix_node** %13, align 8
  %127 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %128 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %127, i32 0, i32 5
  store %struct.radix_node* %126, %struct.radix_node** %128, align 8
  %129 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %130 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %129, i32 0, i32 8
  %131 = load %struct.radix_node*, %struct.radix_node** %130, align 8
  %132 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %133 = icmp eq %struct.radix_node* %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %114
  %135 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %136 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %137 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %136, i32 0, i32 8
  store %struct.radix_node* %135, %struct.radix_node** %137, align 8
  br label %142

138:                                              ; preds = %114
  %139 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %140 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %141 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %140, i32 0, i32 7
  store %struct.radix_node* %139, %struct.radix_node** %141, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %143, %struct.radix_node** %15, align 8
  %144 = load %struct.radix_node*, %struct.radix_node** %23, align 8
  store %struct.radix_node* %144, %struct.radix_node** %13, align 8
  br label %154

145:                                              ; preds = %110
  %146 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %147 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %146, i32 0, i32 6
  %148 = load %struct.radix_node*, %struct.radix_node** %147, align 8
  %149 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  store %struct.radix_node* %149, %struct.radix_node** %14, align 8
  %150 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %149, i32 0, i32 6
  store %struct.radix_node* %148, %struct.radix_node** %150, align 8
  %151 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %152 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %153 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %152, i32 0, i32 6
  store %struct.radix_node* %151, %struct.radix_node** %153, align 8
  br label %154

154:                                              ; preds = %145, %142
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %157 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %159 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %158, i32 0, i32 0
  store i16 -1, i16* %159, align 8
  %160 = load i32, i32* @RNF_ACTIVE, align 4
  %161 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %162 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %154, %54
  %164 = load i64, i64* %11, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = load i64, i64* %11, align 8
  %168 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %169 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %171 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %170, i32 0, i32 0
  %172 = load i16, i16* %171, align 8
  %173 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %174 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %173, i32 0, i32 0
  store i16 %172, i16* %174, align 8
  %175 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %176 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @RNF_NORMAL, align 4
  %179 = and i32 %177, %178
  %180 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %181 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %166, %163
  %185 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  %186 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %185, i32 0, i32 5
  %187 = load %struct.radix_node*, %struct.radix_node** %186, align 8
  store %struct.radix_node* %187, %struct.radix_node** %12, align 8
  %188 = load i32, i32* %19, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %291

191:                                              ; preds = %184
  %192 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %193 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %192, i32 0, i32 0
  %194 = load i16, i16* %193, align 8
  %195 = sext i16 %194 to i32
  %196 = sub nsw i32 -1, %195
  %197 = trunc i32 %196 to i16
  store i16 %197, i16* %18, align 2
  %198 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %199 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %198, i32 0, i32 7
  %200 = load %struct.radix_node*, %struct.radix_node** %199, align 8
  %201 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  %202 = icmp eq %struct.radix_node* %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %191
  %204 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %205 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %204, i32 0, i32 8
  %206 = load %struct.radix_node*, %struct.radix_node** %205, align 8
  store %struct.radix_node* %206, %struct.radix_node** %13, align 8
  br label %211

207:                                              ; preds = %191
  %208 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %209 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %208, i32 0, i32 7
  %210 = load %struct.radix_node*, %struct.radix_node** %209, align 8
  store %struct.radix_node* %210, %struct.radix_node** %13, align 8
  br label %211

211:                                              ; preds = %207, %203
  %212 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %213 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %212, i32 0, i32 0
  %214 = load i16, i16* %213, align 8
  %215 = sext i16 %214 to i32
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %257

217:                                              ; preds = %211
  %218 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %219 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %218, i32 0, i32 4
  %220 = bitcast i64* %219 to %struct.radix_mask**
  store %struct.radix_mask** %220, %struct.radix_mask*** %22, align 8
  br label %221

221:                                              ; preds = %252, %217
  %222 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %223 = icmp ne %struct.radix_node* %222, null
  br i1 %223, label %224, label %256

224:                                              ; preds = %221
  %225 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %226 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %224
  %230 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %231 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %230, i32 0, i32 0
  %232 = load i16, i16* %231, align 8
  %233 = sext i16 %232 to i32
  %234 = load i16, i16* %18, align 2
  %235 = sext i16 %234 to i32
  %236 = icmp sge i32 %233, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %229
  %238 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %239 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %244 = call %struct.radix_mask* @rn_new_radix_mask(%struct.radix_node* %243, %struct.radix_mask* null)
  store %struct.radix_mask* %244, %struct.radix_mask** %21, align 8
  %245 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  store %struct.radix_mask* %244, %struct.radix_mask** %245, align 8
  %246 = icmp ne %struct.radix_mask* %244, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %249 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %248, i32 0, i32 5
  store %struct.radix_mask** %249, %struct.radix_mask*** %22, align 8
  br label %250

250:                                              ; preds = %247, %242
  br label %251

251:                                              ; preds = %250, %237, %229, %224
  br label %252

252:                                              ; preds = %251
  %253 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %254 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %253, i32 0, i32 6
  %255 = load %struct.radix_node*, %struct.radix_node** %254, align 8
  store %struct.radix_node* %255, %struct.radix_node** %13, align 8
  br label %221

256:                                              ; preds = %221
  br label %290

257:                                              ; preds = %211
  %258 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %259 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %289

262:                                              ; preds = %257
  %263 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %264 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %263, i32 0, i32 4
  %265 = bitcast i64* %264 to %struct.radix_mask**
  store %struct.radix_mask** %265, %struct.radix_mask*** %22, align 8
  br label %266

266:                                              ; preds = %280, %262
  %267 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  %268 = load %struct.radix_mask*, %struct.radix_mask** %267, align 8
  store %struct.radix_mask* %268, %struct.radix_mask** %21, align 8
  %269 = icmp ne %struct.radix_mask* %268, null
  br i1 %269, label %270, label %283

270:                                              ; preds = %266
  %271 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %272 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %271, i32 0, i32 0
  %273 = load i16, i16* %272, align 8
  %274 = sext i16 %273 to i32
  %275 = load i16, i16* %18, align 2
  %276 = sext i16 %275 to i32
  %277 = icmp sge i32 %274, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %270
  br label %283

279:                                              ; preds = %270
  br label %280

280:                                              ; preds = %279
  %281 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %282 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %281, i32 0, i32 5
  store %struct.radix_mask** %282, %struct.radix_mask*** %22, align 8
  br label %266

283:                                              ; preds = %278, %266
  %284 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %285 = ptrtoint %struct.radix_mask* %284 to i64
  %286 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %287 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %286, i32 0, i32 4
  store i64 %285, i64* %287, align 8
  %288 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  store %struct.radix_mask* null, %struct.radix_mask** %288, align 8
  br label %289

289:                                              ; preds = %283, %257
  br label %290

290:                                              ; preds = %289, %256
  br label %291

291:                                              ; preds = %290, %190
  %292 = load i64, i64* %11, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %291
  %295 = load i16, i16* %17, align 2
  %296 = sext i16 %295 to i32
  %297 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %298 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %297, i32 0, i32 0
  %299 = load i16, i16* %298, align 8
  %300 = sext i16 %299 to i32
  %301 = icmp sgt i32 %296, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %294, %291
  %303 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %303, %struct.radix_node** %5, align 8
  br label %417

304:                                              ; preds = %294
  %305 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %306 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %305, i32 0, i32 0
  %307 = load i16, i16* %306, align 8
  store i16 %307, i16* %18, align 2
  br label %308

308:                                              ; preds = %325, %304
  %309 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  store %struct.radix_node* %309, %struct.radix_node** %13, align 8
  %310 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %311 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %310, i32 0, i32 5
  %312 = load %struct.radix_node*, %struct.radix_node** %311, align 8
  store %struct.radix_node* %312, %struct.radix_node** %12, align 8
  br label %313

313:                                              ; preds = %308
  %314 = load i16, i16* %17, align 2
  %315 = sext i16 %314 to i32
  %316 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %317 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %316, i32 0, i32 0
  %318 = load i16, i16* %317, align 8
  %319 = sext i16 %318 to i32
  %320 = icmp sle i32 %315, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %313
  %322 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %323 = load %struct.radix_node*, %struct.radix_node** %16, align 8
  %324 = icmp ne %struct.radix_node* %322, %323
  br label %325

325:                                              ; preds = %321, %313
  %326 = phi i1 [ false, %313 ], [ %324, %321 ]
  br i1 %326, label %308, label %327

327:                                              ; preds = %325
  %328 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %329 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %328, i32 0, i32 4
  %330 = bitcast i64* %329 to %struct.radix_mask**
  store %struct.radix_mask** %330, %struct.radix_mask*** %22, align 8
  br label %331

331:                                              ; preds = %407, %327
  %332 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  %333 = load %struct.radix_mask*, %struct.radix_mask** %332, align 8
  store %struct.radix_mask* %333, %struct.radix_mask** %21, align 8
  %334 = icmp ne %struct.radix_mask* %333, null
  br i1 %334, label %335, label %410

335:                                              ; preds = %331
  %336 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %337 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %336, i32 0, i32 0
  %338 = load i16, i16* %337, align 8
  %339 = sext i16 %338 to i32
  %340 = load i16, i16* %18, align 2
  %341 = sext i16 %340 to i32
  %342 = icmp slt i32 %339, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %335
  br label %407

344:                                              ; preds = %335
  %345 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %346 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %345, i32 0, i32 0
  %347 = load i16, i16* %346, align 8
  %348 = sext i16 %347 to i32
  %349 = load i16, i16* %18, align 2
  %350 = sext i16 %349 to i32
  %351 = icmp sgt i32 %348, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %344
  br label %410

353:                                              ; preds = %344
  %354 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %355 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @RNF_NORMAL, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %377

360:                                              ; preds = %353
  %361 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %362 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %361, i32 0, i32 4
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %20, align 8
  %366 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %367 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @RNF_NORMAL, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %360
  %373 = load i32, i32* @LOG_ERR, align 4
  %374 = call i32 @log(i32 %373, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %375 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %375, %struct.radix_node** %5, align 8
  br label %417

376:                                              ; preds = %360
  br label %381

377:                                              ; preds = %353
  %378 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %379 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %20, align 8
  br label %381

381:                                              ; preds = %377, %376
  %382 = load i64, i64* %20, align 8
  %383 = load i64, i64* %11, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %395

385:                                              ; preds = %381
  %386 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %387 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 8
  %390 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %391 = ptrtoint %struct.radix_mask* %390 to i64
  %392 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %393 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %392, i32 0, i32 4
  store i64 %391, i64* %393, align 8
  %394 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %394, %struct.radix_node** %5, align 8
  br label %417

395:                                              ; preds = %381
  %396 = load i64, i64* %11, align 8
  %397 = load i64, i64* %20, align 8
  %398 = call i64 @rn_refines(i64 %396, i64 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %405, label %400

400:                                              ; preds = %395
  %401 = load i64, i64* %11, align 8
  %402 = load i64, i64* %20, align 8
  %403 = call i64 @rn_lexobetter(i64 %401, i64 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %400, %395
  br label %410

406:                                              ; preds = %400
  br label %407

407:                                              ; preds = %406, %343
  %408 = load %struct.radix_mask*, %struct.radix_mask** %21, align 8
  %409 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %408, i32 0, i32 5
  store %struct.radix_mask** %409, %struct.radix_mask*** %22, align 8
  br label %331

410:                                              ; preds = %405, %352, %331
  %411 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  %412 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  %413 = load %struct.radix_mask*, %struct.radix_mask** %412, align 8
  %414 = call %struct.radix_mask* @rn_new_radix_mask(%struct.radix_node* %411, %struct.radix_mask* %413)
  %415 = load %struct.radix_mask**, %struct.radix_mask*** %22, align 8
  store %struct.radix_mask* %414, %struct.radix_mask** %415, align 8
  %416 = load %struct.radix_node*, %struct.radix_node** %14, align 8
  store %struct.radix_node* %416, %struct.radix_node** %5, align 8
  br label %417

417:                                              ; preds = %410, %385, %372, %302, %72, %40
  %418 = load %struct.radix_node*, %struct.radix_node** %5, align 8
  ret %struct.radix_node* %418
}

declare dso_local %struct.radix_node* @rn_addmask(i64, i32, i32) #1

declare dso_local %struct.radix_node* @rn_insert(i64, %struct.radix_node_head*, i32*, %struct.radix_node*) #1

declare dso_local i64 @rn_refines(i64, i64) #1

declare dso_local i64 @rn_lexobetter(i64, i64) #1

declare dso_local %struct.radix_mask* @rn_new_radix_mask(%struct.radix_node*, %struct.radix_mask*) #1

declare dso_local i32 @log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
