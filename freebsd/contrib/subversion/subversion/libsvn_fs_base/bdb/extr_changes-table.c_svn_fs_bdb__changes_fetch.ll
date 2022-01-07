; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_svn_fs_bdb__changes_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_svn_fs_bdb__changes_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32, i32**, i32)* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"creating cursor for reading changes\00", align 1
@DB_SET = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Error reading changes for key '%s'\00", align 1
@svn_fs_path_change_delete = common dso_local global i64 0, align 8
@svn_fs_path_change_replace = common dso_local global i64 0, align 8
@DB_NEXT_DUP = common dso_local global i32 0, align 4
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"fetching changes\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"closing changes cursor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__changes_fetch(i32** %0, %struct.TYPE_20__* %1, i8* %2, %struct.TYPE_19__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__, align 4
  %15 = alloca %struct.TYPE_23__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i32* %4, i32** %11, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32* @apr_hash_make(i32* %33)
  store i32* %34, i32** %19, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32* @svn_pool_create(i32* %35)
  store i32* %36, i32** %20, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %21, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = call i32* @apr_hash_make(i32* %39)
  store i32* %40, i32** %22, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %42 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_19__* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %44 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_18__*, i32, i32**, i32)*, i32 (%struct.TYPE_18__*, i32, i32**, i32)** %48, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %49(%struct.TYPE_18__* %52, i32 %55, i32** %13, i32 0)
  %57 = call i32* @BDB_WRAP(%struct.TYPE_20__* %43, i32 %44, i32 %56)
  %58 = call i32 @SVN_ERR(i32* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_23__* %14, i8* %59)
  %61 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_23__* %15)
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* @DB_SET, align 4
  %64 = call i32 @svn_bdb_dbc_get(i32* %62, %struct.TYPE_23__* %14, %struct.TYPE_23__* %15, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %5
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_23__* %15, i32* %68)
  br label %70

70:                                               ; preds = %67, %5
  br label %71

71:                                               ; preds = %160, %70
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %161

75:                                               ; preds = %71
  %76 = load i32*, i32** %21, align 8
  %77 = call i32 @svn_pool_clear(i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %21, align 8
  %83 = call i32* @svn_skel__parse(i32 %79, i32 %81, i32* %82)
  store i32* %83, i32** %24, align 8
  %84 = load i32*, i32** %24, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %75
  %87 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %88 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i8*, i8** %9, align 8
  %90 = call i32* @svn_error_createf(i32 %87, i32* null, i32 %88, i8* %89)
  store i32* %90, i32** %18, align 8
  br label %178

91:                                               ; preds = %75
  %92 = load i32*, i32** %24, align 8
  %93 = load i32*, i32** %21, align 8
  %94 = call i32* @svn_fs_base__parse_change_skel(%struct.TYPE_21__** %23, i32* %92, i32* %93)
  store i32* %94, i32** %18, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %178

98:                                               ; preds = %91
  %99 = load i32*, i32** %19, align 8
  %100 = load i32*, i32** %22, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %102 = call i32* @fold_change(i32* %99, i32* %100, %struct.TYPE_21__* %101)
  store i32* %102, i32** %18, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %178

106:                                              ; preds = %98
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @svn_fs_path_change_delete, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @svn_fs_path_change_replace, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %150

118:                                              ; preds = %112, %106
  %119 = load i32*, i32** %21, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = call i32* @apr_hash_first(i32* %119, i32* %120)
  store i32* %121, i32** %25, align 8
  br label %122

122:                                              ; preds = %146, %118
  %123 = load i32*, i32** %25, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %149

125:                                              ; preds = %122
  %126 = load i32*, i32** %25, align 8
  %127 = call i32 @apr_hash_this(i32* %126, i8** %26, i32* %27, i32* null)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %26, align 8
  %132 = call i8* @svn_fspath__skip_ancestor(i32 %130, i8* %131)
  store i8* %132, i8** %28, align 8
  %133 = load i8*, i8** %28, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %125
  %136 = load i8*, i8** %28, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32*, i32** %19, align 8
  %142 = load i8*, i8** %26, align 8
  %143 = load i32, i32* %27, align 4
  %144 = call i32 @apr_hash_set(i32* %141, i8* %142, i32 %143, i32* null)
  br label %145

145:                                              ; preds = %140, %135, %125
  br label %146

146:                                              ; preds = %145
  %147 = load i32*, i32** %25, align 8
  %148 = call i32* @apr_hash_next(i32* %147)
  store i32* %148, i32** %25, align 8
  br label %122

149:                                              ; preds = %122
  br label %150

150:                                              ; preds = %149, %112
  %151 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_23__* %15)
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* @DB_NEXT_DUP, align 4
  %154 = call i32 @svn_bdb_dbc_get(i32* %152, %struct.TYPE_23__* %14, %struct.TYPE_23__* %15, i32 %153)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %150
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_23__* %15, i32* %158)
  br label %160

160:                                              ; preds = %157, %150
  br label %71

161:                                              ; preds = %71
  %162 = load i32*, i32** %21, align 8
  %163 = call i32 @svn_pool_destroy(i32* %162)
  %164 = load i32*, i32** %20, align 8
  %165 = call i32 @svn_pool_destroy(i32* %164)
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @DB_NOTFOUND, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %174 = call i32 @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %175 = load i32, i32* %16, align 4
  %176 = call i32* @BDB_WRAP(%struct.TYPE_20__* %173, i32 %174, i32 %175)
  store i32* %176, i32** %18, align 8
  br label %177

177:                                              ; preds = %172, %168, %161
  br label %178

178:                                              ; preds = %177, %105, %97, %86
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @svn_bdb_dbc_close(i32* %179)
  store i32 %180, i32* %17, align 4
  %181 = load i32*, i32** %18, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32*, i32** %18, align 8
  %185 = call i32* @svn_error_trace(i32* %184)
  store i32* %185, i32** %6, align 8
  br label %199

186:                                              ; preds = %178
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %191 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %192 = load i32, i32* %17, align 4
  %193 = call i32* @BDB_WRAP(%struct.TYPE_20__* %190, i32 %191, i32 %192)
  %194 = call i32 @SVN_ERR(i32* %193)
  br label %195

195:                                              ; preds = %189, %186
  %196 = load i32*, i32** %19, align 8
  %197 = load i32**, i32*** %7, align 8
  store i32* %196, i32** %197, align 8
  %198 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %198, i32** %6, align 8
  br label %199

199:                                              ; preds = %195, %183
  %200 = load i32*, i32** %6, align 8
  ret i32* %200
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_bdb_dbc_get(i32*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_fs_base__parse_change_skel(%struct.TYPE_21__**, i32*, i32*) #1

declare dso_local i32* @fold_change(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i32, i8*) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_bdb_dbc_close(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
