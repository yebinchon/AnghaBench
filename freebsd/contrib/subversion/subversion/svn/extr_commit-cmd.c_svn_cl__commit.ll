; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_commit-cmd.c_svn_cl__commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_commit-cmd.c_svn_cl__commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.copy_warning_notify_baton*, i32, i64, i32 }
%struct.copy_warning_notify_baton = type { i64, i8*, %struct.copy_warning_notify_baton*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_17__* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Commit targets must be local paths\00", align 1
@TRUE = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_MISCELLANY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_NO_UNLOCK = common dso_local global i32 0, align 4
@copy_warning_notify_func = common dso_local global i32 0, align 4
@svn_cl__print_commit_info = common dso_local global i32* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__commit(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.copy_warning_notify_baton, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_18__*
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_18__*
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %9, align 8
  %26 = load i8*, i8** @FALSE, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_19__** %10, i32* %27, i32 %30, %struct.TYPE_16__* %31, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %37 = call i32 @svn_cl__check_targets_are_local_paths(%struct.TYPE_19__* %36)
  %38 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @SVN_ERR_W(i32 %37, i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @svn_opt_push_implicit_dot_target(%struct.TYPE_19__* %40, i32* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @svn_cl__eat_peg_revisions(%struct.TYPE_19__** %10, %struct.TYPE_19__* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @svn_dirent_condense_targets(i8** %12, %struct.TYPE_19__** %11, %struct.TYPE_19__* %47, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = icmp ne %struct.TYPE_19__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %3
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %55, %3
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @svn_wc_get_actual_target2(i8** %16, i8** %17, i32 %63, i8* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i8*, i8** %17, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i8* @apr_pstrdup(i32* %73, i8* %74)
  store i8* %75, i8** %12, align 8
  br label %76

76:                                               ; preds = %72, %60
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @svn_depth_unknown, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i64, i64* @svn_depth_infinity, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %97 = call i32* @svn_hash_gets(i64 %95, i32 %96)
  br label %99

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %92
  %100 = phi i32* [ %97, %92 ], [ null, %98 ]
  store i32* %100, i32** %13, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %106 = load i32, i32* @SVN_CONFIG_OPTION_NO_UNLOCK, align 4
  %107 = load i8*, i8** @FALSE, align 8
  %108 = call i32 @svn_config_get_bool(i32* %104, i8** %14, i32 %105, i32 %106, i8* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  br label %110

110:                                              ; preds = %103, %99
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @svn_cl__make_log_msg_baton(i32* %112, %struct.TYPE_17__* %113, i8* %114, i64 %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @svn_depth_infinity, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %110
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %15, i32 0, i32 3
  store i32 %129, i32* %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.copy_warning_notify_baton*, %struct.copy_warning_notify_baton** %132, align 8
  %134 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %15, i32 0, i32 2
  store %struct.copy_warning_notify_baton* %133, %struct.copy_warning_notify_baton** %134, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %15, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  %139 = load i8*, i8** @FALSE, align 8
  %140 = getelementptr inbounds %struct.copy_warning_notify_baton, %struct.copy_warning_notify_baton* %15, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = load i32, i32* @copy_warning_notify_func, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  store %struct.copy_warning_notify_baton* %15, %struct.copy_warning_notify_baton** %145, align 8
  br label %146

146:                                              ; preds = %126, %110
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @TRUE, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %146
  br label %175

173:                                              ; preds = %146
  %174 = load i32*, i32** @svn_cl__print_commit_info, align 8
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i32* [ null, %172 ], [ %174, %173 ]
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %178 = load i32*, i32** %6, align 8
  %179 = call i32* @svn_client_commit6(%struct.TYPE_19__* %147, i64 %150, i8* %151, i32 %154, i32 %155, i32 %158, i32 %161, i32 %164, i32 %167, i32* %176, i32* null, %struct.TYPE_16__* %177, i32* %178)
  store i32* %179, i32** %7, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @svn_cl__cleanup_log_msg(i32 %182, i32* %183, i32* %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  %187 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %187
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_19__**, i32*, i32, %struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_cl__check_targets_are_local_paths(%struct.TYPE_19__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_opt_push_implicit_dot_target(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_cl__eat_peg_revisions(%struct.TYPE_19__**, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_dirent_condense_targets(i8**, %struct.TYPE_19__**, %struct.TYPE_19__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc_get_actual_target2(i8**, i8**, i32, i8*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @svn_hash_gets(i64, i32) #1

declare dso_local i32 @svn_config_get_bool(i32*, i8**, i32, i32, i8*) #1

declare dso_local i32 @svn_cl__make_log_msg_baton(i32*, %struct.TYPE_17__*, i8*, i64, i32*) #1

declare dso_local i32* @svn_client_commit6(%struct.TYPE_19__*, i64, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_cl__cleanup_log_msg(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
