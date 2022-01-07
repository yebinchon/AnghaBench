; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_lock-cmd.c_get_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_lock-cmd.c_get_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i8* }

@SVN_ERR_CL_BAD_LOG_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Lock comment contains a zero byte\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, %struct.TYPE_10__*, i32*)* @get_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_comment(i8** %0, i32* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @strlen(i64 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load i32, i32* @SVN_ERR_CL_BAD_LOG_MESSAGE, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = call i32* @svn_error_create(i32 %29, i32* null, i32 %30)
  store i32* %31, i32** %5, align 8
  br label %70

32:                                               ; preds = %15
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call %struct.TYPE_9__* @svn_string_create(i64 %37, i32* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %10, align 8
  br label %55

40:                                               ; preds = %4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call %struct.TYPE_9__* @svn_string_create(i64 %48, i32* %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %10, align 8
  br label %54

51:                                               ; preds = %40
  %52 = load i8**, i8*** %6, align 8
  store i8* null, i8** %52, align 8
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %5, align 8
  br label %70

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @svn_subst_translate_string2(%struct.TYPE_9__** %10, i32* null, i32* null, %struct.TYPE_9__* %56, i32 %59, i32 %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %55, %51, %28
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_9__* @svn_string_create(i64, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_subst_translate_string2(%struct.TYPE_9__**, i32*, i32*, %struct.TYPE_9__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
