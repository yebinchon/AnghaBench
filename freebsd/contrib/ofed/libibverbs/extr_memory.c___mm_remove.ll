; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { i32, %struct.ibv_mem_node*, %struct.ibv_mem_node*, %struct.ibv_mem_node* }

@mm_root = common dso_local global %struct.ibv_mem_node* null, align 8
@IBV_RED = common dso_local global i32 0, align 4
@IBV_BLACK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_mem_node*)* @__mm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mm_remove(%struct.ibv_mem_node* %0) #0 {
  %2 = alloca %struct.ibv_mem_node*, align 8
  %3 = alloca %struct.ibv_mem_node*, align 8
  %4 = alloca %struct.ibv_mem_node*, align 8
  %5 = alloca %struct.ibv_mem_node*, align 8
  %6 = alloca %struct.ibv_mem_node*, align 8
  %7 = alloca i32, align 4
  store %struct.ibv_mem_node* %0, %struct.ibv_mem_node** %2, align 8
  %8 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %9 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %8, i32 0, i32 1
  %10 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %9, align 8
  %11 = icmp ne %struct.ibv_mem_node* %10, null
  br i1 %11, label %12, label %123

12:                                               ; preds = %1
  %13 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %14 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %13, i32 0, i32 2
  %15 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %14, align 8
  %16 = icmp ne %struct.ibv_mem_node* %15, null
  br i1 %16, label %17, label %123

17:                                               ; preds = %12
  %18 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %19 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %18, i32 0, i32 1
  %20 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %19, align 8
  store %struct.ibv_mem_node* %20, %struct.ibv_mem_node** %6, align 8
  br label %21

21:                                               ; preds = %26, %17
  %22 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %23 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %22, i32 0, i32 2
  %24 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %23, align 8
  %25 = icmp ne %struct.ibv_mem_node* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %28 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %27, i32 0, i32 2
  %29 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %28, align 8
  store %struct.ibv_mem_node* %29, %struct.ibv_mem_node** %6, align 8
  br label %21

30:                                               ; preds = %21
  %31 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %32 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %35 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %34, i32 0, i32 1
  %36 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %35, align 8
  store %struct.ibv_mem_node* %36, %struct.ibv_mem_node** %3, align 8
  %37 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %38 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %41 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %43 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %42, i32 0, i32 3
  %44 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %43, align 8
  %45 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %46 = icmp ne %struct.ibv_mem_node* %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %30
  %48 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %49 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %48, i32 0, i32 3
  %50 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %49, align 8
  store %struct.ibv_mem_node* %50, %struct.ibv_mem_node** %4, align 8
  %51 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %52 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %51, i32 0, i32 1
  %53 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %52, align 8
  %54 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %55 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %54, i32 0, i32 2
  store %struct.ibv_mem_node* %53, %struct.ibv_mem_node** %55, align 8
  %56 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %57 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %56, i32 0, i32 1
  %58 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %57, align 8
  %59 = icmp ne %struct.ibv_mem_node* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %47
  %61 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %62 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %63 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %62, i32 0, i32 1
  %64 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %63, align 8
  %65 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %64, i32 0, i32 3
  store %struct.ibv_mem_node* %61, %struct.ibv_mem_node** %65, align 8
  br label %66

66:                                               ; preds = %60, %47
  %67 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %68 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %67, i32 0, i32 1
  %69 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %68, align 8
  %70 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %71 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %70, i32 0, i32 1
  store %struct.ibv_mem_node* %69, %struct.ibv_mem_node** %71, align 8
  %72 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %73 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %74 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %73, i32 0, i32 1
  %75 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %74, align 8
  %76 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %75, i32 0, i32 3
  store %struct.ibv_mem_node* %72, %struct.ibv_mem_node** %76, align 8
  br label %79

77:                                               ; preds = %30
  %78 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  store %struct.ibv_mem_node* %78, %struct.ibv_mem_node** %4, align 8
  br label %79

