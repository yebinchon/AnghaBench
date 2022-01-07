; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@svn_opt_revision_number = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No commits in repository\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @svn_client_log(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32 %3, i32 %4, i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)* %5, i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %19, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)*, i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)** %15, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = call %struct.TYPE_16__* @svn_client_log2(i32* %21, %struct.TYPE_15__* %22, %struct.TYPE_15__* %23, i32 0, i32 %24, i32 %25, i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)* %26, i8* %27, i32* %28, i32* %29)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %19, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %32 = icmp ne %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %9
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SVN_ERR_FS_NO_SUCH_REVISION, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @svn_opt_revision_head, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @svn_opt_revision_number, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %59 = call i32 @svn_error_clear(%struct.TYPE_16__* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %19, align 8
  %61 = load i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)*, i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)** %15, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32*, i32** %18, align 8
  %65 = call i32 %61(i8* %62, i32* null, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  br label %67

67:                                               ; preds = %57, %51, %45, %39, %33, %9
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %69 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %68)
  ret %struct.TYPE_16__* %69
}

declare dso_local %struct.TYPE_16__* @svn_client_log2(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32, i32 (i8*, i32*, i32, i8*, i8*, i32, i32*)*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
