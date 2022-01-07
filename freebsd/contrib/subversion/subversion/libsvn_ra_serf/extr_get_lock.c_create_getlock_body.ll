; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_lock.c_create_getlock_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_lock.c_create_getlock_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"propfind\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"xmlns\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lockdiscovery\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_getlock_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_getlock_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32* @serf_bucket_aggregate_create(i32* %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @svn_ra_serf__add_xml_header_buckets(i32* %14, i32* %15)
  %17 = load i32*, i32** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @SVN_VA_NULL, align 4
  %20 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %17, i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @SVN_VA_NULL, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %21, i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @SVN_VA_NULL, align 4
  %30 = call i32 @svn_ra_serf__add_empty_tag_buckets(i32* %27, i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %31, i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %34, i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %11, align 8
  %38 = load i32**, i32*** %6, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i32* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @svn_ra_serf__add_xml_header_buckets(i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, ...) #1

declare dso_local i32 @svn_ra_serf__add_empty_tag_buckets(i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
