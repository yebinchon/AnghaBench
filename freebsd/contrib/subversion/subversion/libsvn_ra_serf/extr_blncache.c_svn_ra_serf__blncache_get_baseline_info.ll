; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blncache.c_svn_ra_serf__blncache_get_baseline_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blncache.c_svn_ra_serf__blncache_get_baseline_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__blncache_get_baseline_info(i8** %0, i32* %1, %struct.TYPE_5__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = call %struct.TYPE_6__* @svn_hash_gets(i32 %14, i8* %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @apr_pstrdup(i32* %20, i32 %23)
  %25 = load i8**, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %34

30:                                               ; preds = %5
  %31 = load i8**, i8*** %6, align 8
  store i8* null, i8** %31, align 8
  %32 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %19
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %35
}

declare dso_local %struct.TYPE_6__* @svn_hash_gets(i32, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
