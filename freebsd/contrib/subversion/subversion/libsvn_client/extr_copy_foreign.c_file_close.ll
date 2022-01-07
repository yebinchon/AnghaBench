; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton_t = type { i32, i32, i32, i32, %struct.dir_baton_t*, %struct.edit_baton_t* }
%struct.dir_baton_t = type { i32 }
%struct.edit_baton_t = type { i32, i32, i32 }

@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @file_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_close(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file_baton_t*, align 8
  %9 = alloca %struct.edit_baton_t*, align 8
  %10 = alloca %struct.dir_baton_t*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.file_baton_t*
  store %struct.file_baton_t* %14, %struct.file_baton_t** %8, align 8
  %15 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %16 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %15, i32 0, i32 5
  %17 = load %struct.edit_baton_t*, %struct.edit_baton_t** %16, align 8
  store %struct.edit_baton_t* %17, %struct.edit_baton_t** %9, align 8
  %18 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %19 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %18, i32 0, i32 4
  %20 = load %struct.dir_baton_t*, %struct.dir_baton_t** %19, align 8
  store %struct.dir_baton_t* %20, %struct.dir_baton_t** %10, align 8
  %21 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %22 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %23 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ensure_added(%struct.dir_baton_t* %21, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %65

29:                                               ; preds = %3
  %30 = load i32, i32* @svn_checksum_md5, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %33 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @svn_checksum_parse_hex(i32** %11, i32 %30, i8* %31, i32 %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %38 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %41 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @svn_checksum__from_digest_md5(i32 %39, i32 %42)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @svn_checksum_match(i32* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %29
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %52 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %56 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %59 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @svn_dirent_local_style(i32 %57, i32 %60)
  %62 = call i32 @svn_checksum_mismatch_err(i32* %49, i32* %50, i32 %53, i32 %54, i32 %61)
  %63 = call i32* @svn_error_trace(i32 %62)
  store i32* %63, i32** %4, align 8
  br label %95

64:                                               ; preds = %29
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %67 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %70 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %73 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %77 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %80 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %83 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @svn_wc_add_from_disk3(i32 %68, i32 %71, i32 %74, i32 %75, i32 %78, i32 %81, i32 %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %88 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @svn_pool_destroy(i32 %89)
  %91 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %92 = call i32 @maybe_done(%struct.dir_baton_t* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %65, %48
  %96 = load i32*, i32** %4, align 8
  ret i32* %96
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_added(%struct.dir_baton_t*, i32) #1

declare dso_local i32 @svn_checksum_parse_hex(i32**, i32, i8*, i32) #1

declare dso_local i32* @svn_checksum__from_digest_md5(i32, i32) #1

declare dso_local i32 @svn_checksum_match(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_checksum_mismatch_err(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32) #1

declare dso_local i32 @svn_wc_add_from_disk3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

declare dso_local i32 @maybe_done(%struct.dir_baton_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
