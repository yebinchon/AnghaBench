; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_radix.c_radix_tree_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_radix.c_radix_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32, i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { i64, %struct.radix_tree_node** }

@RADIX_TREE_MAX_HEIGHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_RADIX = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radix_tree_insert(%struct.radix_tree_root* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_tree_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.radix_tree_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @RADIX_TREE_MAX_HEIGHT, align 4
  %15 = sub nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca %struct.radix_tree_node*, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %253

24:                                               ; preds = %3
  %25 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %26 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %25, i32 0, i32 2
  %27 = load %struct.radix_tree_node*, %struct.radix_tree_node** %26, align 8
  store %struct.radix_tree_node* %27, %struct.radix_tree_node** %8, align 8
  %28 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %29 = icmp eq %struct.radix_tree_node* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i32, i32* @M_RADIX, align 4
  %32 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %33 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.radix_tree_node* @malloc(i32 16, i32 %31, i32 %36)
  store %struct.radix_tree_node* %37, %struct.radix_tree_node** %8, align 8
  %38 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %39 = icmp eq %struct.radix_tree_node* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %253

43:                                               ; preds = %30
  %44 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %45 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %46 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %45, i32 0, i32 2
  store %struct.radix_tree_node* %44, %struct.radix_tree_node** %46, align 8
  %47 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %48 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %24
  br label %52

52:                                               ; preds = %99, %51
  %53 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %54 = call i64 @radix_max(%struct.radix_tree_root* %53)
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %52
  %58 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %59 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RADIX_TREE_MAX_HEIGHT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @E2BIG, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %253

66:                                               ; preds = %57
  %67 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %68 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = load i32, i32* @M_RADIX, align 4
  %73 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %74 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @M_ZERO, align 4
  %77 = or i32 %75, %76
  %78 = call %struct.radix_tree_node* @malloc(i32 16, i32 %72, i32 %77)
  store %struct.radix_tree_node* %78, %struct.radix_tree_node** %8, align 8
  %79 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %80 = icmp eq %struct.radix_tree_node* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %253

84:                                               ; preds = %71
  %85 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %86 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %85, i32 0, i32 2
  %87 = load %struct.radix_tree_node*, %struct.radix_tree_node** %86, align 8
  %88 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %89 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %88, i32 0, i32 1
  %90 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %89, align 8
  %91 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %90, i64 0
  store %struct.radix_tree_node* %87, %struct.radix_tree_node** %91, align 8
  %92 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %93 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %97 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %98 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %97, i32 0, i32 2
  store %struct.radix_tree_node* %96, %struct.radix_tree_node** %98, align 8
  br label %99

99:                                               ; preds = %84, %66
  %100 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %101 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %52

104:                                              ; preds = %52
  %105 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %106 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %133, %104
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %109
  %113 = load i64, i64* %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @radix_pos(i64 %113, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %117 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %116, i32 0, i32 1
  %118 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %118, i64 %120
  %122 = load %struct.radix_tree_node*, %struct.radix_tree_node** %121, align 8
  %123 = icmp eq %struct.radix_tree_node* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %136

125:                                              ; preds = %112
  %126 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %127 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %126, i32 0, i32 1
  %128 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %128, i64 %130
  %132 = load %struct.radix_tree_node*, %struct.radix_tree_node** %131, align 8
  store %struct.radix_tree_node* %132, %struct.radix_tree_node** %8, align 8
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %11, align 4
  br label %109

136:                                              ; preds = %124, %109
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %190, %136
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %137
  %142 = load i32, i32* @M_RADIX, align 4
  %143 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %144 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @M_ZERO, align 4
  %147 = or i32 %145, %146
  %148 = call %struct.radix_tree_node* @malloc(i32 16, i32 %142, i32 %147)
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %18, i64 %150
  store %struct.radix_tree_node* %148, %struct.radix_tree_node** %151, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %18, i64 %153
  %155 = load %struct.radix_tree_node*, %struct.radix_tree_node** %154, align 8
  %156 = icmp eq %struct.radix_tree_node* %155, null
  br i1 %156, label %157, label %189

157:                                              ; preds = %141
  br label %158

158:                                              ; preds = %162, %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %12, align 4
  %161 = icmp ne i32 %159, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %18, i64 %164
  %166 = load %struct.radix_tree_node*, %struct.radix_tree_node** %165, align 8
  %167 = load i32, i32* @M_RADIX, align 4
  %168 = call i32 @free(%struct.radix_tree_node* %166, i32 %167)
  br label %158

169:                                              ; preds = %158
  %170 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %171 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %170, i32 0, i32 2
  %172 = load %struct.radix_tree_node*, %struct.radix_tree_node** %171, align 8
  %173 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %169
  %177 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %178 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %177, i32 0, i32 2
  %179 = load %struct.radix_tree_node*, %struct.radix_tree_node** %178, align 8
  %180 = load i32, i32* @M_RADIX, align 4
  %181 = call i32 @free(%struct.radix_tree_node* %179, i32 %180)
  %182 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %183 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %182, i32 0, i32 2
  store %struct.radix_tree_node* null, %struct.radix_tree_node** %183, align 8
  %184 = load %struct.radix_tree_root*, %struct.radix_tree_root** %5, align 8
  %185 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %176, %169
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %253

189:                                              ; preds = %141
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %137

193:                                              ; preds = %137
  br label %194

194:                                              ; preds = %223, %193
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %226

197:                                              ; preds = %194
  %198 = load i64, i64* %6, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @radix_pos(i64 %198, i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %18, i64 %203
  %205 = load %struct.radix_tree_node*, %struct.radix_tree_node** %204, align 8
  %206 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %207 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %206, i32 0, i32 1
  %208 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %208, i64 %210
  store %struct.radix_tree_node* %205, %struct.radix_tree_node** %211, align 8
  %212 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %213 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %213, align 8
  %216 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %217 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %216, i32 0, i32 1
  %218 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %218, i64 %220
  %222 = load %struct.radix_tree_node*, %struct.radix_tree_node** %221, align 8
  store %struct.radix_tree_node* %222, %struct.radix_tree_node** %8, align 8
  br label %223

223:                                              ; preds = %197
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %11, align 4
  br label %194

226:                                              ; preds = %194
  %227 = load i64, i64* %6, align 8
  %228 = call i32 @radix_pos(i64 %227, i32 0)
  store i32 %228, i32* %12, align 4
  %229 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %230 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %229, i32 0, i32 1
  %231 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %231, i64 %233
  %235 = load %struct.radix_tree_node*, %struct.radix_tree_node** %234, align 8
  %236 = icmp ne %struct.radix_tree_node* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %226
  %238 = load i32, i32* @EEXIST, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %253

240:                                              ; preds = %226
  %241 = load i8*, i8** %7, align 8
  %242 = bitcast i8* %241 to %struct.radix_tree_node*
  %243 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %244 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %243, i32 0, i32 1
  %245 = load %struct.radix_tree_node**, %struct.radix_tree_node*** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.radix_tree_node*, %struct.radix_tree_node** %245, i64 %247
  store %struct.radix_tree_node* %242, %struct.radix_tree_node** %248, align 8
  %249 = load %struct.radix_tree_node*, %struct.radix_tree_node** %8, align 8
  %250 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* %250, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %253

253:                                              ; preds = %240, %237, %186, %81, %63, %40, %21
  %254 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.radix_tree_node* @malloc(i32, i32, i32) #2

declare dso_local i64 @radix_max(%struct.radix_tree_root*) #2

declare dso_local i32 @radix_pos(i64, i32) #2

declare dso_local i32 @free(%struct.radix_tree_node*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
