; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32*, i32, i32, i32, i32*, %struct.TYPE_2__*, i32, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@svn_delta_noop_window_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Base checksum mismatch for '%s'\00", align 1
@lazy_open_source = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@lazy_open_result = common dso_local global i32 0, align 4
@window_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i8**)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.file_baton*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.file_baton*
  store %struct.file_baton* %18, %struct.file_baton** %12, align 8
  %19 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %20 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %15, align 8
  %22 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %23 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i32, i32* @svn_delta_noop_window_handler, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i8**, i8*** %11, align 8
  store i8* null, i8** %29, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %6, align 8
  br label %142

31:                                               ; preds = %5
  %32 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %33 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %32, i32 0, i32 7
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %31
  %39 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %40 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %39, i32 0, i32 7
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %43 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %42, i32 0, i32 6
  %44 = call i32 @get_empty_file(%struct.TYPE_2__* %41, i32** %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %47 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %46, i32 0, i32 7
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %50 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %49, i32 0, i32 9
  %51 = call i32 @get_empty_file(%struct.TYPE_2__* %48, i32** %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32, i32* @svn_delta_noop_window_handler, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i8**, i8*** %11, align 8
  store i8* null, i8** %55, align 8
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %6, align 8
  br label %142

57:                                               ; preds = %31
  %58 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %59 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @get_file_from_ra(%struct.file_baton* %63, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %76

68:                                               ; preds = %57
  %69 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %70 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %69, i32 0, i32 7
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %73 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %72, i32 0, i32 6
  %74 = call i32 @get_empty_file(%struct.TYPE_2__* %71, i32** %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %68, %62
  %77 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %78 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @SVN_ERR_ASSERT(i32 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %110

85:                                               ; preds = %76
  %86 = load i32, i32* @svn_checksum_md5, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @svn_checksum_parse_hex(i32** %16, i32 %86, i8* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %16, align 8
  %92 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %93 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @svn_checksum_match(i32* %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %85
  %98 = load i32*, i32** %16, align 8
  %99 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %100 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %105 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @svn_checksum_mismatch_err(i32* %98, i32 %101, i32* %102, i32 %103, i32 %106)
  %108 = call i32* @svn_error_trace(i32 %107)
  store i32* %108, i32** %6, align 8
  br label %142

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %76
  %111 = load i32, i32* @lazy_open_source, align 4
  %112 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = call i32* @svn_stream_lazyopen_create(i32 %111, %struct.file_baton* %112, i32 %113, i32* %114)
  store i32* %115, i32** %13, align 8
  %116 = load i32, i32* @lazy_open_result, align 4
  %117 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %118 = load i32, i32* @TRUE, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = call i32* @svn_stream_lazyopen_create(i32 %116, %struct.file_baton* %117, i32 %118, i32* %119)
  store i32* %120, i32** %14, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %124 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %127 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %130 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %133 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %132, i32 0, i32 1
  %134 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %135 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %134, i32 0, i32 0
  %136 = call i32 @svn_txdelta_apply(i32* %121, i32* %122, i32 %125, i32 %128, i32* %131, i32* %133, i32* %135)
  %137 = load i32, i32* @window_handler, align 4
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i8*, i8** %7, align 8
  %140 = load i8**, i8*** %11, align 8
  store i8* %139, i8** %140, align 8
  %141 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %141, i32** %6, align 8
  br label %142

142:                                              ; preds = %110, %97, %38, %26
  %143 = load i32*, i32** %6, align 8
  ret i32* %143
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_empty_file(%struct.TYPE_2__*, i32**) #1

declare dso_local i32 @get_file_from_ra(%struct.file_baton*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i32, i8*, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_checksum_mismatch_err(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_stream_lazyopen_create(i32, %struct.file_baton*, i32, i32*) #1

declare dso_local i32 @svn_txdelta_apply(i32*, i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
