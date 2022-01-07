; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_copy_revprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_copy_revprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to read revprops for r%ld.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i64, i64, i32*, i32, i32, i32*, i32, i8*, i32*)* @copy_revprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_revprops(i32* %0, i8* %1, i8* %2, i8* %3, i64 %4, i64 %5, i32* %6, i32 %7, i32 %8, i32* %9, i32 %10, i8* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i8* %11, i8** %25, align 8
  store i32* %12, i32** %26, align 8
  %34 = load i32*, i32** %26, align 8
  %35 = call i32* @svn_pool_create(i32* %34)
  store i32* %35, i32** %29, align 8
  %36 = load i32*, i32** %26, align 8
  %37 = call i32* @svn_packed__data_create_root(i32* %36)
  store i32* %37, i32** %30, align 8
  %38 = load i32*, i32** %30, align 8
  %39 = call i32* @svn_packed__create_bytes_stream(i32* %38)
  store i32* %39, i32** %31, align 8
  %40 = load i64, i64* %18, align 8
  store i64 %40, i64* %28, align 8
  br label %41

41:                                               ; preds = %71, %13
  %42 = load i64, i64* %28, align 8
  %43 = load i64, i64* %19, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i32*, i32** %29, align 8
  %47 = call i32 @svn_pool_clear(i32* %46)
  %48 = load i32*, i32** %14, align 8
  %49 = load i64, i64* %28, align 8
  %50 = load i32*, i32** %29, align 8
  %51 = call i8* @svn_fs_x__path_revprops(i32* %48, i64 %49, i32* %50)
  store i8* %51, i8** %32, align 8
  %52 = load i8*, i8** %32, align 8
  %53 = load i32*, i32** %29, align 8
  %54 = call i32 @svn_stringbuf_from_file2(%struct.TYPE_4__** %33, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %57 = load i32*, i32** %29, align 8
  %58 = call i32 @verify_checksum(%struct.TYPE_4__* %56, i32* %57)
  %59 = load i32*, i32** %29, align 8
  %60 = load i64, i64* %28, align 8
  %61 = call i32 @apr_psprintf(i32* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = call i32 @SVN_ERR_W(i32 %58, i32 %61)
  %63 = load i32*, i32** %31, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @svn_packed__add_bytes(i32* %63, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %45
  %72 = load i64, i64* %28, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %28, align 8
  br label %41

74:                                               ; preds = %41
  %75 = load i32*, i32** %23, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i32*, i32** %26, align 8
  %79 = call i32 @svn_dirent_join(i8* %76, i8* %77, i32* %78)
  %80 = load i32*, i32** %26, align 8
  %81 = call i32 @svn_fs_x__batch_fsync_open_file(i32** %27, i32* %75, i32 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %30, align 8
  %84 = load i32*, i32** %27, align 8
  %85 = load i32*, i32** %26, align 8
  %86 = call i32 @write_packed_data_checksummed(i32* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** %29, align 8
  %89 = call i32 @svn_pool_destroy(i32* %88)
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %90
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_packed__data_create_root(i32*) #1

declare dso_local i32* @svn_packed__create_bytes_stream(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_fs_x__path_revprops(i32*, i64, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stringbuf_from_file2(%struct.TYPE_4__**, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @verify_checksum(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i64) #1

declare dso_local i32 @svn_packed__add_bytes(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_x__batch_fsync_open_file(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @write_packed_data_checksummed(i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
