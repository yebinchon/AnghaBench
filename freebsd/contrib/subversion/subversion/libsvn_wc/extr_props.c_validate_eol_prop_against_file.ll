; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_validate_eol_prop_against_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_validate_eol_prop_against_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Can't set '%s': file '%s' has binary mime type property\00", align 1
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_IO_INCONSISTENT_EOL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"File '%s' has inconsistent newlines\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i8*, %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)*, i8*, i32*)* @validate_eol_prop_against_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @validate_eol_prop_against_file(i8* %0, %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)* %1, %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @svn_path_is_url(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  br label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i8* @svn_dirent_local_style(i8* %20, i32* %21)
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i8* [ %18, %17 ], [ %22, %19 ]
  store i8* %24, i8** %13, align 8
  %25 = load %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)*, %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call %struct.TYPE_15__* %25(%struct.TYPE_16__** %12, i32* null, i8* %26, i32* %27)
  %29 = call i32 @SVN_ERR(%struct.TYPE_15__* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @svn_mime_type_is_binary(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %13, align 8
  %45 = call %struct.TYPE_15__* (i32, %struct.TYPE_15__*, i32, i8*, ...) @svn_error_createf(i32 %39, %struct.TYPE_15__* null, i32 %40, i8* %43, i8* %44)
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %5, align 8
  br label %79

46:                                               ; preds = %32, %23
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @svn_stream_empty(i32* %47)
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @svn_subst_stream_translated(i32 %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32* null, i32 %50, i32* %51)
  store i32* %52, i32** %10, align 8
  %53 = load %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)*, %struct.TYPE_15__* (%struct.TYPE_16__**, i32*, i8*, i32*)** %7, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call %struct.TYPE_15__* %53(%struct.TYPE_16__** null, i32* %54, i8* %55, i32* %56)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %11, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @svn_stream_close(i32* %59)
  %61 = call %struct.TYPE_15__* @svn_error_compose_create(%struct.TYPE_15__* %58, i32 %60)
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %11, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = icmp ne %struct.TYPE_15__* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %46
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SVN_ERR_IO_INCONSISTENT_EOL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i8*, i8** %13, align 8
  %75 = call %struct.TYPE_15__* (i32, %struct.TYPE_15__*, i32, i8*, ...) @svn_error_createf(i32 %71, %struct.TYPE_15__* %72, i32 %73, i8* %74)
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %5, align 8
  br label %79

76:                                               ; preds = %64, %46
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %77)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %5, align 8
  br label %79

79:                                               ; preds = %76, %70, %38
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %80
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_15__*) #1

declare dso_local i64 @svn_mime_type_is_binary(i32) #1

declare dso_local %struct.TYPE_15__* @svn_error_createf(i32, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_subst_stream_translated(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_empty(i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_compose_create(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
