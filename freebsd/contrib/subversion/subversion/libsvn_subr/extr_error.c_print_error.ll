; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_error.c_print_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_error.c_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%sE%06d: %s\0A\00", align 1
@APR_OS_START_USEERR = common dso_local global i32 0, align 4
@APR_OS_START_CANONERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't recode error string from APR\00", align 1
@SVN_FILE_LINE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i8*)* @print_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error(%struct.TYPE_8__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call i64 @svn_error__is_tracing_link(%struct.TYPE_8__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %80

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call %struct.TYPE_8__* (i32*, i32, i8*, ...) @svn_cmdline_fprintf(i32* %20, i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27, i8* %30)
  %32 = call i32 @svn_error_clear(%struct.TYPE_8__* %31)
  br label %79

33:                                               ; preds = %14
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @APR_OS_START_USEERR, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @APR_OS_START_CANONERR, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %50 = call i8* @svn_strerror(i32 %48, i8* %49, i32 256)
  store i8* %50, i8** %8, align 8
  br label %67

51:                                               ; preds = %39, %33
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %56 = call i32 @apr_strerror(i32 %54, i8* %55, i32 256)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_8__* @svn_utf_cstring_to_utf8(i8** %8, i32 %56, i32 %59)
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %9, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = call i32 @svn_error_clear(%struct.TYPE_8__* %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %62, %51
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call %struct.TYPE_8__* (i32*, i32, i8*, ...) @svn_cmdline_fprintf(i32* %68, i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %75, i8* %76)
  %78 = call i32 @svn_error_clear(%struct.TYPE_8__* %77)
  br label %79

79:                                               ; preds = %67, %19
  br label %80

80:                                               ; preds = %79, %13
  ret void
}

declare dso_local i64 @svn_error__is_tracing_link(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_cmdline_fprintf(i32*, i32, i8*, ...) #1

declare dso_local i8* @svn_strerror(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @svn_utf_cstring_to_utf8(i8**, i32, i32) #1

declare dso_local i32 @apr_strerror(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
