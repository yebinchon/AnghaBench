; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_deleted_rev.c_create_getdrev_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_deleted_rev.c_create_getdrev_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"S:get-deleted-rev-report\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xmlns:S\00", align 1
@SVN_XML_NAMESPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"xmlns:D\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"S:path\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"S:peg-revision\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"S:end-revision\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_getdrev_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_getdrev_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @serf_bucket_aggregate_create(i32* %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @SVN_XML_NAMESPACE, align 4
  %20 = load i32, i32* @SVN_VA_NULL, align 4
  %21 = call i32 @svn_ra_serf__add_open_tag_buckets(i32* %17, i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @svn_ra_serf__add_tag_buckets(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %25, i32* %26)
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @apr_ltoa(i32* %29, i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @svn_ra_serf__add_tag_buckets(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %33, i32* %34)
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @apr_ltoa(i32* %37, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @svn_ra_serf__add_tag_buckets(i32* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %44, i32* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %11, align 8
  %48 = load i32**, i32*** %6, align 8
  store i32* %47, i32** %48, align 8
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i32* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @svn_ra_serf__add_tag_buckets(i32*, i8*, i32, i32*) #1

declare dso_local i32 @apr_ltoa(i32*, i32) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