79:                                               ; preds = %77, %66
  %80 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %81 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %80, i32 0, i32 2
  %82 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %81, align 8
  %83 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %84 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %83, i32 0, i32 2
  store %struct.ibv_mem_node* %82, %struct.ibv_mem_node** %84, align 8
  %85 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %86 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %87 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %86, i32 0, i32 2
  %88 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %87, align 8
  %89 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %88, i32 0, i32 3
  store %struct.ibv_mem_node* %85, %struct.ibv_mem_node** %89, align 8
  %90 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %91 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %90, i32 0, i32 3
  %92 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %91, align 8
  %93 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %94 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %93, i32 0, i32 3
  store %struct.ibv_mem_node* %92, %struct.ibv_mem_node** %94, align 8
  %95 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %96 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %95, i32 0, i32 3
  %97 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %96, align 8
  %98 = icmp ne %struct.ibv_mem_node* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %79
  %100 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %101 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %100, i32 0, i32 3
  %102 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %101, align 8
  %103 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %102, i32 0, i32 1
  %104 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %103, align 8
  %105 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %106 = icmp eq %struct.ibv_mem_node* %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %109 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %110 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %109, i32 0, i32 3
  %111 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %110, align 8
  %112 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %111, i32 0, i32 1
  store %struct.ibv_mem_node* %108, %struct.ibv_mem_node** %112, align 8
  br label %119

113:                                              ; preds = %99
  %114 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  %115 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %116 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %115, i32 0, i32 3
  %117 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %116, align 8
  %118 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %117, i32 0, i32 2
  store %struct.ibv_mem_node* %114, %struct.ibv_mem_node** %118, align 8
  br label %119

119:                                              ; preds = %113, %107
  br label %122

120:                                              ; preds = %79
  %121 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %6, align 8
  store %struct.ibv_mem_node* %121, %struct.ibv_mem_node** @mm_root, align 8
  br label %122

122:                                              ; preds = %120, %119
  br label %171

123:                                              ; preds = %12, %1
  %124 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %125 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %7, align 4
  %127 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %128 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %127, i32 0, i32 1
  %129 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %128, align 8
  %130 = icmp ne %struct.ibv_mem_node* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %133 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %132, i32 0, i32 1
  %134 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %133, align 8
  br label %139

135:                                              ; preds = %123
  %136 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %137 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %136, i32 0, i32 2
  %138 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %137, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi %struct.ibv_mem_node* [ %134, %131 ], [ %138, %135 ]
  store %struct.ibv_mem_node* %140, %struct.ibv_mem_node** %3, align 8
  %141 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %142 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %141, i32 0, i32 3
  %143 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %142, align 8
  store %struct.ibv_mem_node* %143, %struct.ibv_mem_node** %4, align 8
  %144 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %145 = icmp ne %struct.ibv_mem_node* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %148 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %149 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %148, i32 0, i32 3
  store %struct.ibv_mem_node* %147, %struct.ibv_mem_node** %149, align 8
  br label %150

150:                                              ; preds = %146, %139
  %151 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %152 = icmp ne %struct.ibv_mem_node* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %155 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %154, i32 0, i32 1
  %156 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %155, align 8
  %157 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %158 = icmp eq %struct.ibv_mem_node* %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %161 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %162 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %161, i32 0, i32 1
  store %struct.ibv_mem_node* %160, %struct.ibv_mem_node** %162, align 8
  br label %167

163:                                              ; preds = %153
  %164 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %165 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %166 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %165, i32 0, i32 2
  store %struct.ibv_mem_node* %164, %struct.ibv_mem_node** %166, align 8
  br label %167

167:                                              ; preds = %163, %159
  br label %170

168:                                              ; preds = %150
  %169 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  store %struct.ibv_mem_node* %169, %struct.ibv_mem_node** @mm_root, align 8
  br label %170

170:                                              ; preds = %168, %167
  br label %171

