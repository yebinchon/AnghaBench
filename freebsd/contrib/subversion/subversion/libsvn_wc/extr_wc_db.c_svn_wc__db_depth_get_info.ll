; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_depth_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_depth_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@STMT_SELECT_DEPTH_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@presence_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@depth_map = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"The node '%s' has a corrupt checksum value.\00", align 1
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_wc__db_depth_get_info(i64* %0, i64* %1, i32* %2, i8** %3, i32* %4, i32* %5, i32* %6, i8** %7, i32* %8, i32** %9, i8** %10, i64* %11, i32** %12, %struct.TYPE_12__* %13, i8* %14, i32 %15, i32* %16, i32* %17) #0 {
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32**, align 8
  %29 = alloca i8**, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i32**, align 8
  %32 = alloca %struct.TYPE_12__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i64, align 8
  %39 = alloca %struct.TYPE_13__*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  store i64* %0, i64** %19, align 8
  store i64* %1, i64** %20, align 8
  store i32* %2, i32** %21, align 8
  store i8** %3, i8*** %22, align 8
  store i32* %4, i32** %23, align 8
  store i32* %5, i32** %24, align 8
  store i32* %6, i32** %25, align 8
  store i8** %7, i8*** %26, align 8
  store i32* %8, i32** %27, align 8
  store i32** %9, i32*** %28, align 8
  store i8** %10, i8*** %29, align 8
  store i64* %11, i64** %30, align 8
  store i32** %12, i32*** %31, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %32, align 8
  store i8* %14, i8** %33, align 8
  store i32 %15, i32* %34, align 4
  store i32* %16, i32** %35, align 8
  store i32* %17, i32** %36, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %39, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @STMT_SELECT_DEPTH_NODE, align 4
  %47 = call i32 @svn_sqlite__get_statement(i32** %37, i32 %45, i32 %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %37, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %33, align 8
  %54 = load i32, i32* %34, align 4
  %55 = call i32 @svn_sqlite__bindf(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %37, align 8
  %58 = call i32 @svn_sqlite__step(i64* %38, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* %38, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %218

62:                                               ; preds = %18
  %63 = load i32*, i32** %37, align 8
  %64 = load i32, i32* @presence_map, align 4
  %65 = call i64 @svn_sqlite__column_token(i32* %63, i32 2, i32 %64)
  store i64 %65, i64* %40, align 8
  %66 = load i32*, i32** %37, align 8
  %67 = load i32, i32* @kind_map, align 4
  %68 = call i64 @svn_sqlite__column_token(i32* %66, i32 3, i32 %67)
  store i64 %68, i64* %41, align 8
  %69 = load i64*, i64** %20, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %41, align 8
  %73 = load i64*, i64** %20, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %62
  %75 = load i64*, i64** %19, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i64, i64* %40, align 8
  %79 = load i64*, i64** %19, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %34, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i64*, i64** %19, align 8
  %84 = load i64*, i64** %19, align 8
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @convert_to_working_status(i64* %83, i64 %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %88

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32*, i32** %23, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = load i8**, i8*** %22, align 8
  %93 = load i32*, i32** %37, align 8
  %94 = load i32*, i32** %35, align 8
  %95 = call i32 @repos_location_from_columns(i32* %90, i32* %91, i8** %92, i32* %93, i32 0, i32 4, i32 1, i32* %94)
  %96 = load i32*, i32** %24, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32*, i32** %37, align 8
  %100 = call i32 @svn_sqlite__column_revnum(i32* %99, i32 7)
  %101 = load i32*, i32** %24, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %89
  %103 = load i32*, i32** %25, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32*, i32** %37, align 8
  %107 = call i32 @svn_sqlite__column_int64(i32* %106, i32 8)
  %108 = load i32*, i32** %25, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i8**, i8*** %26, align 8
  %111 = icmp ne i8** %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32*, i32** %37, align 8
  %114 = load i32*, i32** %35, align 8
  %115 = call i8* @svn_sqlite__column_text(i32* %113, i32 9, i32* %114)
  %116 = load i8**, i8*** %26, align 8
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %112, %109
  %118 = load i32*, i32** %27, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i64, i64* %41, align 8
  %122 = load i64, i64* @svn_node_dir, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @svn_depth_unknown, align 4
  %126 = load i32*, i32** %27, align 8
  store i32 %125, i32* %126, align 4
  br label %133

127:                                              ; preds = %120
  %128 = load i32*, i32** %37, align 8
  %129 = load i32, i32* @depth_map, align 4
  %130 = load i32, i32* @svn_depth_unknown, align 4
  %131 = call i32 @svn_sqlite__column_token_null(i32* %128, i32 10, i32 %129, i32 %130)
  %132 = load i32*, i32** %27, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %127, %124
  br label %134

134:                                              ; preds = %133, %117
  %135 = load i32**, i32*** %28, align 8
  %136 = icmp ne i32** %135, null
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  %138 = load i64, i64* %41, align 8
  %139 = load i64, i64* @svn_node_file, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32**, i32*** %28, align 8
  store i32* null, i32** %142, align 8
  br label %162

143:                                              ; preds = %137
  %144 = load i32**, i32*** %28, align 8
  %145 = load i32*, i32** %37, align 8
  %146 = load i32*, i32** %35, align 8
  %147 = call %struct.TYPE_13__* @svn_sqlite__column_checksum(i32** %144, i32* %145, i32 5, i32* %146)
  store %struct.TYPE_13__* %147, %struct.TYPE_13__** %39, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %149 = icmp ne %struct.TYPE_13__* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %155 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %157 = load i8*, i8** %33, align 8
  %158 = load i32*, i32** %36, align 8
  %159 = call i32 @path_for_error_message(%struct.TYPE_12__* %156, i8* %157, i32* %158)
  %160 = call %struct.TYPE_13__* @svn_error_createf(i32 %153, %struct.TYPE_13__* %154, i32 %155, i32 %159)
  store %struct.TYPE_13__* %160, %struct.TYPE_13__** %39, align 8
  br label %161

161:                                              ; preds = %150, %143
  br label %162

162:                                              ; preds = %161, %141
  br label %163

163:                                              ; preds = %162, %134
  %164 = load i8**, i8*** %29, align 8
  %165 = icmp ne i8** %164, null
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i64, i64* %41, align 8
  %168 = load i64, i64* @svn_node_symlink, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i8**, i8*** %29, align 8
  store i8* null, i8** %171, align 8
  br label %177

172:                                              ; preds = %166
  %173 = load i32*, i32** %37, align 8
  %174 = load i32*, i32** %35, align 8
  %175 = call i8* @svn_sqlite__column_text(i32* %173, i32 11, i32* %174)
  %176 = load i8**, i8*** %29, align 8
  store i8* %175, i8** %176, align 8
  br label %177

177:                                              ; preds = %172, %170
  br label %178

178:                                              ; preds = %177, %163
  %179 = load i64*, i64** %30, align 8
  %180 = icmp ne i64* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32*, i32** %37, align 8
  %183 = call i64 @SQLITE_PROPERTIES_AVAILABLE(i32* %182, i32 12)
  %184 = load i64*, i64** %30, align 8
  store i64 %183, i64* %184, align 8
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i32**, i32*** %31, align 8
  %187 = icmp ne i32** %186, null
  br i1 %187, label %188, label %217

188:                                              ; preds = %185
  %189 = load i64, i64* %40, align 8
  %190 = load i64, i64* @svn_wc__db_status_normal, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i64, i64* %40, align 8
  %194 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %192, %188
  %197 = load i32**, i32*** %31, align 8
  %198 = load i32*, i32** %37, align 8
  %199 = load i32*, i32** %35, align 8
  %200 = load i32*, i32** %36, align 8
  %201 = call i32 @svn_sqlite__column_properties(i32** %197, i32* %198, i32 12, i32* %199, i32* %200)
  %202 = call i32 @SVN_ERR(i32 %201)
  %203 = load i32**, i32*** %31, align 8
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %196
  %207 = load i32*, i32** %35, align 8
  %208 = call i32* @apr_hash_make(i32* %207)
  %209 = load i32**, i32*** %31, align 8
  store i32* %208, i32** %209, align 8
  br label %210

210:                                              ; preds = %206, %196
  br label %216

211:                                              ; preds = %192
  %212 = load i32*, i32** %37, align 8
  %213 = call i32 @svn_sqlite__column_is_null(i32* %212, i32 12)
  %214 = call i32 @assert(i32 %213)
  %215 = load i32**, i32*** %31, align 8
  store i32* null, i32** %215, align 8
  br label %216

216:                                              ; preds = %211, %210
  br label %217

217:                                              ; preds = %216, %185
  br label %226

218:                                              ; preds = %18
  %219 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %220 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %222 = load i8*, i8** %33, align 8
  %223 = load i32*, i32** %36, align 8
  %224 = call i32 @path_for_error_message(%struct.TYPE_12__* %221, i8* %222, i32* %223)
  %225 = call %struct.TYPE_13__* @svn_error_createf(i32 %219, %struct.TYPE_13__* null, i32 %220, i32 %224)
  store %struct.TYPE_13__* %225, %struct.TYPE_13__** %39, align 8
  br label %226

226:                                              ; preds = %218, %217
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %228 = load i32*, i32** %37, align 8
  %229 = call i32 @svn_sqlite__reset(i32* %228)
  %230 = call %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__* %227, i32 %229)
  ret %struct.TYPE_13__* %230
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @convert_to_working_status(i64*, i64) #1

declare dso_local i32 @repos_location_from_columns(i32*, i32*, i8**, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_token_null(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @svn_sqlite__column_checksum(i32**, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_createf(i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i64 @SQLITE_PROPERTIES_AVAILABLE(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
