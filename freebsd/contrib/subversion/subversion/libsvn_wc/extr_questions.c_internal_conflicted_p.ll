; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_internal_conflicted_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_internal_conflicted_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32*, i8*, i32*)* @internal_conflicted_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @internal_conflicted_p(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %19, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 @svn_wc__db_read_conflict(i32** %17, i32* null, i32* null, i32* %30, i8* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %17, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %7
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @FALSE, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32*, i32** %12, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %8, align 8
  br label %262

64:                                               ; preds = %7
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @svn_wc__conflict_read_info(i32* null, i32* null, i32* %65, i32* %66, i32* %67, i32* %68, i8* %69, i32* %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %167

77:                                               ; preds = %64
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %167

81:                                               ; preds = %77
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %23, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @svn_wc__conflict_read_text_conflict(i8** %20, i8** %21, i8** %22, i32* %83, i8* %84, i32* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i8*, i8** %20, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load i8*, i8** %20, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @svn_io_check_path(i8* %93, i32* %16, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @svn_node_file, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %23, align 4
  br label %107

107:                                              ; preds = %105, %92
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i32, i32* %23, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %22, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load i8*, i8** %22, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @svn_io_check_path(i8* %115, i32* %16, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @svn_node_file, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %23, align 4
  br label %129

129:                                              ; preds = %127, %114
  br label %130

130:                                              ; preds = %129, %111, %108
  %131 = load i32, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %152, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %21, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i8*, i8** %21, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @svn_io_check_path(i8* %137, i32* %16, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @svn_node_file, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %136
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %23, align 4
  br label %151

151:                                              ; preds = %149, %136
  br label %152

152:                                              ; preds = %151, %133, %130
  %153 = load i32, i32* %23, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %20, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = load i8*, i8** %22, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %21, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %161, %158, %155
  %165 = load i32, i32* @TRUE, align 4
  store i32 %165, i32* %18, align 4
  br label %166

166:                                              ; preds = %164, %161, %152
  br label %167

167:                                              ; preds = %166, %77, %64
  %168 = load i32*, i32** %10, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %201

170:                                              ; preds = %167
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %201

174:                                              ; preds = %170
  %175 = load i32*, i32** %13, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = load i32*, i32** %17, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = call i32 @svn_wc__conflict_read_prop_conflict(i8** %24, i32* null, i32* null, i32* null, i32* null, i32* %175, i8* %176, i32* %177, i32* %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load i8*, i8** %24, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %200

184:                                              ; preds = %174
  %185 = load i8*, i8** %24, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @svn_io_check_path(i8* %185, i32* %16, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @svn_node_file, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i32*, i32** %10, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %184
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %19, align 4
  br label %199

199:                                              ; preds = %197, %184
  br label %200

200:                                              ; preds = %199, %174
  br label %201

201:                                              ; preds = %200, %170, %167
  %202 = load i32*, i32** %12, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %235

204:                                              ; preds = %201
  %205 = load i32, i32* @FALSE, align 4
  %206 = load i32*, i32** %12, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32*, i32** %11, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %234

209:                                              ; preds = %204
  %210 = load i32*, i32** %11, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %209
  %214 = load i32*, i32** %13, align 8
  %215 = load i8*, i8** %14, align 8
  %216 = load i32*, i32** %17, align 8
  %217 = load i32*, i32** %15, align 8
  %218 = load i32*, i32** %15, align 8
  %219 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %25, i64* %26, i32* null, i32* %214, i8* %215, i32* %216, i32* %217, i32* %218)
  %220 = call i32 @SVN_ERR(i32 %219)
  %221 = load i64, i64* %25, align 8
  %222 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %213
  %225 = load i64, i64* %26, align 8
  %226 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load i32, i32* @FALSE, align 4
  %230 = load i32*, i32** %11, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* @TRUE, align 4
  %232 = load i32*, i32** %12, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %228, %224, %213
  br label %234

234:                                              ; preds = %233, %209, %204
  br label %235

235:                                              ; preds = %234, %201
  %236 = load i32, i32* %18, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %19, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %238, %235
  %242 = load i32*, i32** %13, align 8
  %243 = load i8*, i8** %14, align 8
  %244 = load i32, i32* @FALSE, align 4
  %245 = load i32*, i32** %15, align 8
  %246 = call i32 @svn_wc__db_wclock_owns_lock(i32* %27, i32* %242, i8* %243, i32 %244, i32* %245)
  %247 = call i32 @SVN_ERR(i32 %246)
  %248 = load i32, i32* %27, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %241
  %251 = load i32*, i32** %13, align 8
  %252 = load i8*, i8** %14, align 8
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* @FALSE, align 4
  %256 = load i32*, i32** %15, align 8
  %257 = call i32 @svn_wc__db_op_mark_resolved(i32* %251, i8* %252, i32 %253, i32 %254, i32 %255, i32* null, i32* %256)
  %258 = call i32 @SVN_ERR(i32 %257)
  br label %259

259:                                              ; preds = %250, %241
  br label %260

260:                                              ; preds = %259, %238
  %261 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %261, i32** %8, align 8
  br label %262

262:                                              ; preds = %260, %62
  %263 = load i32*, i32** %8, align 8
  ret i32* %263
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_conflict(i32**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_info(i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_text_conflict(i8**, i8**, i8**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_prop_conflict(i8**, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i64*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_resolved(i32*, i8*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