171:                                              ; preds = %170, %122
  %172 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %173 = call i32 @free(%struct.ibv_mem_node* %172)
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @IBV_RED, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %455

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %446, %178
  %180 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %181 = icmp ne %struct.ibv_mem_node* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %184 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load i8*, i8** @IBV_BLACK, align 8
  %189 = icmp eq i8* %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %182, %179
  %191 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %192 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** @mm_root, align 8
  %193 = icmp ne %struct.ibv_mem_node* %191, %192
  br label %194

194:                                              ; preds = %190, %182
  %195 = phi i1 [ false, %182 ], [ %193, %190 ]
  br i1 %195, label %196, label %447

196:                                              ; preds = %194
  %197 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %198 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %197, i32 0, i32 1
  %199 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %198, align 8
  %200 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %201 = icmp eq %struct.ibv_mem_node* %199, %200
  br i1 %201, label %202, label %324

202:                                              ; preds = %196
  %203 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %204 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %203, i32 0, i32 2
  %205 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %204, align 8
  store %struct.ibv_mem_node* %205, %struct.ibv_mem_node** %5, align 8
  %206 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %207 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @IBV_RED, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %202
  %212 = load i32, i32* @IBV_RED, align 4
  %213 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %214 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i8*, i8** @IBV_BLACK, align 8
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %218 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %220 = call i32 @__mm_rotate_left(%struct.ibv_mem_node* %219)
  %221 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %222 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %221, i32 0, i32 2
  %223 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %222, align 8
  store %struct.ibv_mem_node* %223, %struct.ibv_mem_node** %5, align 8
  br label %224

224:                                              ; preds = %211, %202
  %225 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %226 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %225, i32 0, i32 1
  %227 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %226, align 8
  %228 = icmp ne %struct.ibv_mem_node* %227, null
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %231 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %230, i32 0, i32 1
  %232 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %231, align 8
  %233 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i8*
  %237 = load i8*, i8** @IBV_BLACK, align 8
  %238 = icmp eq i8* %236, %237
  br i1 %238, label %239, label %262

239:                                              ; preds = %229, %224
  %240 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %241 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %240, i32 0, i32 2
  %242 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %241, align 8
  %243 = icmp ne %struct.ibv_mem_node* %242, null
  br i1 %243, label %244, label %254

244:                                              ; preds = %239
  %245 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %246 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %245, i32 0, i32 2
  %247 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %246, align 8
  %248 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i8*
  %252 = load i8*, i8** @IBV_BLACK, align 8
  %253 = icmp eq i8* %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %244, %239
  %255 = load i32, i32* @IBV_RED, align 4
  %256 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %257 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  store %struct.ibv_mem_node* %258, %struct.ibv_mem_node** %3, align 8
  %259 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %260 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %259, i32 0, i32 3
  %261 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %260, align 8
  store %struct.ibv_mem_node* %261, %struct.ibv_mem_node** %4, align 8
  br label %323

262:                                              ; preds = %244, %229
  %263 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %264 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %263, i32 0, i32 2
  %265 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %264, align 8
  %266 = icmp ne %struct.ibv_mem_node* %265, null
  br i1 %266, label %267, label %277

267:                                              ; preds = %262
  %268 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %269 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %268, i32 0, i32 2
  %270 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %269, align 8
  %271 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = inttoptr i64 %273 to i8*
  %275 = load i8*, i8** @IBV_BLACK, align 8
  %276 = icmp eq i8* %274, %275
  br i1 %276, label %277, label %298

277:                                              ; preds = %267, %262
  %278 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %279 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %278, i32 0, i32 1
  %280 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %279, align 8
  %281 = icmp ne %struct.ibv_mem_node* %280, null
  br i1 %281, label %282, label %289

282:                                              ; preds = %277
  %283 = load i8*, i8** @IBV_BLACK, align 8
  %284 = ptrtoint i8* %283 to i32
  %285 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %286 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %285, i32 0, i32 1
  %287 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %286, align 8
  %288 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %287, i32 0, i32 0
  store i32 %284, i32* %288, align 8
  br label %289

