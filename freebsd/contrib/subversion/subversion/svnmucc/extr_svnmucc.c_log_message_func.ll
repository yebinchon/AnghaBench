; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnmucc/extr_svnmucc.c_log_message_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnmucc/extr_svnmucc.c_log_message_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_message_baton = type { i8*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error normalizing log message to internal format\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_CL_INSUFFICIENT_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Cannot invoke editor to get log message when non-interactive\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"svnmucc-commit\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i32*, i8*, i32*)* @log_message_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @log_message_func(i8** %0, i8** %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.log_message_baton*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.log_message_baton*
  store %struct.log_message_baton* %16, %struct.log_message_baton** %12, align 8
  %17 = load i8**, i8*** %8, align 8
  store i8* null, i8** %17, align 8
  %18 = load %struct.log_message_baton*, %struct.log_message_baton** %12, align 8
  %19 = getelementptr inbounds %struct.log_message_baton, %struct.log_message_baton* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %5
  %23 = load %struct.log_message_baton*, %struct.log_message_baton** %12, align 8
  %24 = getelementptr inbounds %struct.log_message_baton, %struct.log_message_baton* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call %struct.TYPE_9__* @svn_string_create(i8* %25, i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %13, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @svn_subst_translate_string2(%struct.TYPE_9__** %13, i32* null, i32* null, %struct.TYPE_9__* %28, i32* null, i32 %29, i32* %30, i32* %31)
  %33 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @SVN_ERR_W(i32 %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %6, align 8
  br label %78

40:                                               ; preds = %5
  %41 = load %struct.log_message_baton*, %struct.log_message_baton** %12, align 8
  %42 = getelementptr inbounds %struct.log_message_baton, %struct.log_message_baton* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @SVN_ERR_CL_INSUFFICIENT_ARGS, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32* @svn_error_create(i32 %46, i32* null, i32 %47)
  store i32* %48, i32** %6, align 8
  br label %78

49:                                               ; preds = %40
  %50 = load i32*, i32** %11, align 8
  %51 = call %struct.TYPE_9__* @svn_string_create(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %50)
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %14, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %53 = load %struct.log_message_baton*, %struct.log_message_baton** %12, align 8
  %54 = getelementptr inbounds %struct.log_message_baton, %struct.log_message_baton* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @svn_cmdline__edit_string_externally(%struct.TYPE_9__** %14, i32* null, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58, i32* null, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  br label %76

74:                                               ; preds = %64, %49
  %75 = load i8**, i8*** %7, align 8
  store i8* null, i8** %75, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %76, %45, %22
  %79 = load i32*, i32** %6, align 8
  ret i32* %79
}

declare dso_local %struct.TYPE_9__* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_subst_translate_string2(%struct.TYPE_9__**, i32*, i32*, %struct.TYPE_9__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline__edit_string_externally(%struct.TYPE_9__**, i32*, i32*, i8*, %struct.TYPE_9__*, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
