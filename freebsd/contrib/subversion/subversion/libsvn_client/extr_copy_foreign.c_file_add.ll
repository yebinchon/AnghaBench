; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i32, i32, %struct.edit_baton_t* }
%struct.edit_baton_t = type { i32 }
%struct.file_baton_t = type { i32*, i32, %struct.dir_baton_t*, %struct.edit_baton_t* }

@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Path '%s' is not in the working copy\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @file_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_add(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.dir_baton_t*, align 8
  %15 = alloca %struct.edit_baton_t*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.file_baton_t*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.dir_baton_t*
  store %struct.dir_baton_t* %20, %struct.dir_baton_t** %14, align 8
  %21 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %22 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %21, i32 0, i32 2
  %23 = load %struct.edit_baton_t*, %struct.edit_baton_t** %22, align 8
  store %struct.edit_baton_t* %23, %struct.edit_baton_t** %15, align 8
  %24 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %25 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @svn_pool_create(i32 %26)
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call %struct.file_baton_t* @apr_pcalloc(i32* %28, i32 32)
  store %struct.file_baton_t* %29, %struct.file_baton_t** %17, align 8
  %30 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %31 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = load %struct.file_baton_t*, %struct.file_baton_t** %17, align 8
  %36 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.edit_baton_t*, %struct.edit_baton_t** %15, align 8
  %38 = load %struct.file_baton_t*, %struct.file_baton_t** %17, align 8
  %39 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %38, i32 0, i32 3
  store %struct.edit_baton_t* %37, %struct.edit_baton_t** %39, align 8
  %40 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %41 = load %struct.file_baton_t*, %struct.file_baton_t** %17, align 8
  %42 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %41, i32 0, i32 2
  store %struct.dir_baton_t* %40, %struct.dir_baton_t** %42, align 8
  %43 = load %struct.file_baton_t*, %struct.file_baton_t** %17, align 8
  %44 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %43, i32 0, i32 1
  %45 = load %struct.edit_baton_t*, %struct.edit_baton_t** %15, align 8
  %46 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.file_baton_t*, %struct.file_baton_t** %17, align 8
  %50 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @svn_dirent_is_under_root(i32* %18, i32* %44, i32 %47, i8* %48, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %6
  %57 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.file_baton_t*, %struct.file_baton_t** %17, align 8
  %61 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @svn_dirent_local_style(i8* %59, i32* %62)
  %64 = call i32* @svn_error_createf(i32 %57, i32* null, i32 %58, i32 %63)
  store i32* %64, i32** %7, align 8
  br label %70

65:                                               ; preds = %6
  %66 = load %struct.file_baton_t*, %struct.file_baton_t** %17, align 8
  %67 = bitcast %struct.file_baton_t* %66 to i8*
  %68 = load i8**, i8*** %13, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %65, %56
  %71 = load i32*, i32** %7, align 8
  ret i32* %71
}

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local %struct.file_baton_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_is_under_root(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
