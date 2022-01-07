; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_do_backward_shift_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_do_backward_shift_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64, i32* }
%struct.ck_rhs_entry_desc = type { i64, i32, i64 }

@CK_RHS_G_MASK = common dso_local global i64 0, align 8
@CK_RHS_WORD_MAX = common dso_local global i64 0, align 8
@CK_RHS_MAX_WANTED = common dso_local global i64 0, align 8
@CK_RHS_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ck_rhs*, i64)* @ck_rhs_do_backward_shift_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ck_rhs_do_backward_shift_delete(%struct.ck_rhs* %0, i64 %1) #0 {
  %3 = alloca %struct.ck_rhs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ck_rhs_map*, align 8
  %6 = alloca %struct.ck_rhs_entry_desc*, align 8
  %7 = alloca %struct.ck_rhs_entry_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ck_rhs_entry_desc*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.ck_rhs*, %struct.ck_rhs** %3, align 8
  %16 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %15, i32 0, i32 0
  %17 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %16, align 8
  store %struct.ck_rhs_map* %17, %struct.ck_rhs_map** %5, align 8
  store %struct.ck_rhs_entry_desc* null, %struct.ck_rhs_entry_desc** %7, align 8
  %18 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %18, i64 %19)
  store %struct.ck_rhs_entry_desc* %20, %struct.ck_rhs_entry_desc** %6, align 8
  %21 = load %struct.ck_rhs*, %struct.ck_rhs** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @ck_rhs_remove_wanted(%struct.ck_rhs* %21, i64 %22, i64 -1)
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %213, %2
  %25 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %26 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %216

29:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  store i64 1, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %76, %29
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %33 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %30
  %37 = load i64, i64* %11, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %39, i64 %40, i32 %41)
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %61, %36
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %47 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %51, i64 %52)
  store %struct.ck_rhs_entry_desc* %53, %struct.ck_rhs_entry_desc** %7, align 8
  %54 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %55 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %68

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %64, i64 %65, i32 %66)
  store i64 %67, i64* %9, align 8
  br label %43

68:                                               ; preds = %60, %43
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %72 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %79

76:                                               ; preds = %68
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %11, align 8
  br label %30

79:                                               ; preds = %75, %30
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %82 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %87 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %216

88:                                               ; preds = %79
  %89 = load i64, i64* %11, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %92 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ck_rhs*, %struct.ck_rhs** %3, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i64 @ck_rhs_remove_wanted(%struct.ck_rhs* %93, i64 %94, i64 %95)
  store i64 %96, i64* %8, align 8
  %97 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %97, i64 %98)
  %100 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @ck_rhs_entry(%struct.ck_rhs_map* %100, i64 %101)
  %103 = call i32 @ck_pr_store_ptr(i32 %99, i32 %102)
  %104 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %105 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @CK_RHS_G_MASK, align 8
  %109 = and i64 %107, %108
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = call i32 @ck_pr_inc_uint(i32* %110)
  %112 = call i32 (...) @ck_pr_fence_atomic_store()
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* @CK_RHS_WORD_MAX, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %202

116:                                              ; preds = %88
  %117 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %117, i64 %118)
  store %struct.ck_rhs_entry_desc* %119, %struct.ck_rhs_entry_desc** %14, align 8
  %120 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %14, align 8
  %121 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 1
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %14, align 8
  %126 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %125, i32 0, i32 2
  %127 = load i64, i64* %11, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @CK_RHS_STORE(i64* %126, i32 %128)
  br label %201

130:                                              ; preds = %116
  %131 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %14, align 8
  %132 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CK_RHS_WORD_MAX, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %145, label %136

136:                                              ; preds = %130
  %137 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %14, align 8
  %138 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %141 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = zext i32 %142 to i64
  %144 = icmp eq i64 %139, %143
  br i1 %144, label %145, label %200

145:                                              ; preds = %136, %130
  %146 = load i32, i32* %12, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %14, align 8
  %149 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CK_RHS_WORD_MAX, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %155 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %13, align 4
  br label %165

158:                                              ; preds = %145
  %159 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %14, align 8
  %160 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = add i32 %163, -1
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %167 = load i64, i64* %9, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %166, i64 %167, i32 %168)
  store i64 %169, i64* %10, align 8
  br label %170

170:                                              ; preds = %182, %165
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i64 @ck_rhs_get_first_offset(%struct.ck_rhs_map* %176, i64 %177, i32 %178)
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %189

182:                                              ; preds = %174
  %183 = load i32, i32* %12, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %12, align 4
  %185 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %185, i64 %186, i32 %187)
  store i64 %188, i64* %10, align 8
  br label %170

189:                                              ; preds = %181, %170
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %14, align 8
  %195 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %194, i32 0, i32 2
  %196 = load i64, i64* %11, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i32 @CK_RHS_STORE(i64* %195, i32 %197)
  br label %199

199:                                              ; preds = %193, %189
  br label %200

200:                                              ; preds = %199, %136
  br label %201

201:                                              ; preds = %200, %124
  br label %202

202:                                              ; preds = %201, %88
  %203 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %204 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @CK_RHS_MAX_WANTED, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %210 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, -1
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %208, %202
  %214 = load i64, i64* %9, align 8
  store i64 %214, i64* %4, align 8
  %215 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  store %struct.ck_rhs_entry_desc* %215, %struct.ck_rhs_entry_desc** %6, align 8
  br label %24

216:                                              ; preds = %85, %24
  %217 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %218 = load i64, i64* %4, align 8
  %219 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %217, i64 %218)
  %220 = load i32, i32* @CK_RHS_EMPTY, align 4
  %221 = call i32 @ck_pr_store_ptr(i32 %219, i32 %220)
  %222 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %223 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sub i32 %224, 1
  %226 = zext i32 %225 to i64
  %227 = load i64, i64* @CK_RHS_WORD_MAX, align 8
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %216
  %230 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %5, align 8
  %231 = load i64, i64* %8, align 8
  %232 = call i64* @ck_rhs_probe_bound_addr(%struct.ck_rhs_map* %230, i64 %231)
  %233 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %234 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = sub i32 %235, 1
  %237 = call i32 @CK_RHS_STORE(i64* %232, i32 %236)
  br label %238

238:                                              ; preds = %229, %216
  %239 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %6, align 8
  %240 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %239, i32 0, i32 1
  store i32 0, i32* %240, align 8
  ret void
}

declare dso_local %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map*, i64) #1

declare dso_local i64 @ck_rhs_remove_wanted(%struct.ck_rhs*, i64, i64) #1

declare dso_local i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map*, i64, i32) #1

declare dso_local i32 @ck_pr_store_ptr(i32, i32) #1

declare dso_local i32 @ck_rhs_entry_addr(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_rhs_entry(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_pr_inc_uint(i32*) #1

declare dso_local i32 @ck_pr_fence_atomic_store(...) #1

declare dso_local i32 @CK_RHS_STORE(i64*, i32) #1

declare dso_local i64 @ck_rhs_get_first_offset(%struct.ck_rhs_map*, i64, i32) #1

declare dso_local i64* @ck_rhs_probe_bound_addr(%struct.ck_rhs_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
