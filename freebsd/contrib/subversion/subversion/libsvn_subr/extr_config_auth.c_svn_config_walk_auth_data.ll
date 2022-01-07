; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config_auth.c_svn_config_walk_auth_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config_auth.c_svn_config_walk_auth_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_AUTH_CRED_SIMPLE = common dso_local global i8* null, align 8
@SVN_AUTH_CRED_USERNAME = common dso_local global i8* null, align 8
@SVN_AUTH_CRED_SSL_CLIENT_CERT = common dso_local global i8* null, align 8
@SVN_AUTH_CRED_SSL_CLIENT_CERT_PW = common dso_local global i8* null, align 8
@SVN_AUTH_CRED_SSL_SERVER_TRUST = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@TRUE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@SVN_CONFIG_REALMSTRING_KEY = common dso_local global i32 0, align 4
@SVN_ERR_CEASE_INVOCATION = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_23__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @svn_config_walk_auth_data(i8* %0, %struct.TYPE_23__* (i64*, i8*, i8*, i32, i32*, i32*)* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_23__* (i64*, i8*, i8*, i32, i32*, i32*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [6 x i8*], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_23__* (i64*, i8*, i8*, i32, i32*, i32*)* %1, %struct.TYPE_23__* (i64*, i8*, i8*, i32, i32*, i32*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %12, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 0
  %27 = load i8*, i8** @SVN_AUTH_CRED_SIMPLE, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 1
  %29 = load i8*, i8** @SVN_AUTH_CRED_USERNAME, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 1
  %31 = load i8*, i8** @SVN_AUTH_CRED_SSL_CLIENT_CERT, align 8
  store i8* %31, i8** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 1
  %33 = load i8*, i8** @SVN_AUTH_CRED_SSL_CLIENT_CERT_PW, align 8
  store i8* %33, i8** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 1
  %35 = load i8*, i8** @SVN_AUTH_CRED_SSL_SERVER_TRUST, align 8
  store i8* %35, i8** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* null, i8** %36, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %194, %4
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %197

45:                                               ; preds = %39
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_pool_clear(i32* %46)
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %197

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call %struct.TYPE_23__* @svn_auth__file_path(i8** %14, i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %56, i32* %57)
  %59 = call i32 @SVN_ERR(%struct.TYPE_23__* %58)
  %60 = load i8*, i8** %14, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i8* @svn_dirent_dirname(i8* %60, i32* %61)
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i64, i64* @TRUE, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call %struct.TYPE_23__* @svn_io_get_dirents3(i32** %16, i8* %63, i64 %64, i32* %65, i32* %66)
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %17, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %69 = icmp ne %struct.TYPE_23__* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %51
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @APR_STATUS_IS_ENOENT(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @SVN__APR_STATUS_IS_ENOTDIR(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %84 = call %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__* %83)
  store %struct.TYPE_23__* %84, %struct.TYPE_23__** %5, align 8
  br label %201

85:                                               ; preds = %76, %70
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %87 = call i32 @svn_error_clear(%struct.TYPE_23__* %86)
  br label %194

88:                                               ; preds = %51
  %89 = load i32*, i32** %11, align 8
  %90 = call i32* @svn_pool_create(i32* %89)
  store i32* %90, i32** %18, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = call i32* @apr_hash_first(i32* %91, i32* %92)
  store i32* %93, i32** %19, align 8
  br label %94

94:                                               ; preds = %190, %88
  %95 = load i32*, i32** %19, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %193

97:                                               ; preds = %94
  %98 = load i32*, i32** %19, align 8
  %99 = call %struct.TYPE_22__* @apr_hash_this_val(i32* %98)
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %20, align 8
  %100 = load i64, i64* @FALSE, align 8
  store i64 %100, i64* %24, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %193

104:                                              ; preds = %97
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @svn_node_file, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %190

111:                                              ; preds = %104
  %112 = load i32*, i32** %18, align 8
  %113 = call i32 @svn_pool_clear(i32* %112)
  %114 = load i8*, i8** %15, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @apr_hash_this_key(i32* %115)
  %117 = load i32*, i32** %18, align 8
  %118 = call i8* @svn_dirent_join(i8* %114, i32 %116, i32* %117)
  store i8* %118, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32*, i32** %18, align 8
  %121 = load i32*, i32** %18, align 8
  %122 = call %struct.TYPE_23__* @svn_stream_open_readonly(i32** %21, i8* %119, i32* %120, i32* %121)
  store %struct.TYPE_23__* %122, %struct.TYPE_23__** %17, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %124 = icmp ne %struct.TYPE_23__* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %111
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %127 = call i32 @svn_error_clear(%struct.TYPE_23__* %126)
  br label %190

128:                                              ; preds = %111
  %129 = load i32*, i32** %18, align 8
  %130 = call i32* @apr_hash_make(i32* %129)
  store i32* %130, i32** %22, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = load i32*, i32** %21, align 8
  %133 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = call %struct.TYPE_23__* @svn_hash_read2(i32* %131, i32* %132, i32 %133, i32* %134)
  store %struct.TYPE_23__* %135, %struct.TYPE_23__** %17, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %137 = load i32*, i32** %21, align 8
  %138 = call i32 @svn_stream_close(i32* %137)
  %139 = call %struct.TYPE_23__* @svn_error_compose_create(%struct.TYPE_23__* %136, i32 %138)
  store %struct.TYPE_23__* %139, %struct.TYPE_23__** %17, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %141 = icmp ne %struct.TYPE_23__* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %128
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %144 = call i32 @svn_error_clear(%struct.TYPE_23__* %143)
  br label %190

145:                                              ; preds = %128
  %146 = load i32*, i32** %22, align 8
  %147 = load i32, i32* @SVN_CONFIG_REALMSTRING_KEY, align 4
  %148 = call %struct.TYPE_21__* @svn_hash_gets(i32* %146, i32 %147)
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %23, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %150 = icmp ne %struct.TYPE_21__* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  br label %190

152:                                              ; preds = %145
  %153 = load %struct.TYPE_23__* (i64*, i8*, i8*, i32, i32*, i32*)*, %struct.TYPE_23__* (i64*, i8*, i8*, i32, i32*, i32*)** %7, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %22, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = call %struct.TYPE_23__* %153(i64* %24, i8* %154, i8* %158, i32 %161, i32* %162, i32* %163)
  store %struct.TYPE_23__* %164, %struct.TYPE_23__** %17, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %166 = icmp ne %struct.TYPE_23__* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %152
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SVN_ERR_CEASE_INVOCATION, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %175 = call i32 @svn_error_clear(%struct.TYPE_23__* %174)
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %176, %struct.TYPE_23__** %17, align 8
  %177 = load i64, i64* @TRUE, align 8
  store i64 %177, i64* %12, align 8
  br label %178

178:                                              ; preds = %173, %167, %152
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %180 = call i32 @SVN_ERR(%struct.TYPE_23__* %179)
  %181 = load i64, i64* %24, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load i8*, i8** %14, align 8
  %185 = load i64, i64* @TRUE, align 8
  %186 = load i32*, i32** %18, align 8
  %187 = call %struct.TYPE_23__* @svn_io_remove_file2(i8* %184, i64 %185, i32* %186)
  %188 = call i32 @SVN_ERR(%struct.TYPE_23__* %187)
  br label %189

189:                                              ; preds = %183, %178
  br label %190

190:                                              ; preds = %189, %151, %142, %125, %110
  %191 = load i32*, i32** %19, align 8
  %192 = call i32* @apr_hash_next(i32* %191)
  store i32* %192, i32** %19, align 8
  br label %94

193:                                              ; preds = %103, %94
  br label %194

194:                                              ; preds = %193, %85
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %39

197:                                              ; preds = %50, %39
  %198 = load i32*, i32** %11, align 8
  %199 = call i32 @svn_pool_destroy(i32* %198)
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_23__* %200, %struct.TYPE_23__** %5, align 8
  br label %201

201:                                              ; preds = %197, %82
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  ret %struct.TYPE_23__* %202
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @svn_auth__file_path(i8**, i8*, i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_io_get_dirents3(i32**, i8*, i64, i32*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local i32 @SVN__APR_STATUS_IS_ENOTDIR(i64) #1

declare dso_local %struct.TYPE_23__* @svn_error_trace(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_23__*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_23__* @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_23__* @svn_hash_read2(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_error_compose_create(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local %struct.TYPE_21__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @svn_io_remove_file2(i8*, i64, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
