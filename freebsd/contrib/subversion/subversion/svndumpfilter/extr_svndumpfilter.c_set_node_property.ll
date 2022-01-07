; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_set_node_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_set_node_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton_t = type { i32, i64, i32, i64, i64, %struct.revision_baton_t* }
%struct.revision_baton_t = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_STREAM_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Delta property block detected, but deltas are not enabled for node '%s' in original revision %ld\00", align 1
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @set_node_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_node_property(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.node_baton_t*, align 8
  %9 = alloca %struct.revision_baton_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.node_baton_t*
  store %struct.node_baton_t* %13, %struct.node_baton_t** %8, align 8
  %14 = load %struct.node_baton_t*, %struct.node_baton_t** %8, align 8
  %15 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %14, i32 0, i32 5
  %16 = load %struct.revision_baton_t*, %struct.revision_baton_t** %15, align 8
  store %struct.revision_baton_t* %16, %struct.revision_baton_t** %9, align 8
  %17 = load %struct.node_baton_t*, %struct.node_baton_t** %8, align 8
  %18 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %4, align 8
  br label %70

23:                                               ; preds = %3
  %24 = load %struct.node_baton_t*, %struct.node_baton_t** %8, align 8
  %25 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load %struct.node_baton_t*, %struct.node_baton_t** %8, align 8
  %30 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.node_baton_t*, %struct.node_baton_t** %8, align 8
  %37 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %40 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @svn_error_createf(i32 %34, i32* null, i32 %35, i32 %38, i32 %41)
  store i32* %42, i32** %4, align 8
  br label %70

43:                                               ; preds = %28, %23
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %46 = call i64 @strcmp(i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %50 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @apr_hash_pool_get(i32 %51)
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.revision_baton_t*, %struct.revision_baton_t** %9, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @adjust_mergeinfo(i32** %10, i32* %53, %struct.revision_baton_t* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %10, align 8
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %48, %43
  %60 = load i64, i64* @TRUE, align 8
  %61 = load %struct.node_baton_t*, %struct.node_baton_t** %8, align 8
  %62 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.node_baton_t*, %struct.node_baton_t** %8, align 8
  %64 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @write_prop_to_stringbuf(i32 %65, i8* %66, i32* %67)
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %59, %33, %21
  %71 = load i32*, i32** %4, align 8
  ret i32* %71
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @apr_hash_pool_get(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @adjust_mergeinfo(i32**, i32*, %struct.revision_baton_t*, i32*) #1

declare dso_local i32 @write_prop_to_stringbuf(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
