; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_read_specialfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_read_specialfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@APR_FINFO_MIN = common dso_local global i32 0, align 4
@APR_FINFO_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"link %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_subst_read_specialfile(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @APR_FINFO_MIN, align 4
  %13 = load i32, i32* @APR_FINFO_LINK, align 4
  %14 = or i32 %12, %13
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @svn_io_stat(%struct.TYPE_6__* %9, i8* %11, i32 %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %40 [
    i32 128, label %20
    i32 129, label %27
  ]

20:                                               ; preds = %4
  %21 = load i32**, i32*** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @svn_stream_open_readonly(i32** %21, i8* %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  br label %42

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @svn_io_read_link(%struct.TYPE_5__** %10, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @svn_string_createf(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @svn_stream_from_string(i32 %36, i32* %37)
  %39 = load i32**, i32*** %5, align 8
  store i32* %38, i32** %39, align 8
  br label %42

40:                                               ; preds = %4
  %41 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %42

42:                                               ; preds = %40, %27, %20
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %43
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_stat(%struct.TYPE_6__*, i8*, i32, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_read_link(%struct.TYPE_5__**, i8*, i32*) #1

declare dso_local i32* @svn_stream_from_string(i32, i32*) #1

declare dso_local i32 @svn_string_createf(i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
