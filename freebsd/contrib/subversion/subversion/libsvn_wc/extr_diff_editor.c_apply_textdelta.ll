; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton_t = type { i32, i32, i32, i32, i64, i64, %struct.edit_baton_t* }
%struct.edit_baton_t = type { i32, i32 }

@svn_delta_noop_window_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i8**)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.file_baton_t*, align 8
  %13 = alloca %struct.edit_baton_t*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.file_baton_t*
  store %struct.file_baton_t* %19, %struct.file_baton_t** %12, align 8
  %20 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %21 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %20, i32 0, i32 6
  %22 = load %struct.edit_baton_t*, %struct.edit_baton_t** %21, align 8
  store %struct.edit_baton_t* %22, %struct.edit_baton_t** %13, align 8
  store i32* null, i32** %16, align 8
  %23 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %24 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i32, i32* @svn_delta_noop_window_handler, align 4
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i8**, i8*** %11, align 8
  store i8* null, i8** %30, align 8
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %6, align 8
  br label %138

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %88

35:                                               ; preds = %32
  %36 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %37 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %35
  %41 = load i32, i32* @svn_checksum_md5, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @svn_checksum_parse_hex(i32** %16, i32 %41, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.edit_baton_t*, %struct.edit_baton_t** %13, align 8
  %47 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.edit_baton_t*, %struct.edit_baton_t** %13, align 8
  %50 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %53 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @svn_wc__db_pristine_get_md5(i32** %17, i32 %48, i32 %51, i64 %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = call i32 @svn_checksum_match(i32* %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %40
  %64 = load i32*, i32** %17, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %69 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @svn_dirent_local_style(i32 %70, i32* %71)
  %73 = call i32* @svn_checksum_mismatch_err(i32* %64, i32* %65, i32* %66, i32 %67, i32 %72)
  store i32* %73, i32** %6, align 8
  br label %138

74:                                               ; preds = %40
  %75 = load %struct.edit_baton_t*, %struct.edit_baton_t** %13, align 8
  %76 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %79 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %82 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @svn_wc__db_pristine_read(i32** %14, i32* null, i32 %77, i32 %80, i64 %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %111

88:                                               ; preds = %35, %32
  %89 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %90 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.edit_baton_t*, %struct.edit_baton_t** %13, align 8
  %95 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %98 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %101 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @svn_wc__db_pristine_read(i32** %14, i32* null, i32 %96, i32 %99, i64 %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %110

107:                                              ; preds = %88
  %108 = load i32*, i32** %9, align 8
  %109 = call i32* @svn_stream_empty(i32* %108)
  store i32* %109, i32** %14, align 8
  br label %110

110:                                              ; preds = %107, %93
  br label %111

111:                                              ; preds = %110, %74
  %112 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %113 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %112, i32 0, i32 3
  %114 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %115 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %116 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %119 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @svn_stream_open_unique(i32** %15, i32* %113, i32* null, i32 %114, i32 %117, i32 %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load i32*, i32** %14, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %126 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %129 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.file_baton_t*, %struct.file_baton_t** %12, align 8
  %132 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load i8**, i8*** %11, align 8
  %136 = call i32 @svn_txdelta_apply(i32* %123, i32* %124, i32 %127, i32 %130, i32 %133, i32* %134, i8** %135)
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %137, i32** %6, align 8
  br label %138

138:                                              ; preds = %111, %63, %27
  %139 = load i32*, i32** %6, align 8
  ret i32* %139
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_md5(i32**, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_checksum_match(i32*, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_read(i32**, i32*, i32, i32, i64, i32*, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @svn_txdelta_apply(i32*, i32*, i32, i32, i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
