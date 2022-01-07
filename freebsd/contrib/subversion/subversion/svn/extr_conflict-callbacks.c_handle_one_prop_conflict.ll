; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_handle_one_prop_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_handle_one_prop_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Conflict for property '%s' discovered on '%s'.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"mf\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tf\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Invalid option; please edit the property first.\0A\0A\00", align 1
@svn_client_conflict_option_merged_text = common dso_local global i64 0, align 8
@svn_client_conflict_option_undefined = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*, %struct.TYPE_7__*, i8*, i32*, i32*, i8*, i32*, i32*, i32*)* @handle_one_prop_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_one_prop_conflict(i32** %0, i32* %1, i8* %2, %struct.TYPE_7__* %3, i8* %4, i32* %5, i32* %6, i8* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_8__*, align 8
  %33 = alloca [9 x i8*], align 16
  %34 = alloca i8**, align 8
  store i32** %0, i32*** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  store i32* null, i32** %25, align 8
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %26, align 4
  %36 = load i32*, i32** %18, align 8
  %37 = load i8*, i8** %19, align 8
  %38 = load i32*, i32** %22, align 8
  %39 = call i32 @svn_client_conflict_prop_get_propvals(i32* null, i32** %28, i32** %27, i32** %29, i32* %36, i8* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32*, i32** %22, align 8
  %43 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** %19, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = call i32 @svn_client_conflict_get_local_abspath(i32* %48)
  %50 = load i32*, i32** %22, align 8
  %51 = call i32 @svn_cl__local_style_skip_ancestor(i8* %47, i32 %49, i32* %50)
  %52 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %41, i32* %42, i8* %45, i8* %46, i32 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %18, align 8
  %55 = load i32*, i32** %22, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = call i32 @svn_client_conflict_prop_get_description(i8** %24, i32* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32*, i32** %22, align 8
  %61 = load i8*, i8** %24, align 8
  %62 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %59, i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %18, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = call i32 @svn_client_conflict_prop_get_resolution_options(i32** %30, i32* %64, i32* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %18, align 8
  %71 = load i32*, i32** %20, align 8
  %72 = load i32*, i32** %22, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = call i32 @build_prop_conflict_options(i32** %31, i32* %70, i32* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %22, align 8
  %77 = call i32* @svn_pool_create(i32* %76)
  store i32* %77, i32** %23, align 8
  br label %78

78:                                               ; preds = %214, %180, %115, %11
  %79 = load i32, i32* @TRUE, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %215

81:                                               ; preds = %78
  %82 = getelementptr inbounds [9 x i8*], [9 x i8*]* %33, i64 0, i64 0
  store i8** %82, i8*** %34, align 8
  %83 = load i8**, i8*** %34, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %34, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %83, align 8
  %85 = load i8**, i8*** %34, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %34, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %85, align 8
  %87 = load i8**, i8*** %34, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %34, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %87, align 8
  %89 = load i8**, i8*** %34, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %34, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %89, align 8
  %91 = load i8**, i8*** %34, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %34, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %91, align 8
  %93 = load i32, i32* %26, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load i8**, i8*** %34, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %34, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %96, align 8
  br label %98

98:                                               ; preds = %95, %81
  %99 = load i8**, i8*** %34, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %34, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %99, align 8
  %101 = load i8**, i8*** %34, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %34, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %101, align 8
  %103 = load i8**, i8*** %34, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %34, align 8
  store i8* null, i8** %103, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = call i32 @svn_pool_clear(i32* %105)
  %107 = load i32*, i32** %31, align 8
  %108 = getelementptr inbounds [9 x i8*], [9 x i8*]* %33, i64 0, i64 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %110 = load i32*, i32** %23, align 8
  %111 = call i32 @prompt_user(%struct.TYPE_8__** %32, i32* %107, i8** %108, i32* null, %struct.TYPE_7__* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %98
  br label %78

116:                                              ; preds = %98
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @strcmp(i32 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32*, i32** %30, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32* @svn_client_conflict_option_find_by_id(i32* %123, i64 %126)
  %128 = load i32**, i32*** %12, align 8
  store i32* %127, i32** %128, align 8
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32*, i32** %13, align 8
  store i32 %129, i32* %130, align 4
  br label %215

131:                                              ; preds = %116
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @strcmp(i32 %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load i32*, i32** %27, align 8
  %139 = load i32*, i32** %28, align 8
  %140 = load i32*, i32** %29, align 8
  %141 = load i32*, i32** %25, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = call i32 @show_prop_conflict(i32* %138, i32* %139, i32* %140, i32* %141, i32 %144, i32 %147, i32* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  br label %213

151:                                              ; preds = %131
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @strcmp(i32 %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load i32*, i32** %27, align 8
  %159 = load i32*, i32** %28, align 8
  %160 = load i32*, i32** %29, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = load i32*, i32** %17, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %164 = load i32*, i32** %21, align 8
  %165 = load i32*, i32** %22, align 8
  %166 = call i32 @edit_prop_conflict(i32** %25, i32* %158, i32* %159, i32* %160, i8* %161, i32* %162, %struct.TYPE_7__* %163, i32* %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load i32*, i32** %25, align 8
  %169 = icmp ne i32* %168, null
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %26, align 4
  br label %212

171:                                              ; preds = %151
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @strcmp(i32 %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %171
  %178 = load i32, i32* %26, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @stderr, align 4
  %182 = load i32*, i32** %23, align 8
  %183 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %181, i32* %182, i8* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  br label %78

188:                                              ; preds = %177
  %189 = load i32*, i32** %30, align 8
  %190 = load i64, i64* @svn_client_conflict_option_merged_text, align 8
  %191 = call i32* @svn_client_conflict_option_find_by_id(i32* %189, i64 %190)
  %192 = load i32**, i32*** %12, align 8
  store i32* %191, i32** %192, align 8
  %193 = load i32**, i32*** %12, align 8
  %194 = load i32*, i32** %193, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = call i32 @svn_client_conflict_option_set_merged_propval(i32* %194, i32* %195)
  br label %215

197:                                              ; preds = %171
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @svn_client_conflict_option_undefined, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = load i32*, i32** %30, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32* @svn_client_conflict_option_find_by_id(i32* %204, i64 %207)
  %209 = load i32**, i32*** %12, align 8
  store i32* %208, i32** %209, align 8
  br label %215

210:                                              ; preds = %197
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211, %157
  br label %213

213:                                              ; preds = %212, %137
  br label %214

214:                                              ; preds = %213
  br label %78

215:                                              ; preds = %203, %188, %122, %78
  %216 = load i32*, i32** %23, align 8
  %217 = call i32 @svn_pool_destroy(i32* %216)
  %218 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %218
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_prop_get_propvals(i32*, i32**, i32**, i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cl__local_style_skip_ancestor(i8*, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i32 @svn_client_conflict_prop_get_description(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_prop_get_resolution_options(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @build_prop_conflict_options(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @prompt_user(%struct.TYPE_8__**, i32*, i8**, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @svn_client_conflict_option_find_by_id(i32*, i64) #1

declare dso_local i32 @show_prop_conflict(i32*, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @edit_prop_conflict(i32**, i32*, i32*, i32*, i8*, i32*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_option_set_merged_propval(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
