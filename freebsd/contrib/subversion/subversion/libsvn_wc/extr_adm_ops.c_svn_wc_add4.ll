; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_add4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_add4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64 }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"The URL '%s' has a different repository root than its parent\00", align 1
@.str.1 = private unnamed_addr constant [147 x i8] c"Can't schedule the working copy at '%s' from repository '%s' with uuid '%s' for addition under a working copy from repository '%s' with uuid '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Can't add '%s' with URL '%s', but with the data from '%s'\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc_notify_add = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_add4(%struct.TYPE_11__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 (i8*, %struct.TYPE_10__*, i32*)* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32 (i8*, %struct.TYPE_10__*, i32*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 (i8*, %struct.TYPE_10__*, i32*)* %7, i32 (i8*, %struct.TYPE_10__*, i32*)** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %22, align 8
  %39 = load i32*, i32** %22, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32*, i32** %21, align 8
  %44 = call i32 @check_can_add_node(i64* %23, i64* %24, i64* %25, i32* %39, i8* %40, i8* %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %22, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32*, i32** %21, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i32 @check_can_add_to_parent(i8** %26, i8** %27, i32* %46, i8* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %10
  %55 = load i8*, i8** %26, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @svn_uri__is_ancestor(i8* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %15, align 8
  %63 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %60, i32* null, i32 %61, i8* %62)
  store i32* %63, i32** %11, align 8
  br label %216

64:                                               ; preds = %54, %10
  %65 = load i64, i64* %25, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %64
  %68 = load i32*, i32** %22, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i8** %28, i8** %29, i8** %30, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %68, i8* %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i8*, i8** %30, align 8
  %75 = load i8*, i8** %27, align 8
  %76 = call i64 @strcmp(i8* %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %67
  %79 = load i8*, i8** %26, align 8
  %80 = load i8*, i8** %29, align 8
  %81 = call i64 @strcmp(i8* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78, %67
  %84 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i8*, i8** %13, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = call i32 @svn_dirent_local_style(i8* %86, i32* %87)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8*, i8** %29, align 8
  %92 = load i8*, i8** %30, align 8
  %93 = load i8*, i8** %26, align 8
  %94 = load i8*, i8** %27, align 8
  %95 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %84, i32* null, i32 %85, i8* %90, i8* %91, i8* %92, i8* %93, i8* %94)
  store i32* %95, i32** %11, align 8
  br label %216

96:                                               ; preds = %78
  %97 = load i8*, i8** %26, align 8
  %98 = load i8*, i8** %28, align 8
  %99 = load i32*, i32** %21, align 8
  %100 = call i8* @svn_path_url_add_component2(i8* %97, i8* %98, i32* %99)
  store i8* %100, i8** %31, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load i8*, i8** %31, align 8
  %103 = call i64 @strcmp(i8* %101, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %107 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i8*, i8** %13, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = call i32 @svn_dirent_local_style(i8* %108, i32* %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = load i8*, i8** %15, align 8
  %114 = load i8*, i8** %31, align 8
  %115 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %106, i32* null, i32 %107, i8* %112, i8* %113, i8* %114)
  store i32* %115, i32** %11, align 8
  br label %216

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116, %64
  %118 = load i8*, i8** %15, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %151, label %120

120:                                              ; preds = %117
  %121 = load i32*, i32** %22, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load i32*, i32** %21, align 8
  %125 = call i32 @add_from_disk(i32* %121, i8* %122, i64 %123, i32* null, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i64, i64* %23, align 8
  %128 = load i64, i64* @svn_node_dir, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %120
  %131 = load i64, i64* %24, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %150, label %133

133:                                              ; preds = %130
  %134 = load i32*, i32** %22, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = load i32, i32* @FALSE, align 4
  %137 = load i32*, i32** %21, align 8
  %138 = call i32 @svn_wc__db_wclock_owns_lock(i64* %32, i32* %134, i8* %135, i32 %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load i64, i64* %32, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %133
  %143 = load i32*, i32** %22, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load i32, i32* @FALSE, align 4
  %146 = load i32*, i32** %21, align 8
  %147 = call i32 @svn_wc__db_wclock_obtain(i32* %143, i8* %144, i32 0, i32 %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  br label %149

149:                                              ; preds = %142, %133
  br label %150

150:                                              ; preds = %149, %130, %120
  br label %198

151:                                              ; preds = %117
  %152 = load i64, i64* %25, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %191, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %23, align 8
  %156 = load i64, i64* @svn_node_file, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = load i32*, i32** %21, align 8
  %160 = call i32* @svn_stream_empty(i32* %159)
  store i32* %160, i32** %33, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = load i32*, i32** %33, align 8
  %164 = load i8*, i8** %15, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i8*, i8** %18, align 8
  %168 = load i32*, i32** %21, align 8
  %169 = call i32 @svn_wc_add_repos_file4(%struct.TYPE_11__* %161, i8* %162, i32* %163, i32* null, i32* null, i32* null, i8* %164, i32 %165, i32 %166, i8* %167, i32* %168)
  %170 = call i32 @SVN_ERR(i32 %169)
  br label %190

171:                                              ; preds = %154
  %172 = load i8*, i8** %26, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = load i32*, i32** %21, align 8
  %175 = call i8* @svn_uri_skip_ancestor(i8* %172, i8* %173, i32* %174)
  store i8* %175, i8** %34, align 8
  %176 = load i32*, i32** %22, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = load i32*, i32** %21, align 8
  %179 = call i32 @apr_hash_make(i32* %178)
  %180 = load i32, i32* %16, align 4
  %181 = load i8*, i8** %34, align 8
  %182 = load i8*, i8** %26, align 8
  %183 = load i8*, i8** %27, align 8
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @FALSE, align 4
  %187 = load i32*, i32** %21, align 8
  %188 = call i32 @svn_wc__db_op_copy_dir(i32* %176, i8* %177, i32 %179, i32 %180, i32 0, i32* null, i8* %181, i8* %182, i8* %183, i32 %184, i32* null, i32 %185, i32 %186, i32* null, i32* null, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  br label %190

190:                                              ; preds = %171, %158
  br label %197

191:                                              ; preds = %151
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = load i32*, i32** %21, align 8
  %195 = call i32 @integrate_nested_wc_as_copy(%struct.TYPE_11__* %192, i8* %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32 %195)
  br label %197

197:                                              ; preds = %191, %190
  br label %198

198:                                              ; preds = %197, %150
  %199 = load i32 (i8*, %struct.TYPE_10__*, i32*)*, i32 (i8*, %struct.TYPE_10__*, i32*)** %19, align 8
  %200 = icmp ne i32 (i8*, %struct.TYPE_10__*, i32*)* %199, null
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = load i8*, i8** %13, align 8
  %203 = load i32, i32* @svn_wc_notify_add, align 4
  %204 = load i32*, i32** %21, align 8
  %205 = call %struct.TYPE_10__* @svn_wc_create_notify(i8* %202, i32 %203, i32* %204)
  store %struct.TYPE_10__* %205, %struct.TYPE_10__** %35, align 8
  %206 = load i64, i64* %23, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load i32 (i8*, %struct.TYPE_10__*, i32*)*, i32 (i8*, %struct.TYPE_10__*, i32*)** %19, align 8
  %210 = load i8*, i8** %20, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %212 = load i32*, i32** %21, align 8
  %213 = call i32 %209(i8* %210, %struct.TYPE_10__* %211, i32* %212)
  br label %214

214:                                              ; preds = %201, %198
  %215 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %215, i32** %11, align 8
  br label %216

216:                                              ; preds = %214, %105, %83, %59
  %217 = load i32*, i32** %11, align 8
  ret i32* %217
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_can_add_node(i64*, i64*, i64*, i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @check_can_add_to_parent(i8**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_uri__is_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @add_from_disk(i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock(i64*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_obtain(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_wc_add_repos_file4(%struct.TYPE_11__*, i8*, i32*, i32*, i32*, i32*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_op_copy_dir(i32*, i8*, i32, i32, i32, i32*, i8*, i8*, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @integrate_nested_wc_as_copy(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
