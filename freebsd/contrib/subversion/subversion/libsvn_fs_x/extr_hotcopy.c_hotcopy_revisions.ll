; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_hotcopy.c_hotcopy_revisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_hotcopy.c_hotcopy_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"The hotcopy destination already contains more packed revisions (%lu) than the hotcopy source contains (%lu)\00", align 1
@PATH_MIN_UNPACKED_REV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, %struct.TYPE_11__*, i64, i64, i32, i8*, i8*, i32 (i8*, i64, i64, i32*)*, i8*, i32 (i8*)*, i8*, i32*)* @hotcopy_revisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_revisions(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3, i32 %4, i8* %5, i8* %6, i32 (i8*, i64, i64, i32*)* %7, i8* %8, i32 (i8*)* %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32 (i8*, i64, i64, i32*)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32 (i8*)*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %15, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i32 (i8*, i64, i64, i32*)* %7, i32 (i8*, i64, i64, i32*)** %21, align 8
  store i8* %8, i8** %22, align 8
  store i32 (i8*)* %9, i32 (i8*)** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %26, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %27, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %42 = load i32*, i32** %25, align 8
  %43 = call i32 @svn_fs_x__read_min_unpacked_rev(i64* %28, %struct.TYPE_11__* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %46 = load i32*, i32** %25, align 8
  %47 = call i32 @svn_fs_x__read_min_unpacked_rev(i64* %29, %struct.TYPE_11__* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %28, align 8
  %50 = load i64, i64* %29, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %12
  %53 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0))
  %55 = load i64, i64* %29, align 8
  %56 = sub nsw i64 %55, 1
  %57 = load i64, i64* %28, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call i32* @svn_error_createf(i32 %53, i32* null, i32 %54, i64 %56, i64 %58)
  store i32* %59, i32** %13, align 8
  br label %244

60:                                               ; preds = %12
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PATH_MIN_UNPACKED_REV, align 4
  %68 = load i32*, i32** %25, align 8
  %69 = call i32 @svn_io_dir_file_copy(i32 %63, i32 %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %72 = icmp ne i32 (i8*)* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %75 = load i8*, i8** %24, align 8
  %76 = call i32 %74(i8* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %73, %60
  %79 = load i32*, i32** %25, align 8
  %80 = call i32* @svn_pool_create(i32* %79)
  store i32* %80, i32** %31, align 8
  store i64 0, i64* %30, align 8
  br label %81

81:                                               ; preds = %142, %78
  %82 = load i64, i64* %30, align 8
  %83 = load i64, i64* %28, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %147

85:                                               ; preds = %81
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %32, align 4
  %87 = load i32*, i32** %31, align 8
  %88 = call i32 @svn_pool_clear(i32* %87)
  %89 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %90 = icmp ne i32 (i8*)* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %93 = load i8*, i8** %24, align 8
  %94 = call i32 %92(i8* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %99 = load i64, i64* %30, align 8
  %100 = load i32, i32* %27, align 4
  %101 = load i32*, i32** %31, align 8
  %102 = call i32 @hotcopy_copy_packed_shard(i32* %32, i64* %29, %struct.TYPE_11__* %97, %struct.TYPE_11__* %98, i64 %99, i32 %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i64, i64* %30, align 8
  %105 = load i32, i32* %27, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = sub nsw i64 %107, 1
  store i64 %108, i64* %33, align 8
  %109 = load i64, i64* %33, align 8
  %110 = load i64, i64* %17, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %96
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %114 = load i64, i64* %33, align 8
  %115 = load i32*, i32** %31, align 8
  %116 = call i32 @svn_fs_x__write_current(%struct.TYPE_11__* %113, i64 %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  br label %118

118:                                              ; preds = %112, %96
  %119 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %21, align 8
  %120 = icmp ne i32 (i8*, i64, i64, i32*)* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32, i32* %32, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %21, align 8
  %126 = load i8*, i8** %22, align 8
  %127 = load i64, i64* %30, align 8
  %128 = load i64, i64* %33, align 8
  %129 = load i32*, i32** %31, align 8
  %130 = call i32 %125(i8* %126, i64 %127, i64 %128, i32* %129)
  br label %131

131:                                              ; preds = %124, %121, %118
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %133 = load i64, i64* %30, align 8
  %134 = load i32*, i32** %31, align 8
  %135 = call i32 @svn_fs_x__path_shard(%struct.TYPE_11__* %132, i64 %133, i32* %134)
  %136 = load i32, i32* @TRUE, align 4
  %137 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %138 = load i8*, i8** %24, align 8
  %139 = load i32*, i32** %31, align 8
  %140 = call i32 @svn_io_remove_dir2(i32 %135, i32 %136, i32 (i8*)* %137, i8* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %27, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %30, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %30, align 8
  br label %81

147:                                              ; preds = %81
  %148 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %149 = icmp ne i32 (i8*)* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %152 = load i8*, i8** %24, align 8
  %153 = call i32 %151(i8* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i64, i64* %30, align 8
  %157 = load i64, i64* %28, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @SVN_ERR_ASSERT(i32 %159)
  %161 = load i64, i64* %28, align 8
  %162 = load i64, i64* %29, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @SVN_ERR_ASSERT(i32 %164)
  br label %166

166:                                              ; preds = %231, %155
  %167 = load i64, i64* %30, align 8
  %168 = load i64, i64* %16, align 8
  %169 = icmp sle i64 %167, %168
  br i1 %169, label %170, label %234

170:                                              ; preds = %166
  %171 = load i32, i32* @TRUE, align 4
  store i32 %171, i32* %34, align 4
  %172 = load i32*, i32** %31, align 8
  %173 = call i32 @svn_pool_clear(i32* %172)
  %174 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %175 = icmp ne i32 (i8*)* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %178 = load i8*, i8** %24, align 8
  %179 = call i32 %177(i8* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  br label %181

181:                                              ; preds = %176, %170
  %182 = load i8*, i8** %19, align 8
  %183 = load i8*, i8** %20, align 8
  %184 = load i64, i64* %30, align 8
  %185 = load i32, i32* %27, align 4
  %186 = load i32, i32* @FALSE, align 4
  %187 = load i32*, i32** %31, align 8
  %188 = call i32 @hotcopy_copy_shard_file(i32* %34, i8* %182, i8* %183, i64 %184, i32 %185, i32 %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i8*, i8** %19, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = load i64, i64* %30, align 8
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* @TRUE, align 4
  %195 = load i32*, i32** %31, align 8
  %196 = call i32 @hotcopy_copy_shard_file(i32* %34, i8* %190, i8* %191, i64 %192, i32 %193, i32 %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load i64, i64* %30, align 8
  %199 = load i64, i64* %17, align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %181
  %202 = load i32, i32* %27, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %201
  %205 = load i64, i64* %30, align 8
  %206 = load i32, i32* %27, align 4
  %207 = sext i32 %206 to i64
  %208 = srem i64 %205, %207
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %212 = load i64, i64* %30, align 8
  %213 = load i32*, i32** %31, align 8
  %214 = call i32 @svn_fs_x__write_current(%struct.TYPE_11__* %211, i64 %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  br label %216

216:                                              ; preds = %210, %204, %201
  br label %217

217:                                              ; preds = %216, %181
  %218 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %21, align 8
  %219 = icmp ne i32 (i8*, i64, i64, i32*)* %218, null
  br i1 %219, label %220, label %230

220:                                              ; preds = %217
  %221 = load i32, i32* %34, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %21, align 8
  %225 = load i8*, i8** %22, align 8
  %226 = load i64, i64* %30, align 8
  %227 = load i64, i64* %30, align 8
  %228 = load i32*, i32** %31, align 8
  %229 = call i32 %224(i8* %225, i64 %226, i64 %227, i32* %228)
  br label %230

230:                                              ; preds = %223, %220, %217
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %30, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %30, align 8
  br label %166

234:                                              ; preds = %166
  %235 = load i32*, i32** %31, align 8
  %236 = call i32 @svn_pool_destroy(i32* %235)
  %237 = load i64, i64* %30, align 8
  %238 = load i64, i64* %16, align 8
  %239 = add nsw i64 %238, 1
  %240 = icmp eq i64 %237, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @SVN_ERR_ASSERT(i32 %241)
  %243 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %243, i32** %13, align 8
  br label %244

244:                                              ; preds = %234, %52
  %245 = load i32*, i32** %13, align 8
  ret i32* %245
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__read_min_unpacked_rev(i64*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_io_dir_file_copy(i32, i32, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @hotcopy_copy_packed_shard(i32*, i64*, %struct.TYPE_11__*, %struct.TYPE_11__*, i64, i32, i32*) #1

declare dso_local i32 @svn_fs_x__write_current(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i32, i32, i32 (i8*)*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__path_shard(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @hotcopy_copy_shard_file(i32*, i8*, i8*, i64, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
