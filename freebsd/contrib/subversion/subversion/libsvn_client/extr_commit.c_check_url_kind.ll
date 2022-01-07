; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_check_url_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_check_url_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_url_kind_baton = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
  %15 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %20 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @svn_uri__is_ancestor(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %18, %5
  %26 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %27 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %26, i32 0, i32 0
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %30 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %33 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_client_open_ra_session2(i32* %27, i8* %28, i32* null, i32 %31, i32 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %39 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %42 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %41, i32 0, i32 2
  %43 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %44 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @svn_ra_get_repos_root2(i32 %40, i32* %42, i32 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %56

48:                                               ; preds = %18
  %49 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %50 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @svn_ra_reparent(i32 %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %56

56:                                               ; preds = %48, %25
  %57 = load %struct.check_url_kind_baton*, %struct.check_url_kind_baton** %11, align 8
  %58 = getelementptr inbounds %struct.check_url_kind_baton, %struct.check_url_kind_baton* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @svn_ra_check_path(i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %60, i32* %61, i32* %62)
  %64 = call i32* @svn_error_trace(i32 %63)
  ret i32* %64
}

declare dso_local i32 @svn_uri__is_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_open_ra_session2(i32*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32, i32*, i32) #1

declare dso_local i32 @svn_ra_reparent(i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
