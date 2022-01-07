; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blame.c_create_file_revs_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blame.c_create_file_revs_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"S:file-revs-report\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xmlns:S\00", align 1
@SVN_XML_NAMESPACE = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"S:start-revision\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"S:end-revision\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"S:include-merged-revisions\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"S:path\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_file_revs_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_file_revs_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  %21 = call i32 @svn_ra_serf__add_open_tag_buckets(i32* %17, i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @apr_ltoa(i32* %23, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @svn_ra_serf__add_tag_buckets(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @apr_ltoa(i32* %31, i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @svn_ra_serf__add_tag_buckets(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32* %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %5
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @SVN_VA_NULL, align 4
  %46 = call i32 @svn_ra_serf__add_empty_tag_buckets(i32* %43, i32* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %5
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @svn_ra_serf__add_tag_buckets(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %51, i32* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %54, i32* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %57 = load i32*, i32** %11, align 8
  %58 = load i32**, i32*** %6, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @svn_ra_serf__add_tag_buckets(i32*, i8*, i32, i32*) #1

declare dso_local i32 @apr_ltoa(i32*, i32) #1

declare dso_local i32 @svn_ra_serf__add_empty_tag_buckets(i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
