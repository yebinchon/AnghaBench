; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_mergeinfo_normalization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_mergeinfo_normalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.verify_mergeinfo_normalization_baton = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@normalized_unique = common dso_local global i8* null, align 8
@normalized_collision = common dso_local global i8* null, align 8
@svn_repos_notify_warning_mergeinfo_collision = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Duplicate representation of path '%s' in %s property of '%s'\00", align 1
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i8*, i32*)* @verify_mergeinfo_normalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_mergeinfo_normalization(i8* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.verify_mergeinfo_normalization_baton*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.verify_mergeinfo_normalization_baton*
  store %struct.verify_mergeinfo_normalization_baton* %16, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %21 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %20, i32 0, i32 3
  %22 = call i32 @svn_utf__normalize(i8** %13, i8* %18, i32 %19, %struct.TYPE_2__* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %25 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = call i8* @svn_hash_gets(i32 %26, i8* %27)
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %5
  %32 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %33 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %36 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @apr_pstrdup(i32 %38, i8* %39)
  %41 = load i8*, i8** @normalized_unique, align 8
  %42 = call i32 @svn_hash_sets(i32 %34, i32 %40, i8* %41)
  br label %76

43:                                               ; preds = %5
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** @normalized_collision, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %75

48:                                               ; preds = %43
  %49 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %50 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %53 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @apr_pstrdup(i32 %55, i8* %56)
  %58 = load i8*, i8** @normalized_collision, align 8
  %59 = call i32 @svn_hash_sets(i32 %51, i32 %57, i8* %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %62 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %65 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @svn_repos_notify_warning_mergeinfo_collision, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %71 = load %struct.verify_mergeinfo_normalization_baton*, %struct.verify_mergeinfo_normalization_baton** %11, align 8
  %72 = getelementptr inbounds %struct.verify_mergeinfo_normalization_baton, %struct.verify_mergeinfo_normalization_baton* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @notify_warning(i32* %60, i32 %63, i32 %66, i32 %67, i32 %68, i8* %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %48, %47
  br label %76

76:                                               ; preds = %75, %31
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_utf__normalize(i8**, i8*, i32, %struct.TYPE_2__*) #1

declare dso_local i8* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i8*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @notify_warning(i32*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
