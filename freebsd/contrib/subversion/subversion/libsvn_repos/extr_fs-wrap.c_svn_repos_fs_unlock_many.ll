; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_unlock_many.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_unlock_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.lock_many_baton_t = type { %struct.TYPE_8__*, i32*, i32*, i8*, i32* (i8*, i8*, i32*, i32*, i32*)*, i32 }
%struct.TYPE_8__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_NO_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Cannot unlock, no authenticated username available\00", align 1
@FALSE = common dso_local global i32 0, align 4
@lock_many_cb = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_POST_UNLOCK_HOOK_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unlock succeeded, but post-unlock hook failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_unlock_many(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* (i8*, i8*, i32*, i32*, i32*)* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32* (i8*, i8*, i32*, i32*, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.lock_many_baton_t, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* (i8*, i8*, i32*, i32*, i32*)* %3, i32* (i8*, i8*, i32*, i32*, i32*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i8* null, i8** %19, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = call i32* @apr_hash_make(i32* %29)
  store i32* %30, i32** %21, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i32* @svn_pool_create(i32* %31)
  store i32* %32, i32** %23, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @apr_hash_count(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %7
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %8, align 8
  br label %192

38:                                               ; preds = %7
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @svn_repos__parse_hooks_env(i32** %20, i32 %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @svn_fs_get_access(i32** %18, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %18, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load i32*, i32** %18, align 8
  %55 = call i32 @svn_fs_access_get_username(i8** %19, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %57

57:                                               ; preds = %53, %38
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i8*, i8** %19, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @SVN_ERR_FS_NO_USER, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %66 = call i32* @svn_error_create(i32 %64, i32* null, i32 %65)
  store i32* %66, i32** %8, align 8
  br label %192

67:                                               ; preds = %60, %57
  %68 = load i32*, i32** %15, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32* @apr_hash_first(i32* %68, i32* %69)
  store i32* %70, i32** %22, align 8
  br label %71

71:                                               ; preds = %112, %67
  %72 = load i32*, i32** %22, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %115

74:                                               ; preds = %71
  %75 = load i32*, i32** %22, align 8
  %76 = call i8* @apr_hash_this_key(i32* %75)
  store i8* %76, i8** %25, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = call i8* @apr_hash_this_val(i32* %77)
  store i8* %78, i8** %26, align 8
  %79 = load i32*, i32** %23, align 8
  %80 = call i32 @svn_pool_clear(i32* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = load i8*, i8** %25, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = load i8*, i8** %26, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %23, align 8
  %88 = call i32* @svn_repos__hooks_pre_unlock(%struct.TYPE_7__* %81, i32* %82, i8* %83, i8* %84, i8* %85, i32 %86, i32* %87)
  store i32* %88, i32** %16, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %74
  %92 = load i32*, i32** %17, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %12, align 8
  %96 = icmp ne i32* (i8*, i8*, i32*, i32*, i32*)* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %12, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %25, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = call i32* %98(i8* %99, i8* %100, i32* null, i32* %101, i32* %102)
  store i32* %103, i32** %17, align 8
  br label %104

104:                                              ; preds = %97, %94, %91
  %105 = load i32*, i32** %16, align 8
  %106 = call i32 @svn_error_clear(i32* %105)
  br label %112

107:                                              ; preds = %74
  %108 = load i32*, i32** %21, align 8
  %109 = load i8*, i8** %25, align 8
  %110 = load i8*, i8** %26, align 8
  %111 = call i32 @svn_hash_sets(i32* %108, i8* %109, i8* %110)
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32*, i32** %22, align 8
  %114 = call i32* @apr_hash_next(i32* %113)
  store i32* %114, i32** %22, align 8
  br label %71

115:                                              ; preds = %71
  %116 = load i32*, i32** %21, align 8
  %117 = call i32 @apr_hash_count(i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i32*, i32** %17, align 8
  %121 = call i32* @svn_error_trace(i32* %120)
  store i32* %121, i32** %8, align 8
  br label %192

122:                                              ; preds = %115
  %123 = load i32, i32* @FALSE, align 4
  %124 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 5
  store i32 %123, i32* %124, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load i32*, i32** %21, align 8
  %127 = call i32 @apr_hash_count(i32* %126)
  %128 = call %struct.TYPE_8__* @apr_array_make(i32* %125, i32 %127, i32 8)
  %129 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 0
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %129, align 8
  %130 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %12, align 8
  %131 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 4
  store i32* (i8*, i8*, i32*, i32*, i32*)* %130, i32* (i8*, i8*, i32*, i32*, i32*)** %131, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 3
  store i8* %132, i8** %133, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 2
  store i32* %134, i32** %135, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 1
  store i32* %136, i32** %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %21, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @lock_many_cb, align 4
  %144 = load i32*, i32** %14, align 8
  %145 = load i32*, i32** %23, align 8
  %146 = call i32* @svn_fs_unlock_many(i32 %140, i32* %141, i32 %142, i32 %143, %struct.lock_many_baton_t* %24, i32* %144, i32* %145)
  store i32* %146, i32** %16, align 8
  %147 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %122
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %154 = load i32*, i32** %20, align 8
  %155 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %24, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i8*, i8** %19, align 8
  %158 = load i32*, i32** %23, align 8
  %159 = call i32* @svn_repos__hooks_post_unlock(%struct.TYPE_7__* %153, i32* %154, %struct.TYPE_8__* %156, i8* %157, i32* %158)
  store i32* %159, i32** %27, align 8
  %160 = load i32*, i32** %27, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %152
  %163 = load i32, i32* @SVN_ERR_REPOS_POST_UNLOCK_HOOK_FAILED, align 4
  %164 = load i32*, i32** %27, align 8
  %165 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %166 = call i32* @svn_error_create(i32 %163, i32* %164, i32 %165)
  store i32* %166, i32** %27, align 8
  %167 = load i32*, i32** %16, align 8
  %168 = load i32*, i32** %27, align 8
  %169 = call i32* @svn_error_compose_create(i32* %167, i32* %168)
  store i32* %169, i32** %16, align 8
  br label %170

170:                                              ; preds = %162, %152
  br label %171

171:                                              ; preds = %170, %122
  %172 = load i32*, i32** %23, align 8
  %173 = call i32 @svn_pool_destroy(i32* %172)
  %174 = load i32*, i32** %16, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %171
  %177 = load i32*, i32** %17, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32*, i32** %16, align 8
  %181 = load i32*, i32** %17, align 8
  %182 = call i32 @svn_error_compose(i32* %180, i32* %181)
  br label %189

183:                                              ; preds = %176, %171
  %184 = load i32*, i32** %16, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = load i32*, i32** %17, align 8
  store i32* %187, i32** %16, align 8
  br label %188

188:                                              ; preds = %186, %183
  br label %189

189:                                              ; preds = %188, %179
  %190 = load i32*, i32** %16, align 8
  %191 = call i32* @svn_error_trace(i32* %190)
  store i32* %191, i32** %8, align 8
  br label %192

192:                                              ; preds = %189, %119, %63, %36
  %193 = load i32*, i32** %8, align 8
  ret i32* %193
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__parse_hooks_env(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_get_access(i32**, i32) #1

declare dso_local i32 @svn_fs_access_get_username(i8**, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_repos__hooks_pre_unlock(%struct.TYPE_7__*, i32*, i8*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local %struct.TYPE_8__* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_fs_unlock_many(i32, i32*, i32, i32, %struct.lock_many_baton_t*, i32*, i32*) #1

declare dso_local i32* @svn_repos__hooks_post_unlock(%struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
