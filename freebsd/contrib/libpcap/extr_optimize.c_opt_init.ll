; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.valnode*, %struct.vmapinfo*, %struct.block**, %struct.edge**, i32*, i32*, i32*, i32*, %struct.block** }
%struct.valnode = type { i32 }
%struct.vmapinfo = type { i32 }
%struct.edge = type { i32, %struct.block*, i32* }
%struct.block = type { i32, %struct.edge, %struct.edge, i32*, i32* }
%struct.icode = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.icode*)* @opt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_init(i32* %0, %struct.TYPE_4__* %1, %struct.icode* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.icode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.block*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.icode* %2, %struct.icode** %6, align 8
  %12 = load %struct.icode*, %struct.icode** %6, align 8
  %13 = call i32 @unMarkAll(%struct.icode* %12)
  %14 = load %struct.icode*, %struct.icode** %6, align 8
  %15 = load %struct.icode*, %struct.icode** %6, align 8
  %16 = getelementptr inbounds %struct.icode, %struct.icode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @count_blocks(%struct.icode* %14, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @calloc(i32 %19, i32 8)
  %21 = inttoptr i64 %20 to %struct.block**
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  store %struct.block** %21, %struct.block*** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  %26 = load %struct.block**, %struct.block*** %25, align 8
  %27 = icmp eq %struct.block** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @bpf_error(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.icode*, %struct.icode** %6, align 8
  %33 = call i32 @unMarkAll(%struct.icode* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = load %struct.icode*, %struct.icode** %6, align 8
  %38 = load %struct.icode*, %struct.icode** %6, align 8
  %39 = getelementptr inbounds %struct.icode, %struct.icode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @number_blks_r(%struct.TYPE_4__* %36, %struct.icode* %37, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 2, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @calloc(i32 %50, i32 8)
  %52 = inttoptr i64 %51 to %struct.edge**
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 8
  store %struct.edge** %52, %struct.edge*** %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 8
  %57 = load %struct.edge**, %struct.edge*** %56, align 8
  %58 = icmp eq %struct.edge** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %31
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @bpf_error(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %31
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @calloc(i32 %65, i32 8)
  %67 = inttoptr i64 %66 to %struct.block**
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 13
  store %struct.block** %67, %struct.block*** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 13
  %72 = load %struct.block**, %struct.block*** %71, align 8
  %73 = icmp eq %struct.block** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @bpf_error(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %62
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 32
  %83 = add i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = udiv i64 %90, 32
  %92 = add i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 2, %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = add i64 %105, %114
  %116 = trunc i64 %115 to i32
  %117 = call i64 @malloc(i32 %116)
  %118 = inttoptr i64 %117 to i32*
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 12
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 12
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %77
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @bpf_error(i32* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %77
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 12
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %7, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 11
  store i32* %132, i32** %134, align 8
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %155, %128
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 7
  %143 = load %struct.block**, %struct.block*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.block*, %struct.block** %143, i64 %145
  %147 = load %struct.block*, %struct.block** %146, align 8
  %148 = getelementptr inbounds %struct.block, %struct.block* %147, i32 0, i32 4
  store i32* %140, i32** %148, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %7, align 8
  br label %155

155:                                              ; preds = %139
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %135

158:                                              ; preds = %135
  %159 = load i32*, i32** %7, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 10
  store i32* %159, i32** %161, align 8
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %182, %158
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %185

166:                                              ; preds = %162
  %167 = load i32*, i32** %7, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 7
  %170 = load %struct.block**, %struct.block*** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.block*, %struct.block** %170, i64 %172
  %174 = load %struct.block*, %struct.block** %173, align 8
  %175 = getelementptr inbounds %struct.block, %struct.block* %174, i32 0, i32 3
  store i32* %167, i32** %175, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %7, align 8
  br label %182

182:                                              ; preds = %166
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %162

185:                                              ; preds = %162
  %186 = load i32*, i32** %7, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 9
  store i32* %186, i32** %188, align 8
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %261, %185
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %264

193:                                              ; preds = %189
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 7
  %196 = load %struct.block**, %struct.block*** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.block*, %struct.block** %196, i64 %198
  %200 = load %struct.block*, %struct.block** %199, align 8
  store %struct.block* %200, %struct.block** %11, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = load %struct.block*, %struct.block** %11, align 8
  %203 = getelementptr inbounds %struct.block, %struct.block* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.edge, %struct.edge* %203, i32 0, i32 2
  store i32* %201, i32** %204, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %7, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = load %struct.block*, %struct.block** %11, align 8
  %213 = getelementptr inbounds %struct.block, %struct.block* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.edge, %struct.edge* %213, i32 0, i32 2
  store i32* %211, i32** %214, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %7, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.block*, %struct.block** %11, align 8
  %223 = getelementptr inbounds %struct.block, %struct.block* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.edge, %struct.edge* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = load %struct.block*, %struct.block** %11, align 8
  %226 = getelementptr inbounds %struct.block, %struct.block* %225, i32 0, i32 2
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 8
  %229 = load %struct.edge**, %struct.edge*** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.edge*, %struct.edge** %229, i64 %231
  store %struct.edge* %226, %struct.edge** %232, align 8
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %235, %236
  %238 = load %struct.block*, %struct.block** %11, align 8
  %239 = getelementptr inbounds %struct.block, %struct.block* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.edge, %struct.edge* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  %241 = load %struct.block*, %struct.block** %11, align 8
  %242 = getelementptr inbounds %struct.block, %struct.block* %241, i32 0, i32 1
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 8
  %245 = load %struct.edge**, %struct.edge*** %244, align 8
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.edge*, %struct.edge** %245, i64 %251
  store %struct.edge* %242, %struct.edge** %252, align 8
  %253 = load %struct.block*, %struct.block** %11, align 8
  %254 = load %struct.block*, %struct.block** %11, align 8
  %255 = getelementptr inbounds %struct.block, %struct.block* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.edge, %struct.edge* %255, i32 0, i32 1
  store %struct.block* %253, %struct.block** %256, align 8
  %257 = load %struct.block*, %struct.block** %11, align 8
  %258 = load %struct.block*, %struct.block** %11, align 8
  %259 = getelementptr inbounds %struct.block, %struct.block* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.edge, %struct.edge* %259, i32 0, i32 1
  store %struct.block* %257, %struct.block** %260, align 8
  br label %261

261:                                              ; preds = %193
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  br label %189

264:                                              ; preds = %189
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %265

265:                                              ; preds = %285, %264
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %9, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %288

269:                                              ; preds = %265
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 7
  %272 = load %struct.block**, %struct.block*** %271, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.block*, %struct.block** %272, i64 %274
  %276 = load %struct.block*, %struct.block** %275, align 8
  %277 = getelementptr inbounds %struct.block, %struct.block* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @slength(i32 %278)
  %280 = add nsw i64 %279, 1
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %282, %280
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %10, align 4
  br label %285

285:                                              ; preds = %269
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %265

288:                                              ; preds = %265
  %289 = load i32, i32* %10, align 4
  %290 = mul nsw i32 3, %289
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = call i64 @calloc(i32 %295, i32 4)
  %297 = inttoptr i64 %296 to %struct.vmapinfo*
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 6
  store %struct.vmapinfo* %297, %struct.vmapinfo** %299, align 8
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @calloc(i32 %302, i32 4)
  %304 = inttoptr i64 %303 to %struct.valnode*
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 5
  store %struct.valnode* %304, %struct.valnode** %306, align 8
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 6
  %309 = load %struct.vmapinfo*, %struct.vmapinfo** %308, align 8
  %310 = icmp eq %struct.vmapinfo* %309, null
  br i1 %310, label %316, label %311

311:                                              ; preds = %288
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 5
  %314 = load %struct.valnode*, %struct.valnode** %313, align 8
  %315 = icmp eq %struct.valnode* %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %311, %288
  %317 = load i32*, i32** %4, align 8
  %318 = call i32 @bpf_error(i32* %317, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %319

319:                                              ; preds = %316, %311
  ret void
}

declare dso_local i32 @unMarkAll(%struct.icode*) #1

declare dso_local i32 @count_blocks(%struct.icode*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @bpf_error(i32*, i8*) #1

declare dso_local i32 @number_blks_r(%struct.TYPE_4__*, %struct.icode*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @slength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
