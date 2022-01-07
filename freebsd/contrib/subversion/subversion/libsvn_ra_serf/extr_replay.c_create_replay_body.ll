; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_create_replay_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_create_replay_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_report_t = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"S:replay-report\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"xmlns:S\00", align 1
@SVN_XML_NAMESPACE = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"S:include-path\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"S:revision\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"S:low-water-mark\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"S:send-deltas\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_replay_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_replay_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.revision_report_t*, align 8
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.revision_report_t*
  store %struct.revision_report_t* %14, %struct.revision_report_t** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @serf_bucket_aggregate_create(i32* %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @SVN_XML_NAMESPACE, align 4
  %20 = load i32, i32* @SVN_VA_NULL, align 4
  %21 = call i32 @svn_ra_serf__add_open_tag_buckets(i32* %17, i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.revision_report_t*, %struct.revision_report_t** %11, align 8
  %23 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.revision_report_t*, %struct.revision_report_t** %11, align 8
  %29 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @svn_ra_serf__add_tag_buckets(i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %30, i32* %31)
  br label %42

33:                                               ; preds = %5
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.revision_report_t*, %struct.revision_report_t** %11, align 8
  %37 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @apr_ltoa(i32* %35, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @svn_ra_serf__add_tag_buckets(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %39, i32* %40)
  br label %42

42:                                               ; preds = %33, %26
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.revision_report_t*, %struct.revision_report_t** %11, align 8
  %46 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @apr_ltoa(i32* %44, i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @svn_ra_serf__add_tag_buckets(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %48, i32* %49)
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.revision_report_t*, %struct.revision_report_t** %11, align 8
  %54 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @apr_ltoa(i32* %52, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @svn_ra_serf__add_tag_buckets(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %56, i32* %57)
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %59, i32* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %12, align 8
  %63 = load i32**, i32*** %6, align 8
  store i32* %62, i32** %63, align 8
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local i32* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @svn_ra_serf__add_tag_buckets(i32*, i8*, i64, i32*) #1

declare dso_local i64 @apr_ltoa(i32*, i32) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
