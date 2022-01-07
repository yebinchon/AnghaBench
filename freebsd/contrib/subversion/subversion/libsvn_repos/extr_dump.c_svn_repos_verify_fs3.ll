; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_svn_repos_verify_fs3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_svn_repos_verify_fs3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.verify_fs_notify_func_baton_t = type { i8*, i8*, i32 (i8*, %struct.TYPE_14__*, i32*)* }

@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Start revision %ld is greater than end revision %ld\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"End revision %ld is invalid (youngest revision is %ld)\00", align 1
@svn_repos_notify_verify_rev_end = common dso_local global i32 0, align 4
@verify_fs_notify_func = common dso_local global i32* null, align 8
@svn_repos_notify_verify_rev_structure = common dso_local global i32 0, align 4
@SVN_ERR_CANCELLED = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@svn_repos_notify_verify_end = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_repos_verify_fs3(i32* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 (i8*, %struct.TYPE_14__*, i32*)* %5, i8* %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32 (i8*, %struct.TYPE_14__*, i32*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_14__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.verify_fs_notify_func_baton_t*, align 8
  %33 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %14, align 8
  store i64 %1, i64* %15, align 8
  store i64 %2, i64* %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 (i8*, %struct.TYPE_14__*, i32*)* %5, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32* @svn_repos_fs(i32* %34)
  store i32* %35, i32** %26, align 8
  %36 = load i32*, i32** %25, align 8
  %37 = call i32* @svn_pool_create(i32* %36)
  store i32* %37, i32** %29, align 8
  store i32* null, i32** %31, align 8
  store %struct.verify_fs_notify_func_baton_t* null, %struct.verify_fs_notify_func_baton_t** %32, align 8
  %38 = load i32*, i32** %26, align 8
  %39 = load i32*, i32** %25, align 8
  %40 = call i32 @svn_fs_refresh_revision_props(i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %26, align 8
  %43 = load i32*, i32** %25, align 8
  %44 = call i32 @svn_fs_youngest_rev(i64* %27, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @SVN_IS_VALID_REVNUM(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %12
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @SVN_IS_VALID_REVNUM(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %27, align 8
  store i64 %55, i64* %16, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %16, align 8
  %65 = call %struct.TYPE_15__* @svn_error_createf(i32 %61, i32* null, i32 %62, i64 %63, i64 %64)
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %13, align 8
  br label %216

66:                                               ; preds = %56
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %27, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %27, align 8
  %75 = call %struct.TYPE_15__* @svn_error_createf(i32 %71, i32* null, i32 %72, i64 %73, i64 %74)
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %13, align 8
  br label %216

76:                                               ; preds = %66
  %77 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  %78 = icmp ne i32 (i8*, %struct.TYPE_14__*, i32*)* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load i32, i32* @svn_repos_notify_verify_rev_end, align 4
  %81 = load i32*, i32** %25, align 8
  %82 = call i8* @svn_repos_notify_create(i32 %80, i32* %81)
  %83 = bitcast i8* %82 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %30, align 8
  %84 = load i32*, i32** @verify_fs_notify_func, align 8
  store i32* %84, i32** %31, align 8
  %85 = load i32*, i32** %25, align 8
  %86 = call %struct.verify_fs_notify_func_baton_t* @apr_palloc(i32* %85, i32 24)
  store %struct.verify_fs_notify_func_baton_t* %86, %struct.verify_fs_notify_func_baton_t** %32, align 8
  %87 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  %88 = load %struct.verify_fs_notify_func_baton_t*, %struct.verify_fs_notify_func_baton_t** %32, align 8
  %89 = getelementptr inbounds %struct.verify_fs_notify_func_baton_t, %struct.verify_fs_notify_func_baton_t* %88, i32 0, i32 2
  store i32 (i8*, %struct.TYPE_14__*, i32*)* %87, i32 (i8*, %struct.TYPE_14__*, i32*)** %89, align 8
  %90 = load i8*, i8** %20, align 8
  %91 = load %struct.verify_fs_notify_func_baton_t*, %struct.verify_fs_notify_func_baton_t** %32, align 8
  %92 = getelementptr inbounds %struct.verify_fs_notify_func_baton_t, %struct.verify_fs_notify_func_baton_t* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @svn_repos_notify_verify_rev_structure, align 4
  %94 = load i32*, i32** %25, align 8
  %95 = call i8* @svn_repos_notify_create(i32 %93, i32* %94)
  %96 = load %struct.verify_fs_notify_func_baton_t*, %struct.verify_fs_notify_func_baton_t** %32, align 8
  %97 = getelementptr inbounds %struct.verify_fs_notify_func_baton_t, %struct.verify_fs_notify_func_baton_t* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %79, %76
  %99 = load i32*, i32** %26, align 8
  %100 = load i32*, i32** %25, align 8
  %101 = call i32 @svn_fs_path(i32* %99, i32* %100)
  %102 = load i32*, i32** %26, align 8
  %103 = load i32*, i32** %25, align 8
  %104 = call i32 @svn_fs_config(i32* %102, i32* %103)
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i32*, i32** %31, align 8
  %108 = load %struct.verify_fs_notify_func_baton_t*, %struct.verify_fs_notify_func_baton_t** %32, align 8
  %109 = load i32, i32* %23, align 4
  %110 = load i8*, i8** %24, align 8
  %111 = load i32*, i32** %25, align 8
  %112 = call %struct.TYPE_15__* @svn_fs_verify(i32 %101, i32 %104, i64 %105, i64 %106, i32* %107, %struct.verify_fs_notify_func_baton_t* %108, i32 %109, i8* %110, i32* %111)
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %33, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %114 = icmp ne %struct.TYPE_15__* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %98
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SVN_ERR_CANCELLED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %123 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %122)
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %13, align 8
  br label %216

124:                                              ; preds = %115, %98
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %126 = icmp ne %struct.TYPE_15__* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %130 = load i32, i32* %21, align 4
  %131 = load i8*, i8** %22, align 8
  %132 = load i32*, i32** %29, align 8
  %133 = call i32 @report_error(i64 %128, %struct.TYPE_15__* %129, i32 %130, i8* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  br label %135

135:                                              ; preds = %127, %124
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %199, label %139

139:                                              ; preds = %136
  %140 = load i64, i64* %15, align 8
  store i64 %140, i64* %28, align 8
  br label %141

141:                                              ; preds = %195, %139
  %142 = load i64, i64* %28, align 8
  %143 = load i64, i64* %16, align 8
  %144 = icmp sle i64 %142, %143
  br i1 %144, label %145, label %198

145:                                              ; preds = %141
  %146 = load i32*, i32** %29, align 8
  %147 = call i32 @svn_pool_clear(i32* %146)
  %148 = load i32*, i32** %26, align 8
  %149 = load i64, i64* %28, align 8
  %150 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = load i64, i64* %15, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %23, align 4
  %155 = load i8*, i8** %24, align 8
  %156 = load i32*, i32** %29, align 8
  %157 = call %struct.TYPE_15__* @verify_one_revision(i32* %148, i64 %149, i32 (i8*, %struct.TYPE_14__*, i32*)* %150, i8* %151, i64 %152, i32 %153, i32 %154, i8* %155, i32* %156)
  store %struct.TYPE_15__* %157, %struct.TYPE_15__** %33, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %159 = icmp ne %struct.TYPE_15__* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %145
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SVN_ERR_CANCELLED, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %168 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %167)
  store %struct.TYPE_15__* %168, %struct.TYPE_15__** %13, align 8
  br label %216

169:                                              ; preds = %160, %145
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %171 = icmp ne %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load i64, i64* %28, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %175 = load i32, i32* %21, align 4
  %176 = load i8*, i8** %22, align 8
  %177 = load i32*, i32** %29, align 8
  %178 = call i32 @report_error(i64 %173, %struct.TYPE_15__* %174, i32 %175, i8* %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  br label %193

180:                                              ; preds = %169
  %181 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  %182 = icmp ne i32 (i8*, %struct.TYPE_14__*, i32*)* %181, null
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i64, i64* %28, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  %188 = load i8*, i8** %20, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %190 = load i32*, i32** %29, align 8
  %191 = call i32 %187(i8* %188, %struct.TYPE_14__* %189, i32* %190)
  br label %192

192:                                              ; preds = %183, %180
  br label %193

193:                                              ; preds = %192, %172
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %28, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %28, align 8
  br label %141

198:                                              ; preds = %141
  br label %199

199:                                              ; preds = %198, %136
  %200 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  %201 = icmp ne i32 (i8*, %struct.TYPE_14__*, i32*)* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i32, i32* @svn_repos_notify_verify_end, align 4
  %204 = load i32*, i32** %29, align 8
  %205 = call i8* @svn_repos_notify_create(i32 %203, i32* %204)
  %206 = bitcast i8* %205 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %206, %struct.TYPE_14__** %30, align 8
  %207 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %19, align 8
  %208 = load i8*, i8** %20, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %210 = load i32*, i32** %29, align 8
  %211 = call i32 %207(i8* %208, %struct.TYPE_14__* %209, i32* %210)
  br label %212

212:                                              ; preds = %202, %199
  %213 = load i32*, i32** %29, align 8
  %214 = call i32 @svn_pool_destroy(i32* %213)
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %215, %struct.TYPE_15__** %13, align 8
  br label %216

216:                                              ; preds = %212, %166, %121, %70, %60
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  ret %struct.TYPE_15__* %217
}

declare dso_local i32* @svn_repos_fs(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_refresh_revision_props(i32*, i32*) #1

declare dso_local i32 @svn_fs_youngest_rev(i64*, i32*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_15__* @svn_error_createf(i32, i32*, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_repos_notify_create(i32, i32*) #1

declare dso_local %struct.verify_fs_notify_func_baton_t* @apr_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @svn_fs_verify(i32, i32, i64, i64, i32*, %struct.verify_fs_notify_func_baton_t*, i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_path(i32*, i32*) #1

declare dso_local i32 @svn_fs_config(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local i32 @report_error(i64, %struct.TYPE_15__*, i32, i8*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_15__* @verify_one_revision(i32*, i64, i32 (i8*, %struct.TYPE_14__*, i32*)*, i8*, i64, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
