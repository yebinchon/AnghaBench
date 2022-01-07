; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_create_checkout_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_create_checkout_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"D:checkout\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xmlns:D\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"D:activity-set\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"D:href\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"D:apply-to-version\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_checkout_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_checkout_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32* @serf_bucket_aggregate_create(i32* %14)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @svn_ra_serf__add_xml_header_buckets(i32* %16, i32* %17)
  %19 = load i32*, i32** %12, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @SVN_VA_NULL, align 4
  %22 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %19, i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @SVN_VA_NULL, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %23, i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @SVN_VA_NULL, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %29, i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @svn_ra_serf__add_cdata_len_buckets(i32* %39, i32* %40, i8* %41, i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %45, i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %48, i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @SVN_VA_NULL, align 4
  %54 = call i32 @svn_ra_serf__add_empty_tag_buckets(i32* %51, i32* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %55, i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %58 = load i32*, i32** %12, align 8
  %59 = load i32**, i32*** %6, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %60
}

declare dso_local i32* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @svn_ra_serf__add_xml_header_buckets(i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, ...) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_ra_serf__add_cdata_len_buckets(i32*, i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

declare dso_local i32 @svn_ra_serf__add_empty_tag_buckets(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
