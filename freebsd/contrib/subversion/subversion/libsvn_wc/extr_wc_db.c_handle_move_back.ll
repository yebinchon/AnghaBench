; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_handle_move_back.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_handle_move_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@STMT_SELECT_MOVED_BACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"isdd\00", align 1
@TRUE = common dso_local global i64 0, align 8
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@STMT_DELETE_WORKING_OP_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, %struct.TYPE_5__*, i8*, i8*, i32*, i32*)* @handle_move_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_move_back(i64* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %20, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @add_work_items(i32 %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @svn_wc__db_read_info_internal(i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %16, i32* null, i32* null, i32* null, i64* %17, i32* null, %struct.TYPE_5__* %39, i8* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @svn_wc__db_status_added, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %6
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48, %6
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %7, align 8
  br label %220

53:                                               ; preds = %48
  %54 = load i64, i64* %17, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @svn_relpath_dirname(i8* %58, i32* %59)
  %61 = call i32 @op_depth_of(i32* %18, %struct.TYPE_5__* %57, i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %64

63:                                               ; preds = %53
  store i32 0, i32* %18, align 4
  br label %64

64:                                               ; preds = %63, %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @STMT_SELECT_MOVED_BACK, align 4
  %69 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %67, i32 %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @relpath_depth(i8* %77)
  %79 = call i32 (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %74, i8* %75, i32 %76, i32 %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @svn_sqlite__step(i64* %19, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i64, i64* %19, align 8
  %85 = call i32 @SVN_ERR_ASSERT(i64 %84)
  %86 = load i32*, i32** %14, align 8
  %87 = call i64 @svn_sqlite__column_boolean(i32* %86, i32 9)
  store i64 %87, i64* %21, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i8* @svn_sqlite__column_text(i32* %88, i32 10, i32* null)
  store i8* %89, i8** %22, align 8
  %90 = load i64, i64* %21, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %64
  %93 = load i8*, i8** %22, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i8*, i8** %22, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i64 @strcmp(i8* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95, %92, %64
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %20, align 8
  %102 = load i64, i64* @FALSE, align 8
  store i64 %102, i64* %19, align 8
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %183, %138, %120, %103
  %105 = load i64, i64* %19, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %187

107:                                              ; preds = %104
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* @presence_map, align 4
  %110 = call i64 @svn_sqlite__column_token(i32* %108, i32 1, i32 %109)
  store i64 %110, i64* %23, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = call i64 @svn_sqlite__column_is_null(i32* %111, i32 5)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i64, i64* %23, align 8
  %116 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %20, align 8
  br label %187

120:                                              ; preds = %114
  br label %104

121:                                              ; preds = %107
  %122 = load i32*, i32** %14, align 8
  %123 = load i32, i32* @presence_map, align 4
  %124 = call i64 @svn_sqlite__column_token(i32* %122, i32 5, i32 %123)
  store i64 %124, i64* %24, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i64, i64* %24, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %20, align 8
  br label %187

130:                                              ; preds = %121
  %131 = load i64, i64* %23, align 8
  %132 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134, %130
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @svn_sqlite__step(i64* %19, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  br label %104

142:                                              ; preds = %134
  %143 = load i64, i64* %23, align 8
  %144 = load i64, i64* @svn_wc__db_status_normal, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i64, i64* @TRUE, align 8
  store i64 %147, i64* %20, align 8
  br label %187

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148
  %150 = load i32*, i32** %14, align 8
  %151 = call i8* @svn_sqlite__column_text(i32* %150, i32 3, i32* null)
  store i8* %151, i8** %25, align 8
  %152 = load i32*, i32** %14, align 8
  %153 = call i8* @svn_sqlite__column_text(i32* %152, i32 7, i32* null)
  store i8* %153, i8** %26, align 8
  %154 = load i8*, i8** %25, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i8*, i8** %25, align 8
  %158 = load i8*, i8** %26, align 8
  %159 = call i64 @strcmp(i8* %157, i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156, %149
  %162 = load i64, i64* @TRUE, align 8
  store i64 %162, i64* %20, align 8
  br label %187

163:                                              ; preds = %156
  %164 = load i32*, i32** %14, align 8
  %165 = call i64 @svn_sqlite__column_revnum(i32* %164, i32 4)
  store i64 %165, i64* %27, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = call i64 @svn_sqlite__column_revnum(i32* %166, i32 8)
  store i64 %167, i64* %28, align 8
  %168 = load i64, i64* %27, align 8
  %169 = load i64, i64* %28, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i64, i64* @TRUE, align 8
  store i64 %172, i64* %20, align 8
  br label %187

173:                                              ; preds = %163
  %174 = load i32*, i32** %14, align 8
  %175 = call i64 @svn_sqlite__column_int64(i32* %174, i32 2)
  store i64 %175, i64* %29, align 8
  %176 = load i32*, i32** %14, align 8
  %177 = call i64 @svn_sqlite__column_int64(i32* %176, i32 6)
  store i64 %177, i64* %30, align 8
  %178 = load i64, i64* %29, align 8
  %179 = load i64, i64* %30, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i64, i64* @TRUE, align 8
  store i64 %182, i64* %20, align 8
  br label %187

183:                                              ; preds = %173
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @svn_sqlite__step(i64* %19, i32* %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  br label %104

187:                                              ; preds = %181, %171, %161, %146, %128, %118, %104
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @svn_sqlite__reset(i32* %188)
  %190 = call i32 @SVN_ERR(i32 %189)
  %191 = load i64, i64* %20, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %218, label %193

193:                                              ; preds = %187
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @STMT_DELETE_WORKING_OP_DEPTH, align 4
  %198 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %196, i32 %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load i32*, i32** %14, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %10, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = call i32 @relpath_depth(i8* %205)
  %207 = call i32 (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %203, i8* %204, i32 %206)
  %208 = call i32 @SVN_ERR(i32 %207)
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @svn_sqlite__step_done(i32* %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  %212 = load i64*, i64** %8, align 8
  %213 = icmp ne i64* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %193
  %215 = load i64, i64* @TRUE, align 8
  %216 = load i64*, i64** %8, align 8
  store i64 %215, i64* %216, align 8
  br label %217

217:                                              ; preds = %214, %193
  br label %218

218:                                              ; preds = %217, %187
  %219 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %219, i32** %7, align 8
  br label %220

220:                                              ; preds = %218, %51
  %221 = load i32*, i32** %7, align 8
  ret i32* %221
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @add_work_items(i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info_internal(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i64*, i32*, %struct.TYPE_5__*, i8*, i32*, i32*) #1

declare dso_local i32 @op_depth_of(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i64) #1

declare dso_local i64 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i64 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
