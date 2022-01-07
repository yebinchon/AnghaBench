; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_verify_local_state_for_incoming_add_upon_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_verify_local_state_for_incoming_add_upon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_client_conflict_option_incoming_add_ignore = common dso_local global i8* null, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Cannot resolve tree conflict on '%s' (expected a base node but found none)\00", align 1
@svn_client_conflict_option_incoming_added_dir_replace = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected option id '%d'\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Cannot resolve tree conflict on '%s' (expected base node kind '%s', but found '%s')\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"Cannot resolve tree conflict on '%s' (expected base node from '^/%s@%ld', but found '^/%s@%ld')\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"Cannot resolve tree conflict on '%s' (expected an added item, but the item is not added)\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32*, %struct.TYPE_12__*, i32*)* @verify_local_state_for_incoming_add_upon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @verify_local_state_for_incoming_add_upon_update(i32* %0, i32* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @svn_client_conflict_get_local_abspath(i32* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i8* @svn_client_conflict_option_get_id(i32* %25)
  store i8* %26, i8** %11, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @svn_wc__get_wcroot(i8** %12, i32 %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @svn_client_conflict_get_operation(i32* %35)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @svn_wc_operation_update, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %14, i64* %15, i64* %16, i32* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @svn_dirent_skip_ancestor(i8* %47, i8* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i8* @svn_dirent_local_style(i32 %49, i32* %50)
  store i8* %51, i8** %20, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call %struct.TYPE_11__* @svn_wc__node_get_base(i64* %19, i64* %18, i8** %17, i32* null, i32* null, i32* null, i32 %54, i8* %55, i32 %56, i32* %57, i32* %58)
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %22, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %94

62:                                               ; preds = %4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %62
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** @svn_client_conflict_option_incoming_add_ignore, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %75 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %76 = load i8*, i8** %20, align 8
  %77 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %73, %struct.TYPE_11__* %74, i32 %75, i8* %76)
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %5, align 8
  br label %211

78:                                               ; preds = %68
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** @svn_client_conflict_option_incoming_added_dir_replace, align 8
  %81 = icmp eq i8* %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %85 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %86 = load i8*, i8** %20, align 8
  %87 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %83, %struct.TYPE_11__* %84, i32 %85, i8* %86)
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %5, align 8
  br label %211

88:                                               ; preds = %78
  %89 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %91 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i8*, i8** %11, align 8
  %93 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %89, %struct.TYPE_11__* %90, i32 %91, i8* %92)
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %5, align 8
  br label %211

94:                                               ; preds = %62, %4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %99 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %98)
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %5, align 8
  br label %211

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %16, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %101
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** @svn_client_conflict_option_incoming_add_ignore, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %111 = call i32 @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i8*, i8** %20, align 8
  %113 = load i64, i64* %16, align 8
  %114 = call i32 @svn_node_kind_to_word(i64 %113)
  %115 = load i64, i64* %19, align 8
  %116 = call i32 @svn_node_kind_to_word(i64 %115)
  %117 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %110, %struct.TYPE_11__* null, i32 %111, i8* %112, i32 %114, i32 %116)
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %5, align 8
  br label %211

118:                                              ; preds = %105
  %119 = load i8*, i8** %11, align 8
  %120 = load i8*, i8** @svn_client_conflict_option_incoming_added_dir_replace, align 8
  %121 = icmp eq i8* %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %124 = call i32 @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i8*, i8** %20, align 8
  %126 = load i64, i64* %16, align 8
  %127 = call i32 @svn_node_kind_to_word(i64 %126)
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @svn_node_kind_to_word(i64 %128)
  %130 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %123, %struct.TYPE_11__* null, i32 %124, i8* %125, i32 %127, i32 %129)
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %5, align 8
  br label %211

131:                                              ; preds = %118
  %132 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %133 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i8*, i8** %11, align 8
  %135 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %132, %struct.TYPE_11__* null, i32 %133, i8* %134)
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %5, align 8
  br label %211

136:                                              ; preds = %101
  %137 = load i8*, i8** %17, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = call i64 @strcmp(i8* %137, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %18, align 8
  %143 = load i64, i64* %15, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %176

145:                                              ; preds = %141, %136
  %146 = load i8*, i8** %11, align 8
  %147 = load i8*, i8** @svn_client_conflict_option_incoming_add_ignore, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %151 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i8*, i8** %20, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load i64, i64* %18, align 8
  %157 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %150, %struct.TYPE_11__* null, i32 %151, i8* %152, i8* %153, i64 %154, i8* %155, i64 %156)
  store %struct.TYPE_11__* %157, %struct.TYPE_11__** %5, align 8
  br label %211

158:                                              ; preds = %145
  %159 = load i8*, i8** %11, align 8
  %160 = load i8*, i8** @svn_client_conflict_option_incoming_added_dir_replace, align 8
  %161 = icmp eq i8* %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %164 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i8*, i8** %20, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = load i64, i64* %15, align 8
  %168 = load i8*, i8** %17, align 8
  %169 = load i64, i64* %18, align 8
  %170 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %163, %struct.TYPE_11__* null, i32 %164, i8* %165, i8* %166, i64 %167, i8* %168, i64 %169)
  store %struct.TYPE_11__* %170, %struct.TYPE_11__** %5, align 8
  br label %211

171:                                              ; preds = %158
  %172 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %173 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %174 = load i8*, i8** %11, align 8
  %175 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %172, %struct.TYPE_11__* null, i32 %173, i8* %174)
  store %struct.TYPE_11__* %175, %struct.TYPE_11__** %5, align 8
  br label %211

176:                                              ; preds = %141
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i8*, i8** %10, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @svn_wc__node_is_added(i32* %21, i32 %179, i8* %180, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  %184 = load i32, i32* %21, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %209, label %186

186:                                              ; preds = %176
  %187 = load i8*, i8** %11, align 8
  %188 = load i8*, i8** @svn_client_conflict_option_incoming_add_ignore, align 8
  %189 = icmp eq i8* %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %192 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0))
  %193 = load i8*, i8** %20, align 8
  %194 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %191, %struct.TYPE_11__* null, i32 %192, i8* %193)
  store %struct.TYPE_11__* %194, %struct.TYPE_11__** %5, align 8
  br label %211

195:                                              ; preds = %186
  %196 = load i8*, i8** %11, align 8
  %197 = load i8*, i8** @svn_client_conflict_option_incoming_added_dir_replace, align 8
  %198 = icmp eq i8* %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %201 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0))
  %202 = load i8*, i8** %20, align 8
  %203 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %200, %struct.TYPE_11__* null, i32 %201, i8* %202)
  store %struct.TYPE_11__* %203, %struct.TYPE_11__** %5, align 8
  br label %211

204:                                              ; preds = %195
  %205 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %206 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %207 = load i8*, i8** %11, align 8
  %208 = call %struct.TYPE_11__* (i32, %struct.TYPE_11__*, i32, i8*, ...) @svn_error_createf(i32 %205, %struct.TYPE_11__* null, i32 %206, i8* %207)
  store %struct.TYPE_11__* %208, %struct.TYPE_11__** %5, align 8
  br label %211

209:                                              ; preds = %176
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %210, %struct.TYPE_11__** %5, align 8
  br label %211

211:                                              ; preds = %209, %204, %199, %190, %171, %162, %149, %131, %122, %109, %97, %88, %82, %72
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %212
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i8* @svn_client_conflict_option_get_id(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i64*, i64*, i32*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @svn_wc__node_get_base(i64*, i64*, i8**, i32*, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_createf(i32, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_node_kind_to_word(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_wc__node_is_added(i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
