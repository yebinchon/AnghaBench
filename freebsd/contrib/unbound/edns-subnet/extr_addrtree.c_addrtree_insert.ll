; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_addrtree_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_addrtree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrtree = type { i64, i32, i32, i64 (i8*)*, %struct.addrnode* }
%struct.addrnode = type { i64, i64, i8*, %struct.addredge** }
%struct.addredge = type { i64, i32, %struct.addrnode*, i32*, %struct.addrnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addrtree_insert(%struct.addrtree* %0, i32* %1, i64 %2, i64 %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.addrtree*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.addrnode*, align 8
  %16 = alloca %struct.addrnode*, align 8
  %17 = alloca %struct.addredge*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.addrtree* %0, %struct.addrtree** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %21 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %22 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %21, i32 0, i32 4
  %23 = load %struct.addrnode*, %struct.addrnode** %22, align 8
  store %struct.addrnode* %23, %struct.addrnode** %16, align 8
  %24 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %25 = icmp ne %struct.addrnode* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @log_assert(i32 %26)
  %28 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %29 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %7
  %34 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %35 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %33, %7
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %37
  store i64 0, i64* %20, align 8
  br label %44

44:                                               ; preds = %43, %182
  %45 = load i64, i64* %20, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp sle i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @log_assert(i32 %48)
  %50 = load i64, i64* %20, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %44
  %54 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %55 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %56 = call i32 @clean_node(%struct.addrtree* %54, %struct.addrnode* %55)
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %59 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %62 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %65 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %67 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %66, i32 0, i32 3
  %68 = load i64 (i8*)*, i64 (i8*)** %67, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i64 %68(i8* %69)
  %71 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %72 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  br label %320

77:                                               ; preds = %44
  %78 = load i32*, i32** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %20, align 8
  %81 = call i32 @getbit(i32* %78, i64 %79, i64 %80)
  store i32 %81, i32* %18, align 4
  %82 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %83 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %82, i32 0, i32 3
  %84 = load %struct.addredge**, %struct.addredge*** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.addredge*, %struct.addredge** %84, i64 %86
  %88 = load %struct.addredge*, %struct.addredge** %87, align 8
  store %struct.addredge* %88, %struct.addredge** %17, align 8
  br label %89

89:                                               ; preds = %108, %77
  %90 = load %struct.addredge*, %struct.addredge** %17, align 8
  %91 = icmp ne %struct.addredge* %90, null
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  %93 = load %struct.addredge*, %struct.addredge** %17, align 8
  %94 = getelementptr inbounds %struct.addredge, %struct.addredge* %93, i32 0, i32 4
  %95 = load %struct.addrnode*, %struct.addrnode** %94, align 8
  %96 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.addredge*, %struct.addredge** %17, align 8
  %101 = getelementptr inbounds %struct.addredge, %struct.addredge* %100, i32 0, i32 4
  %102 = load %struct.addrnode*, %struct.addrnode** %101, align 8
  %103 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99, %92
  br label %121

108:                                              ; preds = %99
  %109 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %110 = load %struct.addredge*, %struct.addredge** %17, align 8
  %111 = getelementptr inbounds %struct.addredge, %struct.addredge* %110, i32 0, i32 4
  %112 = load %struct.addrnode*, %struct.addrnode** %111, align 8
  %113 = call i32 @purge_node(%struct.addrtree* %109, %struct.addrnode* %112)
  %114 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %115 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %114, i32 0, i32 3
  %116 = load %struct.addredge**, %struct.addredge*** %115, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.addredge*, %struct.addredge** %116, i64 %118
  %120 = load %struct.addredge*, %struct.addredge** %119, align 8
  store %struct.addredge* %120, %struct.addredge** %17, align 8
  br label %89

121:                                              ; preds = %107, %89
  %122 = load %struct.addredge*, %struct.addredge** %17, align 8
  %123 = icmp ne %struct.addredge* %122, null
  br i1 %123, label %166, label %124

124:                                              ; preds = %121
  %125 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call %struct.addrnode* @node_create(%struct.addrtree* %125, i8* %126, i64 %127, i64 %128)
  store %struct.addrnode* %129, %struct.addrnode** %15, align 8
  %130 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %131 = icmp ne %struct.addrnode* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  br label %320

133:                                              ; preds = %124
  %134 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @edge_create(%struct.addrnode* %134, i32* %135, i64 %136, %struct.addrnode* %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %133
  %142 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %143 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %144 = call i32 @clean_node(%struct.addrtree* %142, %struct.addrnode* %143)
  %145 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %146 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %150 = call i32 @free(%struct.addrnode* %149)
  br label %320

151:                                              ; preds = %133
  %152 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %153 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %154 = call i64 @node_size(%struct.addrtree* %152, %struct.addrnode* %153)
  %155 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %156 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 8
  %161 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %162 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %163 = call i32 @lru_push(%struct.addrtree* %161, %struct.addrnode* %162)
  %164 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %165 = call i32 @lru_cleanup(%struct.addrtree* %164)
  br label %320

166:                                              ; preds = %121
  %167 = load %struct.addredge*, %struct.addredge** %17, align 8
  %168 = getelementptr inbounds %struct.addredge, %struct.addredge* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.addredge*, %struct.addredge** %17, align 8
  %171 = getelementptr inbounds %struct.addredge, %struct.addredge* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* %20, align 8
  %176 = call i64 @bits_common(i32* %169, i64 %172, i32* %173, i64 %174, i64 %175)
  store i64 %176, i64* %19, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load %struct.addredge*, %struct.addredge** %17, align 8
  %179 = getelementptr inbounds %struct.addredge, %struct.addredge* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %177, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %166
  %183 = load i64, i64* %11, align 8
  %184 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %185 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.addredge*, %struct.addredge** %17, align 8
  %187 = getelementptr inbounds %struct.addredge, %struct.addredge* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %20, align 8
  %189 = load %struct.addredge*, %struct.addredge** %17, align 8
  %190 = getelementptr inbounds %struct.addredge, %struct.addredge* %189, i32 0, i32 4
  %191 = load %struct.addrnode*, %struct.addrnode** %190, align 8
  store %struct.addrnode* %191, %struct.addrnode** %16, align 8
  br label %44

192:                                              ; preds = %166
  %193 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %194 = call %struct.addrnode* @node_create(%struct.addrtree* %193, i8* null, i64 0, i64 0)
  store %struct.addrnode* %194, %struct.addrnode** %15, align 8
  %195 = icmp ne %struct.addrnode* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  br label %320

197:                                              ; preds = %192
  %198 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %199 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %198, i32 0, i32 3
  %200 = load %struct.addredge**, %struct.addredge*** %199, align 8
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.addredge*, %struct.addredge** %200, i64 %202
  store %struct.addredge* null, %struct.addredge** %203, align 8
  %204 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = load i64, i64* %19, align 8
  %207 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %208 = load i32, i32* %18, align 4
  %209 = call i32 @edge_create(%struct.addrnode* %204, i32* %205, i64 %206, %struct.addrnode* %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %228, label %211

211:                                              ; preds = %197
  %212 = load %struct.addredge*, %struct.addredge** %17, align 8
  %213 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %214 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %213, i32 0, i32 3
  %215 = load %struct.addredge**, %struct.addredge*** %214, align 8
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.addredge*, %struct.addredge** %215, i64 %217
  store %struct.addredge* %212, %struct.addredge** %218, align 8
  %219 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %220 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %221 = call i32 @clean_node(%struct.addrtree* %219, %struct.addrnode* %220)
  %222 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %223 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %223, align 4
  %226 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %227 = call i32 @free(%struct.addrnode* %226)
  br label %320

228:                                              ; preds = %197
  %229 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %230 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %231 = call i32 @lru_push(%struct.addrtree* %229, %struct.addrnode* %230)
  %232 = load %struct.addredge*, %struct.addredge** %17, align 8
  %233 = getelementptr inbounds %struct.addredge, %struct.addredge* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.addredge*, %struct.addredge** %17, align 8
  %236 = getelementptr inbounds %struct.addredge, %struct.addredge* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %19, align 8
  %239 = call i32 @getbit(i32* %234, i64 %237, i64 %238)
  store i32 %239, i32* %18, align 4
  %240 = load %struct.addredge*, %struct.addredge** %17, align 8
  %241 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %242 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %241, i32 0, i32 3
  %243 = load %struct.addredge**, %struct.addredge*** %242, align 8
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.addredge*, %struct.addredge** %243, i64 %245
  store %struct.addredge* %240, %struct.addredge** %246, align 8
  %247 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %248 = load %struct.addredge*, %struct.addredge** %17, align 8
  %249 = getelementptr inbounds %struct.addredge, %struct.addredge* %248, i32 0, i32 2
  store %struct.addrnode* %247, %struct.addrnode** %249, align 8
  %250 = load i32, i32* %18, align 4
  %251 = load %struct.addredge*, %struct.addredge** %17, align 8
  %252 = getelementptr inbounds %struct.addredge, %struct.addredge* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load i64, i64* %19, align 8
  %254 = load i64, i64* %10, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %228
  %257 = load i8*, i8** %12, align 8
  %258 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %259 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  %260 = load i64, i64* %11, align 8
  %261 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %262 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %261, i32 0, i32 1
  store i64 %260, i64* %262, align 8
  %263 = load i64, i64* %13, align 8
  %264 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %265 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  br label %266

266:                                              ; preds = %256, %228
  %267 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %268 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %269 = call i64 @node_size(%struct.addrtree* %267, %struct.addrnode* %268)
  %270 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %271 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %269
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 8
  %276 = load i64, i64* %19, align 8
  %277 = load i64, i64* %10, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %317

279:                                              ; preds = %266
  %280 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  store %struct.addrnode* %280, %struct.addrnode** %16, align 8
  %281 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %282 = load i8*, i8** %12, align 8
  %283 = load i64, i64* %11, align 8
  %284 = load i64, i64* %13, align 8
  %285 = call %struct.addrnode* @node_create(%struct.addrtree* %281, i8* %282, i64 %283, i64 %284)
  store %struct.addrnode* %285, %struct.addrnode** %15, align 8
  %286 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %287 = load i32*, i32** %9, align 8
  %288 = load i64, i64* %10, align 8
  %289 = load %struct.addrnode*, %struct.addrnode** %16, align 8
  %290 = load i32, i32* %18, align 4
  %291 = xor i32 %290, 1
  %292 = call i32 @edge_create(%struct.addrnode* %286, i32* %287, i64 %288, %struct.addrnode* %289, i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %304, label %294

294:                                              ; preds = %279
  %295 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %296 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %297 = call i32 @clean_node(%struct.addrtree* %295, %struct.addrnode* %296)
  %298 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %299 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %299, align 4
  %302 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %303 = call i32 @free(%struct.addrnode* %302)
  br label %320

304:                                              ; preds = %279
  %305 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %306 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %307 = call i64 @node_size(%struct.addrtree* %305, %struct.addrnode* %306)
  %308 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %309 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %307
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 8
  %314 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %315 = load %struct.addrnode*, %struct.addrnode** %15, align 8
  %316 = call i32 @lru_push(%struct.addrtree* %314, %struct.addrnode* %315)
  br label %317

317:                                              ; preds = %304, %266
  %318 = load %struct.addrtree*, %struct.addrtree** %8, align 8
  %319 = call i32 @lru_cleanup(%struct.addrtree* %318)
  br label %320

320:                                              ; preds = %317, %294, %211, %196, %151, %141, %132, %53
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @clean_node(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local i32 @getbit(i32*, i64, i64) #1

declare dso_local i32 @purge_node(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local %struct.addrnode* @node_create(%struct.addrtree*, i8*, i64, i64) #1

declare dso_local i32 @edge_create(%struct.addrnode*, i32*, i64, %struct.addrnode*, i32) #1

declare dso_local i32 @free(%struct.addrnode*) #1

declare dso_local i64 @node_size(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local i32 @lru_push(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local i32 @lru_cleanup(%struct.addrtree*) #1

declare dso_local i64 @bits_common(i32*, i64, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
