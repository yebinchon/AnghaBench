; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_parse_baton_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_parse_baton_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_baton_t = type { i32, i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.svndumpfilter_opt_state = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parse_baton_t**, %struct.svndumpfilter_opt_state*, i32, i32*)* @parse_baton_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_baton_initialize(%struct.parse_baton_t** %0, %struct.svndumpfilter_opt_state* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.parse_baton_t**, align 8
  %6 = alloca %struct.svndumpfilter_opt_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.parse_baton_t*, align 8
  store %struct.parse_baton_t** %0, %struct.parse_baton_t*** %5, align 8
  store %struct.svndumpfilter_opt_state* %1, %struct.svndumpfilter_opt_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call %struct.parse_baton_t* @apr_palloc(i32* %10, i32 104)
  store %struct.parse_baton_t* %11, %struct.parse_baton_t** %9, align 8
  %12 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %13 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %12, i32 0, i32 16
  %14 = load i32, i32* @TRUE, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @svn_stream_for_stdin2(i32* %13, i32 %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %19 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %18, i32 0, i32 15
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @svn_stream_for_stdout(i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %25 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 8
  %26 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %27 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %32 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %37 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ true, %30 ], [ %39, %35 ]
  br label %42

42:                                               ; preds = %40, %4
  %43 = phi i1 [ false, %4 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %46 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %48 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %51 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %50, i32 0, i32 13
  store i64 %49, i64* %51, align 8
  %52 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %53 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %56 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %55, i32 0, i32 12
  store i64 %54, i64* %56, align 8
  %57 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %58 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %61 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 8
  %62 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %63 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %66 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 4
  %67 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %68 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %71 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 8
  %72 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %73 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %76 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 4
  %77 = load %struct.svndumpfilter_opt_state*, %struct.svndumpfilter_opt_state** %6, align 8
  %78 = getelementptr inbounds %struct.svndumpfilter_opt_state, %struct.svndumpfilter_opt_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %81 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %83 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i8* @apr_hash_make(i32* %84)
  %86 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %87 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i8* @apr_hash_make(i32* %88)
  %90 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %91 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %93 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %94 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %96 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %97 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @FALSE, align 4
  %99 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %100 = getelementptr inbounds %struct.parse_baton_t, %struct.parse_baton_t* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.parse_baton_t*, %struct.parse_baton_t** %9, align 8
  %102 = load %struct.parse_baton_t**, %struct.parse_baton_t*** %5, align 8
  store %struct.parse_baton_t* %101, %struct.parse_baton_t** %102, align 8
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

declare dso_local %struct.parse_baton_t* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_for_stdin2(i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_for_stdout(i32*, i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
