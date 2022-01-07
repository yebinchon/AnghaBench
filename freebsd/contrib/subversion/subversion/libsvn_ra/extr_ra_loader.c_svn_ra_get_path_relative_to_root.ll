; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_path_relative_to_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_get_path_relative_to_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8**, i32*)* }

@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"'%s' isn't a child of repository root URL '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_get_path_relative_to_root(%struct.TYPE_6__* %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_6__*, i8**, i32*)*, i32 (%struct.TYPE_6__*, i8**, i32*)** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 %15(%struct.TYPE_6__* %16, i8** %10, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i8* @svn_uri_skip_ancestor(i8* %20, i8* %21, i32* %22)
  %24 = load i8**, i8*** %7, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32* @svn_error_createf(i32 %29, i32* null, i32 %30, i8* %31, i8* %32)
  store i32* %33, i32** %5, align 8
  br label %36

34:                                               ; preds = %4
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32*, i32** %5, align 8
  ret i32* %37
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
