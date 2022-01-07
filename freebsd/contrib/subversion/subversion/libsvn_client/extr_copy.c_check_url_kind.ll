; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_check_url_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_check_url_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_url_kind_baton = type { i32, i32, i32 }

@svn_node_none = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32, i32*)* @check_url_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_url_kind(i8* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.check_url_kind_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.check_url_kind_baton*
  store %struct.check_url_kind_baton* %13, %struct.check_url_kind_baton** %11, align 8
  %14 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %15 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @svn_uri__is_ancestor(i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @svn_node_none, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %42

23:                                               ; preds = %5
  %24 = load i32, i32* @TRUE, align 4
  %25 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %26 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %28 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @svn_ra_reparent(i32 %29, i8* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %35 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @svn_ra_check_path(i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  br label %42

42:                                               ; preds = %23, %20
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %43
}

declare dso_local i32 @svn_uri__is_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_reparent(i32, i8*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
