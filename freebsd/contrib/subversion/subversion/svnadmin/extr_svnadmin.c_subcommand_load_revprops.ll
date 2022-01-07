; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_load_revprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_load_revprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.svnadmin_opt_state = type { i64, i32, i32, i32, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@repos_notify_handler = common dso_local global i32* null, align 8
@check_cancel = common dso_local global i32 0, align 4
@SVN_ERR_BAD_PROPERTY_VALUE_EOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"A property with invalid line ending found in dumpstream; consider using --normalize-props while loading.\00", align 1
@SVN_ERR_BAD_PROPERTY_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [123 x i8] c"Invalid property value found in dumpstream; consider repairing the source or using --bypass-prop-validation while loading.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i8*, i32*)* @subcommand_load_revprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @subcommand_load_revprops(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.svnadmin_opt_state*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %16, %struct.svnadmin_opt_state** %9, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @parse_args(i32* null, i32* %17, i32 0, i32 0, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %22 = call i32 @get_load_range(i32* %11, i32* %12, %struct.svnadmin_opt_state* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %25 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @open_repos(i32** %10, i32 %26, %struct.svnadmin_opt_state* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %32 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %37 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @svn_stream_open_readonly(i32** %13, i64 %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %48

43:                                               ; preds = %3
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @svn_stream_for_stdin2(i32** %13, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %50 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @stdout, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @recode_stream_create(i32 %54, i32* %55)
  store i32* %56, i32** %14, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %63 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %69 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %72 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %9, align 8
  %75 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %57
  br label %81

79:                                               ; preds = %57
  %80 = load i32*, i32** @repos_notify_handler, align 8
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32* [ null, %78 ], [ %80, %79 ]
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* @check_cancel, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call %struct.TYPE_7__* @svn_repos_load_fs_revprops(i32* %58, i32* %59, i32 %60, i32 %61, i32 %67, i32 %70, i32 %73, i32* %82, i32* %83, i32 %84, i32* null, i32* %85)
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %8, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = load i32, i32* @SVN_ERR_BAD_PROPERTY_VALUE_EOL, align 4
  %89 = call i64 @svn_error_find_cause(%struct.TYPE_7__* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  %94 = call %struct.TYPE_7__* @svn_error_quick_wrap(%struct.TYPE_7__* %92, i32 %93)
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %4, align 8
  br label %111

95:                                               ; preds = %81
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = icmp ne %struct.TYPE_7__* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SVN_ERR_BAD_PROPERTY_VALUE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = call i32 @_(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.1, i64 0, i64 0))
  %107 = call %struct.TYPE_7__* @svn_error_quick_wrap(%struct.TYPE_7__* %105, i32 %106)
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %4, align 8
  br label %111

108:                                              ; preds = %98, %95
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %4, align 8
  br label %111

111:                                              ; preds = %109, %104, %91
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %112
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_args(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @get_load_range(i32*, i32*, %struct.svnadmin_opt_state*) #1

declare dso_local i32 @open_repos(i32**, i32, %struct.svnadmin_opt_state*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i64, i32*, i32*) #1

declare dso_local i32 @svn_stream_for_stdin2(i32**, i32, i32*) #1

declare dso_local i32* @recode_stream_create(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_repos_load_fs_revprops(i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @svn_error_find_cause(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @svn_error_quick_wrap(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
