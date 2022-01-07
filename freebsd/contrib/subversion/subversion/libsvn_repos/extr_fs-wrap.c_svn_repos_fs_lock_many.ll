; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_lock_many.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_lock_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.lock_many_baton_t = type { %struct.TYPE_8__*, i32*, i32*, i8*, i32* (i8*, i8*, i32*, i32*, i32*)*, i32 }
%struct.TYPE_8__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_NO_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Cannot lock path, no authenticated username available.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@lock_many_cb = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_POST_LOCK_HOOK_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Locking succeeded, but post-lock hook failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_lock_many(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32* (i8*, i8*, i32*, i32*, i32*)* %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32* (i8*, i8*, i32*, i32*, i32*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.lock_many_baton_t, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* (i8*, i8*, i32*, i32*, i32*)* %6, i32* (i8*, i8*, i32*, i32*, i32*)** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %35, i32** %23, align 8
  store i32* null, i32** %24, align 8
  store i8* null, i8** %25, align 8
  %36 = load i32*, i32** %21, align 8
  %37 = call i32* @apr_hash_make(i32* %36)
  store i32* %37, i32** %27, align 8
  %38 = load i32*, i32** %21, align 8
  %39 = call i32* @svn_pool_create(i32* %38)
  store i32* %39, i32** %29, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @apr_hash_count(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %10
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %11, align 8
  br label %206

45:                                               ; preds = %10
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %21, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = call i32 @svn_repos__parse_hooks_env(i32** %26, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @svn_fs_get_access(i32** %24, i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %24, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load i32*, i32** %24, align 8
  %62 = call i32 @svn_fs_access_get_username(i8** %25, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %60, %45
  %65 = load i8*, i8** %25, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @SVN_ERR_FS_NO_USER, align 4
  %69 = call i32* @svn_error_create(i32 %68, i32* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32* %69, i32** %11, align 8
  br label %206

70:                                               ; preds = %64
  %71 = load i32*, i32** %21, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32* @apr_hash_first(i32* %71, i32* %72)
  store i32* %73, i32** %28, align 8
  br label %74

74:                                               ; preds = %123, %70
  %75 = load i32*, i32** %28, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %126

77:                                               ; preds = %74
  %78 = load i32*, i32** %28, align 8
  %79 = call i8* @apr_hash_this_key(i32* %78)
  store i8* %79, i8** %33, align 8
  %80 = load i32*, i32** %29, align 8
  %81 = call i32 @svn_pool_clear(i32* %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = load i32*, i32** %26, align 8
  %84 = load i8*, i8** %33, align 8
  %85 = load i8*, i8** %25, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** %29, align 8
  %89 = call i32* @svn_repos__hooks_pre_lock(%struct.TYPE_7__* %82, i32* %83, i8** %31, i8* %84, i8* %85, i8* %86, i32 %87, i32* %88)
  store i32* %89, i32** %22, align 8
  %90 = load i32*, i32** %22, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %77
  %93 = load i32*, i32** %23, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %18, align 8
  %97 = icmp ne i32* (i8*, i8*, i32*, i32*, i32*)* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %18, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = load i8*, i8** %33, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = load i32*, i32** %29, align 8
  %104 = call i32* %99(i8* %100, i8* %101, i32* null, i32* %102, i32* %103)
  store i32* %104, i32** %23, align 8
  br label %105

105:                                              ; preds = %98, %95, %92
  %106 = load i32*, i32** %22, align 8
  %107 = call i32 @svn_error_clear(i32* %106)
  br label %123

108:                                              ; preds = %77
  %109 = load i32*, i32** %28, align 8
  %110 = call i32* @apr_hash_this_val(i32* %109)
  store i32* %110, i32** %32, align 8
  %111 = load i8*, i8** %31, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32*, i32** %32, align 8
  %116 = load i8*, i8** %31, align 8
  %117 = call i32 @svn_fs_lock_target_set_token(i32* %115, i8* %116)
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i32*, i32** %27, align 8
  %120 = load i8*, i8** %33, align 8
  %121 = load i32*, i32** %32, align 8
  %122 = call i32 @svn_hash_sets(i32* %119, i8* %120, i32* %121)
  br label %123

123:                                              ; preds = %118, %105
  %124 = load i32*, i32** %28, align 8
  %125 = call i32* @apr_hash_next(i32* %124)
  store i32* %125, i32** %28, align 8
  br label %74

126:                                              ; preds = %74
  %127 = load i32*, i32** %27, align 8
  %128 = call i32 @apr_hash_count(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i32*, i32** %23, align 8
  %132 = call i32* @svn_error_trace(i32* %131)
  store i32* %132, i32** %11, align 8
  br label %206

133:                                              ; preds = %126
  %134 = load i32, i32* @TRUE, align 4
  %135 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 5
  store i32 %134, i32* %135, align 8
  %136 = load i32*, i32** %21, align 8
  %137 = load i32*, i32** %27, align 8
  %138 = call i32 @apr_hash_count(i32* %137)
  %139 = call %struct.TYPE_8__* @apr_array_make(i32* %136, i32 %138, i32 8)
  %140 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 0
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %140, align 8
  %141 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %18, align 8
  %142 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 4
  store i32* (i8*, i8*, i32*, i32*, i32*)* %141, i32* (i8*, i8*, i32*, i32*, i32*)** %142, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 3
  store i8* %143, i8** %144, align 8
  %145 = load i32*, i32** %23, align 8
  %146 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 2
  store i32* %145, i32** %146, align 8
  %147 = load i32*, i32** %21, align 8
  %148 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 1
  store i32* %147, i32** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %27, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* @lock_many_cb, align 4
  %158 = load i32*, i32** %20, align 8
  %159 = load i32*, i32** %29, align 8
  %160 = call i32* @svn_fs_lock_many(i32 %151, i32* %152, i8* %153, i32 %154, i32 %155, i32 %156, i32 %157, %struct.lock_many_baton_t* %30, i32* %158, i32* %159)
  store i32* %160, i32** %22, align 8
  %161 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %133
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %168 = load i32*, i32** %26, align 8
  %169 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %30, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load i8*, i8** %25, align 8
  %172 = load i32*, i32** %29, align 8
  %173 = call i32* @svn_repos__hooks_post_lock(%struct.TYPE_7__* %167, i32* %168, %struct.TYPE_8__* %170, i8* %171, i32* %172)
  store i32* %173, i32** %34, align 8
  %174 = load i32*, i32** %34, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %166
  %177 = load i32, i32* @SVN_ERR_REPOS_POST_LOCK_HOOK_FAILED, align 4
  %178 = load i32*, i32** %34, align 8
  %179 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %180 = call i32* @svn_error_create(i32 %177, i32* %178, i8* %179)
  store i32* %180, i32** %34, align 8
  %181 = load i32*, i32** %22, align 8
  %182 = load i32*, i32** %34, align 8
  %183 = call i32* @svn_error_compose_create(i32* %181, i32* %182)
  store i32* %183, i32** %22, align 8
  br label %184

184:                                              ; preds = %176, %166
  br label %185

185:                                              ; preds = %184, %133
  %186 = load i32*, i32** %29, align 8
  %187 = call i32 @svn_pool_destroy(i32* %186)
  %188 = load i32*, i32** %22, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load i32*, i32** %23, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32*, i32** %22, align 8
  %195 = load i32*, i32** %23, align 8
  %196 = call i32 @svn_error_compose(i32* %194, i32* %195)
  br label %203

197:                                              ; preds = %190, %185
  %198 = load i32*, i32** %22, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = load i32*, i32** %23, align 8
  store i32* %201, i32** %22, align 8
  br label %202

202:                                              ; preds = %200, %197
  br label %203

203:                                              ; preds = %202, %193
  %204 = load i32*, i32** %22, align 8
  %205 = call i32* @svn_error_trace(i32* %204)
  store i32* %205, i32** %11, align 8
  br label %206

206:                                              ; preds = %203, %130, %67, %43
  %207 = load i32*, i32** %11, align 8
  ret i32* %207
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__parse_hooks_env(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_get_access(i32**, i32) #1

declare dso_local i32 @svn_fs_access_get_username(i8**, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_repos__hooks_pre_lock(%struct.TYPE_7__*, i32*, i8**, i8*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_fs_lock_target_set_token(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local %struct.TYPE_8__* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_fs_lock_many(i32, i32*, i8*, i32, i32, i32, i32, %struct.lock_many_baton_t*, i32*, i32*) #1

declare dso_local i32* @svn_repos__hooks_post_lock(%struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
