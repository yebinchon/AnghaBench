; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_check_replace_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_check_replace_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_4__*, i8*, i32*)* @check_replace_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_replace_txn(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %28 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %26, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %14, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @svn_sqlite__bindf(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @svn_sqlite__step(i32* %15, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %6
  %43 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @svn_sqlite__reset(i32* %44)
  %46 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @path_for_error_message(%struct.TYPE_4__* %47, i8* %48, i32* %49)
  %51 = call i32* @svn_error_createf(i32 %43, i32 %45, i32 %46, i32 %50)
  store i32* %51, i32** %7, align 8
  br label %214

52:                                               ; preds = %6
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* @presence_map, align 4
  %55 = call i64 @svn_sqlite__column_token(i32* %53, i32 3, i32 %54)
  store i64 %55, i64* %19, align 8
  %56 = load i64, i64* %19, align 8
  %57 = load i64, i64* @svn_wc__db_status_normal, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @svn_sqlite__reset(i32* %60)
  %62 = call i32* @svn_error_trace(i32 %61)
  store i32* %62, i32** %7, align 8
  br label %214

63:                                               ; preds = %52
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @svn_sqlite__step(i32* %15, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @svn_sqlite__reset(i32* %70)
  %72 = call i32* @svn_error_trace(i32 %71)
  store i32* %72, i32** %7, align 8
  br label %214

73:                                               ; preds = %63
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* @presence_map, align 4
  %76 = call i64 @svn_sqlite__column_token(i32* %74, i32 3, i32 %75)
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %16, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @TRUE, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99, %88, %84, %80, %73
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @svn_sqlite__column_int(i32* %101, i32 0)
  store i32 %102, i32* %17, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @svn_sqlite__column_int(i32* %106, i32 0)
  store i32 %107, i32* %20, align 4
  br label %108

108:                                              ; preds = %125, %105
  %109 = load i32, i32* %20, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i1 [ false, %108 ], [ %113, %111 ]
  br i1 %115, label %116, label %126

116:                                              ; preds = %114
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @svn_sqlite__step(i32* %15, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @svn_sqlite__column_int(i32* %123, i32 0)
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %122, %116
  br label %108

126:                                              ; preds = %114
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load i32, i32* %20, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* @presence_map, align 4
  %135 = call i64 @svn_sqlite__column_token(i32* %133, i32 3, i32 %134)
  store i64 %135, i64* %21, align 8
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %138 = icmp ne i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %132, %129, %126
  br label %142

142:                                              ; preds = %141, %100
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @svn_sqlite__reset(i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  %146 = load i32*, i32** %8, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148, %142
  %152 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %152, i32** %7, align 8
  br label %214

153:                                              ; preds = %148
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %212

157:                                              ; preds = %153
  %158 = load i32*, i32** %14, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %12, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = call i8* @svn_relpath_dirname(i8* %162, i32* %163)
  %165 = call i32 @svn_sqlite__bindf(i32* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %161, i8* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @svn_sqlite__step_row(i32* %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 @svn_sqlite__column_int(i32* %170, i32 0)
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %157
  %176 = load i32, i32* %22, align 4
  %177 = load i32, i32* %17, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = load i32*, i32** %8, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @svn_sqlite__reset(i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  %184 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %184, i32** %7, align 8
  br label %214

185:                                              ; preds = %157
  %186 = load i32*, i32** %14, align 8
  %187 = call i32 @svn_sqlite__step(i32* %15, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @svn_sqlite__column_int(i32* %192, i32 0)
  store i32 %193, i32* %22, align 4
  br label %194

194:                                              ; preds = %191, %185
  %195 = load i32*, i32** %14, align 8
  %196 = call i32 @svn_sqlite__reset(i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %194
  %201 = load i32, i32* @TRUE, align 4
  %202 = load i32*, i32** %8, align 8
  store i32 %201, i32* %202, align 4
  br label %211

203:                                              ; preds = %194
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %17, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i32, i32* @TRUE, align 4
  %209 = load i32*, i32** %8, align 8
  store i32 %208, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %203
  br label %211

211:                                              ; preds = %210, %200
  br label %212

212:                                              ; preds = %211, %153
  %213 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %213, i32** %7, align 8
  br label %214

214:                                              ; preds = %212, %175, %151, %69, %59, %42
  %215 = load i32*, i32** %7, align 8
  ret i32* %215
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @svn_sqlite__step_row(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
