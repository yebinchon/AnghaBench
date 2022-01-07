; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_update-cmd.c_svn_cl__update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_update-cmd.c_svn_cl__update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.svn_cl__check_externals_failed_notify_baton*, i32 }
%struct.svn_cl__check_externals_failed_notify_baton = type { %struct.svn_cl__check_externals_failed_notify_baton*, i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32*, %struct.TYPE_10__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i8* null, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_cl__check_externals_failed_notify_wrapper = common dso_local global i32 0, align 4
@SVN_ERR_CL_ERROR_PROCESSING_EXTERNALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Failure occurred processing one or more externals definitions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__update(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.svn_cl__check_externals_failed_notify_baton, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_11__*
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_11__*
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_11__*
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %10, align 8
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %33, i32** %18, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = load i8*, i8** @FALSE, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @svn_cl__args_to_target_array_print_reserved(i32** %11, i32* %34, i32 %37, %struct.TYPE_9__* %38, i8* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @svn_opt_push_implicit_dot_target(i32* %43, i32* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @svn_cl__eat_peg_revisions(i32** %11, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @svn_cl__check_targets_are_local_paths(i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %3
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %19, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* @svn_depth_unknown, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %65, i64* %19, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @svn_cl__changelist_paths(i32** %11, i64 %69, i32* %70, i64 %71, %struct.TYPE_9__* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %66, %3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @svn_depth_unknown, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load i8*, i8** @TRUE, align 8
  store i8* %87, i8** %13, align 8
  br label %93

88:                                               ; preds = %77
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %12, align 8
  %92 = load i8*, i8** @FALSE, align 8
  store i8* %92, i8** %13, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.svn_cl__check_externals_failed_notify_baton, %struct.svn_cl__check_externals_failed_notify_baton* %14, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.svn_cl__check_externals_failed_notify_baton*, %struct.svn_cl__check_externals_failed_notify_baton** %99, align 8
  %101 = getelementptr inbounds %struct.svn_cl__check_externals_failed_notify_baton, %struct.svn_cl__check_externals_failed_notify_baton* %14, i32 0, i32 0
  store %struct.svn_cl__check_externals_failed_notify_baton* %100, %struct.svn_cl__check_externals_failed_notify_baton** %101, align 8
  %102 = load i8*, i8** @FALSE, align 8
  %103 = getelementptr inbounds %struct.svn_cl__check_externals_failed_notify_baton, %struct.svn_cl__check_externals_failed_notify_baton* %14, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = load i32, i32* @svn_cl__check_externals_failed_notify_wrapper, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store %struct.svn_cl__check_externals_failed_notify_baton* %14, %struct.svn_cl__check_externals_failed_notify_baton** %108, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 7
  %112 = load i64, i64* %12, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @svn_client_update4(i32** %15, i32* %109, i32* %111, i64 %112, i8* %113, i32 %116, i32 %119, i32 %122, i32 %125, %struct.TYPE_9__* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = getelementptr inbounds %struct.svn_cl__check_externals_failed_notify_baton, %struct.svn_cl__check_externals_failed_notify_baton* %14, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %93
  %134 = load i32, i32* @SVN_ERR_CL_ERROR_PROCESSING_EXTERNALS, align 4
  %135 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %136 = call i32* @svn_error_create(i32 %134, i32* null, i32 %135)
  store i32* %136, i32** %18, align 8
  br label %137

137:                                              ; preds = %133, %93
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @svn_cl__conflict_stats_get_paths(i32** %16, i32* %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load i32*, i32** %16, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %137
  %146 = load i32*, i32** %16, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @svn_cl__walk_conflicts(i32* %146, i32* %147, %struct.TYPE_10__* %148, %struct.TYPE_9__* %149, i32* %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  br label %153

153:                                              ; preds = %145, %137
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %181, label %158

158:                                              ; preds = %153
  %159 = load i32*, i32** %11, align 8
  %160 = load i32*, i32** %15, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = call i32* @print_update_summary(i32* %159, i32* %160, i32* %161)
  store i32* %162, i32** %17, align 8
  %163 = load i32*, i32** %17, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32*, i32** %18, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = call i32* @svn_error_compose_create(i32* %166, i32* %167)
  store i32* %168, i32** %4, align 8
  br label %185

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.svn_cl__check_externals_failed_notify_baton, %struct.svn_cl__check_externals_failed_notify_baton* %14, i32 0, i32 0
  %171 = load %struct.svn_cl__check_externals_failed_notify_baton*, %struct.svn_cl__check_externals_failed_notify_baton** %170, align 8
  %172 = load i32*, i32** %7, align 8
  %173 = call i32* @svn_cl__notifier_print_conflict_stats(%struct.svn_cl__check_externals_failed_notify_baton* %171, i32* %172)
  store i32* %173, i32** %17, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32*, i32** %18, align 8
  %178 = load i32*, i32** %17, align 8
  %179 = call i32* @svn_error_compose_create(i32* %177, i32* %178)
  store i32* %179, i32** %4, align 8
  br label %185

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %153
  %182 = load i32*, i32** %18, align 8
  %183 = load i32*, i32** %17, align 8
  %184 = call i32* @svn_error_compose_create(i32* %182, i32* %183)
  store i32* %184, i32** %4, align 8
  br label %185

185:                                              ; preds = %181, %176, %165
  %186 = load i32*, i32** %4, align 8
  ret i32* %186
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cl__args_to_target_array_print_reserved(i32**, i32*, i32, %struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @svn_opt_push_implicit_dot_target(i32*, i32*) #1

declare dso_local i32 @svn_cl__eat_peg_revisions(i32**, i32*, i32*) #1

declare dso_local i32 @svn_cl__check_targets_are_local_paths(i32*) #1

declare dso_local i32 @svn_cl__changelist_paths(i32**, i64, i32*, i64, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @svn_client_update4(i32**, i32*, i32*, i64, i8*, i32, i32, i32, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cl__conflict_stats_get_paths(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_cl__walk_conflicts(i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32* @print_update_summary(i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_cl__notifier_print_conflict_stats(%struct.svn_cl__check_externals_failed_notify_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
