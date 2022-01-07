; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_make_revision_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_make_revision_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton = type { i64, i32, i32*, i32, %struct.parse_baton* }
%struct.parse_baton = type { i64, i64 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_REPOS_DUMPFILE_REVISION_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.revision_baton* (i32*, %struct.parse_baton*, i32*)* @make_revision_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.revision_baton* @make_revision_baton(i32* %0, %struct.parse_baton* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.parse_baton*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.revision_baton*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.parse_baton* %1, %struct.parse_baton** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.revision_baton* @apr_pcalloc(i32* %9, i32 40)
  store %struct.revision_baton* %10, %struct.revision_baton** %7, align 8
  %11 = load %struct.parse_baton*, %struct.parse_baton** %5, align 8
  %12 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %13 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %12, i32 0, i32 4
  store %struct.parse_baton* %11, %struct.parse_baton** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %16 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %18 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %19 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %21 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @apr_array_make(i32* %22, i32 8, i32 4)
  %24 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %25 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @SVN_REPOS_DUMPFILE_REVISION_NUMBER, align 4
  %28 = call i8* @svn_hash_gets(i32* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %63

30:                                               ; preds = %3
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @SVN_STR_TO_REV(i8* %31)
  %33 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %34 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.parse_baton*, %struct.parse_baton** %5, align 8
  %36 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @SVN_IS_VALID_REVNUM(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %42 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.parse_baton*, %struct.parse_baton** %5, align 8
  %45 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %50 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.parse_baton*, %struct.parse_baton** %5, align 8
  %53 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br label %56

56:                                               ; preds = %48, %40
  %57 = phi i1 [ true, %40 ], [ %55, %48 ]
  br label %58

58:                                               ; preds = %56, %30
  %59 = phi i1 [ false, %30 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  %61 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %62 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %3
  %64 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  ret %struct.revision_baton* %64
}

declare dso_local %struct.revision_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i64 @SVN_STR_TO_REV(i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