289:                                              ; preds = %282, %277
  %290 = load i32, i32* @IBV_RED, align 4
  %291 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %292 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %294 = call i32 @__mm_rotate_right(%struct.ibv_mem_node* %293)
  %295 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %296 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %295, i32 0, i32 2
  %297 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %296, align 8
  store %struct.ibv_mem_node* %297, %struct.ibv_mem_node** %5, align 8
  br label %298

298:                                              ; preds = %289, %267
  %299 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %300 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %303 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  %304 = load i8*, i8** @IBV_BLACK, align 8
  %305 = ptrtoint i8* %304 to i32
  %306 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %307 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %309 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %308, i32 0, i32 2
  %310 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %309, align 8
  %311 = icmp ne %struct.ibv_mem_node* %310, null
  br i1 %311, label %312, label %319

312:                                              ; preds = %298
  %313 = load i8*, i8** @IBV_BLACK, align 8
  %314 = ptrtoint i8* %313 to i32
  %315 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %316 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %315, i32 0, i32 2
  %317 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %316, align 8
  %318 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %317, i32 0, i32 0
  store i32 %314, i32* %318, align 8
  br label %319

319:                                              ; preds = %312, %298
  %320 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %321 = call i32 @__mm_rotate_left(%struct.ibv_mem_node* %320)
  %322 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** @mm_root, align 8
  store %struct.ibv_mem_node* %322, %struct.ibv_mem_node** %3, align 8
  br label %447

323:                                              ; preds = %254
  br label %446

324:                                              ; preds = %196
  %325 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %326 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %325, i32 0, i32 1
  %327 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %326, align 8
  store %struct.ibv_mem_node* %327, %struct.ibv_mem_node** %5, align 8
  %328 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %329 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @IBV_RED, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %346

333:                                              ; preds = %324
  %334 = load i32, i32* @IBV_RED, align 4
  %335 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %336 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  %337 = load i8*, i8** @IBV_BLACK, align 8
  %338 = ptrtoint i8* %337 to i32
  %339 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %340 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  %341 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %342 = call i32 @__mm_rotate_right(%struct.ibv_mem_node* %341)
  %343 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %344 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %343, i32 0, i32 1
  %345 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %344, align 8
  store %struct.ibv_mem_node* %345, %struct.ibv_mem_node** %5, align 8
  br label %346

346:                                              ; preds = %333, %324
  %347 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %348 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %347, i32 0, i32 1
  %349 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %348, align 8
  %350 = icmp ne %struct.ibv_mem_node* %349, null
  br i1 %350, label %351, label %361

351:                                              ; preds = %346
  %352 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %353 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %352, i32 0, i32 1
  %354 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %353, align 8
  %355 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = sext i32 %356 to i64
  %358 = inttoptr i64 %357 to i8*
  %359 = load i8*, i8** @IBV_BLACK, align 8
  %360 = icmp eq i8* %358, %359
  br i1 %360, label %361, label %384

361:                                              ; preds = %351, %346
  %362 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %363 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %362, i32 0, i32 2
  %364 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %363, align 8
  %365 = icmp ne %struct.ibv_mem_node* %364, null
  br i1 %365, label %366, label %376

366:                                              ; preds = %361
  %367 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %368 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %367, i32 0, i32 2
  %369 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %368, align 8
  %370 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sext i32 %371 to i64
  %373 = inttoptr i64 %372 to i8*
  %374 = load i8*, i8** @IBV_BLACK, align 8
  %375 = icmp eq i8* %373, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %366, %361
  %377 = load i32, i32* @IBV_RED, align 4
  %378 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %379 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  store %struct.ibv_mem_node* %380, %struct.ibv_mem_node** %3, align 8
  %381 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %382 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %381, i32 0, i32 3
  %383 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %382, align 8
  store %struct.ibv_mem_node* %383, %struct.ibv_mem_node** %4, align 8
  br label %445

