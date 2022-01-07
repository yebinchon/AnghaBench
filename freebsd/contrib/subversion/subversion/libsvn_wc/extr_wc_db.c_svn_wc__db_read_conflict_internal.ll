; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_conflict_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_conflict_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@svn_node_none = common dso_local global i8* null, align 8
@STMT_SELECT_ACTUAL_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@FALSE = common dso_local global i64 0, align 8
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@kind_map = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_read_conflict_internal(i32** %0, i8** %1, i32** %2, %struct.TYPE_4__* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load i8*, i8** @svn_node_none, align 8
  %29 = load i8**, i8*** %10, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %27, %7
  %31 = load i32**, i32*** %11, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32**, i32*** %11, align 8
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @STMT_SELECT_ACTUAL_NODE, align 4
  %40 = call i32* @svn_sqlite__get_statement(i32** %16, i32 %38, i32 %39)
  %41 = call i32 @SVN_ERR(i32* %40)
  %42 = load i32*, i32** %16, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = call i32* @svn_sqlite__bindf(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %46)
  %48 = call i32 @SVN_ERR(i32* %47)
  %49 = load i32*, i32** %16, align 8
  %50 = call i32* @svn_sqlite__step(i64* %17, i32* %49)
  %51 = call i32 @SVN_ERR(i32* %50)
  %52 = load i64, i64* %17, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %35
  %55 = load i32*, i32** %16, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = call i8* @svn_sqlite__column_blob(i32* %55, i32 2, i32* %18, i32* %56)
  store i8* %57, i8** %19, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i8*, i8** %19, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = call i32* @svn_skel__parse(i8* %61, i32 %62, i32* %63)
  %65 = load i32**, i32*** %9, align 8
  store i32* %64, i32** %65, align 8
  br label %68

66:                                               ; preds = %54
  %67 = load i32**, i32*** %9, align 8
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32**, i32*** %11, align 8
  %70 = icmp ne i32** %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32**, i32*** %11, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = call i32* @svn_sqlite__column_properties(i32** %72, i32* %73, i32 1, i32* %74, i32* %75)
  %77 = call i32* @svn_error_trace(i32* %76)
  store i32* %77, i32** %20, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32*, i32** %20, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i32* @svn_sqlite__reset(i32* %82)
  %84 = call i32* @svn_error_compose_create(i32* %81, i32* %83)
  store i32* %84, i32** %8, align 8
  br label %204

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %68
  br label %89

87:                                               ; preds = %35
  %88 = load i32**, i32*** %9, align 8
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i32*, i32** %16, align 8
  %91 = call i32* @svn_sqlite__reset(i32* %90)
  %92 = call i32 @SVN_ERR(i32* %91)
  %93 = load i64, i64* %17, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i8**, i8*** %10, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load i32**, i32*** %11, align 8
  %100 = icmp ne i32** %99, null
  br i1 %100, label %101, label %202

101:                                              ; preds = %98
  %102 = load i32**, i32*** %11, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %202, label %105

105:                                              ; preds = %101, %95, %89
  store i32* null, i32** %21, align 8
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %22, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %111 = call i32* @svn_sqlite__get_statement(i32** %16, i32 %109, i32 %110)
  %112 = call i32 @SVN_ERR(i32* %111)
  %113 = load i32*, i32** %16, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = call i32* @svn_sqlite__bindf(i32* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %116, i8* %117)
  %119 = call i32 @SVN_ERR(i32* %118)
  %120 = load i32*, i32** %16, align 8
  %121 = call i32* @svn_sqlite__step(i64* %22, i32* %120)
  %122 = call i32 @SVN_ERR(i32* %121)
  %123 = load i64, i64* %22, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %182

125:                                              ; preds = %105
  %126 = load i8**, i8*** %10, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %165

128:                                              ; preds = %125
  %129 = load i32*, i32** %16, align 8
  %130 = call i32 @svn_sqlite__column_int(i32* %129, i32 0)
  store i32 %130, i32* %24, align 4
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* @presence_map, align 4
  %133 = call i8* @svn_sqlite__column_token(i32* %131, i32 3, i32 %132)
  %134 = ptrtoint i8* %133 to i64
  store i64 %134, i64* %23, align 8
  %135 = load i32, i32* %24, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i64, i64* %23, align 8
  %139 = call i32* @convert_to_working_status(i64* %23, i64 %138)
  store i32* %139, i32** %21, align 8
  br label %140

140:                                              ; preds = %137, %128
  %141 = load i32*, i32** %21, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %164, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* %23, align 8
  %145 = load i64, i64* @svn_wc__db_status_normal, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %159, label %147

147:                                              ; preds = %143
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* @svn_wc__db_status_added, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155, %151, %147, %143
  %160 = load i32*, i32** %16, align 8
  %161 = load i32, i32* @kind_map, align 4
  %162 = call i8* @svn_sqlite__column_token(i32* %160, i32 4, i32 %161)
  %163 = load i8**, i8*** %10, align 8
  store i8* %162, i8** %163, align 8
  br label %164

164:                                              ; preds = %159, %155, %140
  br label %165

165:                                              ; preds = %164, %125
  %166 = load i32*, i32** %21, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %181, label %168

168:                                              ; preds = %165
  %169 = load i32**, i32*** %11, align 8
  %170 = icmp ne i32** %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load i32**, i32*** %11, align 8
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = load i32**, i32*** %11, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = call i32* @svn_sqlite__column_properties(i32** %176, i32* %177, i32 14, i32* %178, i32* %179)
  store i32* %180, i32** %21, align 8
  br label %181

181:                                              ; preds = %175, %171, %168, %165
  br label %182

182:                                              ; preds = %181, %105
  %183 = load i32*, i32** %21, align 8
  %184 = load i32*, i32** %16, align 8
  %185 = call i32* @svn_sqlite__reset(i32* %184)
  %186 = call i32* @svn_error_compose_create(i32* %183, i32* %185)
  %187 = call i32 @SVN_ERR(i32* %186)
  %188 = load i64, i64* %17, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %182
  %191 = load i64, i64* %22, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %195 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @path_for_error_message(%struct.TYPE_4__* %196, i8* %197, i32* %198)
  %200 = call i32* @svn_error_createf(i32 %194, i32* null, i32 %195, i32 %199)
  store i32* %200, i32** %8, align 8
  br label %204

201:                                              ; preds = %190, %182
  br label %202

202:                                              ; preds = %201, %101, %98
  %203 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %203, i32** %8, align 8
  br label %204

204:                                              ; preds = %202, %193, %80
  %205 = load i32*, i32** %8, align 8
  ret i32* %205
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32* @svn_sqlite__step(i64*, i32*) #1

declare dso_local i8* @svn_sqlite__column_blob(i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_skel__parse(i8*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32* @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32* @convert_to_working_status(i64*, i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_4__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
