; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_serf.c_serf__rev_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_serf.c_serf__rev_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s/%ld\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@svn_ra_serf__deliver_svn_props = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32, i32*, i32**, i32*, i32*)* @serf__rev_proplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @serf__rev_proplist(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %13, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %21 = call i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_8__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @apr_psprintf(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  store i8* %29, i8** %15, align 8
  %30 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %6
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @svn_ra_serf__discover_vcc(i8** %15, %struct.TYPE_8__* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  br label %36

36:                                               ; preds = %31, %23
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @apr_hash_make(i32* %37)
  store i32* %38, i32** %14, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @svn_ra_serf__deliver_svn_props, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @svn_ra_serf__create_propfind_handler(i32** %16, %struct.TYPE_8__* %39, i8* %40, i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %42, i32 %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %16, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @svn_ra_serf__context_run_one(i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @svn_ra_serf__keep_only_regular_props(i32* %52, i32* %53)
  %55 = load i32*, i32** %14, align 8
  %56 = load i32**, i32*** %10, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %57
}

declare dso_local i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_8__*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__discover_vcc(i8**, %struct.TYPE_8__*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_ra_serf__create_propfind_handler(i32**, %struct.TYPE_8__*, i8*, i32, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__keep_only_regular_props(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
