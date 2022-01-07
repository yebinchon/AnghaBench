; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_check_hook_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_check_hook_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SVN_ERR_REPOS_HOOK_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"'%s' hook succeeded, but error output could not be read\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"[Error output could not be translated from the native locale to UTF-8.]\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"[Error output could not be read.]\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"'%s' hook failed (did not exit cleanly: apr_exit_why_e was %d, exitcode was %d).  \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"start-commit\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"pre-commit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Commit\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"pre-revprop-change\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Revprop change\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pre-lock\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"pre-unlock\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Unlock\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"%s hook failed (exit code %d)\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"%s blocked by %s hook (exit code %d)\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c" with output:\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c" with no output.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i32*)* @check_hook_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_hook_result(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @svn_stringbuf_from_aprfile(%struct.TYPE_5__** %14, i32* %20, i32* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32* @svn_io_wait_for_cmd(i32* %23, i8* %24, i32* %17, i8** %18, i32* %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @svn_error_clear(i32* %30)
  %32 = load i32*, i32** %12, align 8
  %33 = call i32* @svn_error_trace(i32* %32)
  store i32* %33, i32** %6, align 8
  br label %153

34:                                               ; preds = %5
  %35 = load i8*, i8** %18, align 8
  %36 = call i64 @APR_PROC_CHECK_EXIT(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %17, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @SVN_ERR_REPOS_HOOK_FAILURE, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %7, align 8
  %49 = call i32* @svn_error_createf(i32 %45, i32* %46, i8* %47, i8* %48)
  store i32* %49, i32** %6, align 8
  br label %153

50:                                               ; preds = %41
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %6, align 8
  br label %153

52:                                               ; preds = %38, %34
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call i32* @svn_utf_cstring_to_utf8(i8** %16, i32 %58, i32* %59)
  store i32* %60, i32** %13, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  store i8* %64, i8** %16, align 8
  br label %65

65:                                               ; preds = %63, %55
  br label %68

66:                                               ; preds = %52
  %67 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i8* %67, i8** %16, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @svn_error_clear(i32* %69)
  %71 = load i8*, i8** %18, align 8
  %72 = call i64 @APR_PROC_CHECK_EXIT(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load i32*, i32** %11, align 8
  %76 = call i8* @_(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call %struct.TYPE_5__* (i32*, i8*, i8*, ...) @svn_stringbuf_createf(i32* %75, i8* %76, i8* %77, i8* %78, i32 %79)
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %15, align 8
  br label %130

81:                                               ; preds = %68
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %81
  %90 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %90, i8** %19, align 8
  br label %113

91:                                               ; preds = %85
  %92 = load i8*, i8** %7, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i8* %96, i8** %19, align 8
  br label %112

97:                                               ; preds = %91
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %102, i8** %19, align 8
  br label %111

103:                                              ; preds = %97
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  store i8* %108, i8** %19, align 8
  br label %110

109:                                              ; preds = %103
  store i8* null, i8** %19, align 8
  br label %110

110:                                              ; preds = %109, %107
  br label %111

111:                                              ; preds = %110, %101
  br label %112

112:                                              ; preds = %111, %95
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i8*, i8** %19, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32*, i32** %11, align 8
  %118 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call %struct.TYPE_5__* (i32*, i8*, i8*, ...) @svn_stringbuf_createf(i32* %117, i8* %118, i8* %119, i32 %120)
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %15, align 8
  br label %129

122:                                              ; preds = %113
  %123 = load i32*, i32** %11, align 8
  %124 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %125 = load i8*, i8** %19, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call %struct.TYPE_5__* (i32*, i8*, i8*, ...) @svn_stringbuf_createf(i32* %123, i8* %124, i8* %125, i8* %126, i32 %127)
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %15, align 8
  br label %129

129:                                              ; preds = %122, %116
  br label %130

130:                                              ; preds = %129, %74
  %131 = load i8*, i8** %16, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %137 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %138 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %136, i8* %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %139, i8* %140)
  br label %146

142:                                              ; preds = %130
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %144 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %145 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %143, i8* %144)
  br label %146

146:                                              ; preds = %142, %135
  %147 = load i32, i32* @SVN_ERR_REPOS_HOOK_FAILURE, align 4
  %148 = load i32*, i32** %12, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32* @svn_error_create(i32 %147, i32* %148, i32 %151)
  store i32* %152, i32** %6, align 8
  br label %153

153:                                              ; preds = %146, %50, %44, %29
  %154 = load i32*, i32** %6, align 8
  ret i32* %154
}

declare dso_local i32* @svn_stringbuf_from_aprfile(%struct.TYPE_5__**, i32*, i32*) #1

declare dso_local i32* @svn_io_wait_for_cmd(i32*, i8*, i32*, i8**, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i64 @APR_PROC_CHECK_EXIT(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @svn_utf_cstring_to_utf8(i8**, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_stringbuf_createf(i32*, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
