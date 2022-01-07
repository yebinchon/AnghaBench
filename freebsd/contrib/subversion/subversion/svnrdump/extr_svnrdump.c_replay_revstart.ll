; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_replay_revstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_replay_revstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_baton = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@check_cancel = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i32**, i8**, i32*, i32*)* @replay_revstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replay_revstart(i32 %0, i8* %1, i32** %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.replay_baton*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.replay_baton*
  store %struct.replay_baton* %16, %struct.replay_baton** %13, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @svn_rdump__normalize_props(i32** %14, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.replay_baton*, %struct.replay_baton** %13, align 8
  %22 = getelementptr inbounds %struct.replay_baton, %struct.replay_baton* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_repos__dump_revision_record(i32 %23, i32 %24, i32* null, i32* %25, i32 %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32**, i32*** %9, align 8
  %31 = load i8**, i8*** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.replay_baton*, %struct.replay_baton** %13, align 8
  %34 = getelementptr inbounds %struct.replay_baton, %struct.replay_baton* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.replay_baton*, %struct.replay_baton** %13, align 8
  %37 = getelementptr inbounds %struct.replay_baton, %struct.replay_baton* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @check_cancel, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_rdump__get_dump_editor(i32** %30, i8** %31, i32 %32, i32 %35, i32 %38, i32* null, i32 %39, i32* null, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %43
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_rdump__normalize_props(i32**, i32*, i32*) #1

declare dso_local i32 @svn_repos__dump_revision_record(i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_rdump__get_dump_editor(i32**, i8**, i32, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