384:                                              ; preds = %366, %351
  %385 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %386 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %385, i32 0, i32 1
  %387 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %386, align 8
  %388 = icmp ne %struct.ibv_mem_node* %387, null
  br i1 %388, label %389, label %399

389:                                              ; preds = %384
  %390 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %391 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %390, i32 0, i32 1
  %392 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %391, align 8
  %393 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = sext i32 %394 to i64
  %396 = inttoptr i64 %395 to i8*
  %397 = load i8*, i8** @IBV_BLACK, align 8
  %398 = icmp eq i8* %396, %397
  br i1 %398, label %399, label %420

399:                                              ; preds = %389, %384
  %400 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %401 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %400, i32 0, i32 2
  %402 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %401, align 8
  %403 = icmp ne %struct.ibv_mem_node* %402, null
  br i1 %403, label %404, label %411

404:                                              ; preds = %399
  %405 = load i8*, i8** @IBV_BLACK, align 8
  %406 = ptrtoint i8* %405 to i32
  %407 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %408 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %407, i32 0, i32 2
  %409 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %408, align 8
  %410 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %409, i32 0, i32 0
  store i32 %406, i32* %410, align 8
  br label %411

411:                                              ; preds = %404, %399
  %412 = load i32, i32* @IBV_RED, align 4
  %413 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %414 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %413, i32 0, i32 0
  store i32 %412, i32* %414, align 8
  %415 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %416 = call i32 @__mm_rotate_left(%struct.ibv_mem_node* %415)
  %417 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %418 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %417, i32 0, i32 1
  %419 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %418, align 8
  store %struct.ibv_mem_node* %419, %struct.ibv_mem_node** %5, align 8
  br label %420

420:                                              ; preds = %411, %389
  %421 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %422 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %425 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %424, i32 0, i32 0
  store i32 %423, i32* %425, align 8
  %426 = load i8*, i8** @IBV_BLACK, align 8
  %427 = ptrtoint i8* %426 to i32
  %428 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %429 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %428, i32 0, i32 0
  store i32 %427, i32* %429, align 8
  %430 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %431 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %430, i32 0, i32 1
  %432 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %431, align 8
  %433 = icmp ne %struct.ibv_mem_node* %432, null
  br i1 %433, label %434, label %441

434:                                              ; preds = %420
  %435 = load i8*, i8** @IBV_BLACK, align 8
  %436 = ptrtoint i8* %435 to i32
  %437 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %438 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %437, i32 0, i32 1
  %439 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %438, align 8
  %440 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %439, i32 0, i32 0
  store i32 %436, i32* %440, align 8
  br label %441

441:                                              ; preds = %434, %420
  %442 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %443 = call i32 @__mm_rotate_right(%struct.ibv_mem_node* %442)
  %444 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** @mm_root, align 8
  store %struct.ibv_mem_node* %444, %struct.ibv_mem_node** %3, align 8
  br label %447

445:                                              ; preds = %376
  br label %446

446:                                              ; preds = %445, %323
  br label %179

447:                                              ; preds = %441, %319, %194
  %448 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %449 = icmp ne %struct.ibv_mem_node* %448, null
  br i1 %449, label %450, label %455

450:                                              ; preds = %447
  %451 = load i8*, i8** @IBV_BLACK, align 8
  %452 = ptrtoint i8* %451 to i32
  %453 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %454 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %453, i32 0, i32 0
  store i32 %452, i32* %454, align 8
  br label %455

455:                                              ; preds = %177, %450, %447
  ret void
}

declare dso_local i32 @free(%struct.ibv_mem_node*) #1

declare dso_local i32 @__mm_rotate_left(%struct.ibv_mem_node*) #1

declare dso_local i32 @__mm_rotate_right(%struct.ibv_mem_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
