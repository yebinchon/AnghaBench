; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_options_response_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_options_response_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* (i32*, i32*, i32, i32*)*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@SVN_RA_CAPABILITY_PARTIAL_REPLAY = common dso_local global i32 0, align 4
@capability_no = common dso_local global i32* null, align 8
@SVN_RA_CAPABILITY_DEPTH = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_MERGEINFO = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_LOG_REVPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_INHERITED_PROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_LIST = common dso_local global i32 0, align 4
@capabilities_headers_iterator_callback = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*)* @options_response_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @options_response_handler(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %105, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %10, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @serf_bucket_response_get_headers(i32* %23)
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SVN_RA_CAPABILITY_PARTIAL_REPLAY, align 4
  %29 = load i32*, i32** @capability_no, align 8
  %30 = call i32 @svn_hash_sets(i32 %27, i32 %28, i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SVN_RA_CAPABILITY_DEPTH, align 4
  %35 = load i32*, i32** @capability_no, align 8
  %36 = call i32 @svn_hash_sets(i32 %33, i32 %34, i32* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SVN_RA_CAPABILITY_MERGEINFO, align 4
  %41 = call i32 @svn_hash_sets(i32 %39, i32 %40, i32* null)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SVN_RA_CAPABILITY_LOG_REVPROPS, align 4
  %46 = load i32*, i32** @capability_no, align 8
  %47 = call i32 @svn_hash_sets(i32 %44, i32 %45, i32* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %52 = load i32*, i32** @capability_no, align 8
  %53 = call i32 @svn_hash_sets(i32 %50, i32 %51, i32* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SVN_RA_CAPABILITY_INHERITED_PROPS, align 4
  %58 = load i32*, i32** @capability_no, align 8
  %59 = call i32 @svn_hash_sets(i32 %56, i32 %57, i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS, align 4
  %64 = load i32*, i32** @capability_no, align 8
  %65 = call i32 @svn_hash_sets(i32 %62, i32 %63, i32* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE, align 4
  %70 = load i32*, i32** @capability_no, align 8
  %71 = call i32 @svn_hash_sets(i32 %68, i32 %69, i32* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SVN_RA_CAPABILITY_LIST, align 4
  %76 = load i32*, i32** @capability_no, align 8
  %77 = call i32 @svn_hash_sets(i32 %74, i32 %75, i32* %76)
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* @capabilities_headers_iterator_callback, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = call i32 @serf_bucket_headers_do(i32* %78, i32 %79, %struct.TYPE_5__* %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SVN_RA_CAPABILITY_MERGEINFO, align 4
  %86 = call i32 @svn_hash_gets(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %19
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SVN_RA_CAPABILITY_MERGEINFO, align 4
  %93 = load i32*, i32** @capability_no, align 8
  %94 = call i32 @svn_hash_sets(i32 %91, i32 %92, i32* %93)
  br label %95

95:                                               ; preds = %88, %19
  %96 = load i32*, i32** %5, align 8
  %97 = call i32* @serf_request_get_conn(i32* %96)
  store i32* %97, i32** %12, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @serf_connection_get_latency(i32* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* @TRUE, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %95, %4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32* (i32*, i32*, i32, i32*)*, i32* (i32*, i32*, i32, i32*)** %107, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = call i32* %108(i32* %109, i32* %110, i32 %113, i32* %114)
  ret i32* %115
}

declare dso_local i32* @serf_bucket_response_get_headers(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32*) #1

declare dso_local i32 @serf_bucket_headers_do(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @svn_hash_gets(i32, i32) #1

declare dso_local i32* @serf_request_get_conn(i32*) #1

declare dso_local i32 @serf_connection_get_latency(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
