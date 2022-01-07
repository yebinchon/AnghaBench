; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_read_and_checksum_pristine_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_read_and_checksum_pristine_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Pristine checksum for file '%s' is missing\00", align 1
@svn_checksum_md5 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_8__**, %struct.TYPE_8__**, i32*, i8*, i32*, i32*)* @read_and_checksum_pristine_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_and_checksum_pristine_text(i32** %0, %struct.TYPE_8__** %1, %struct.TYPE_8__** %2, i32* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call i32 @svn_wc__get_pristine_contents(i32** %16, i32* null, i32* %18, i8* %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %16, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = call i32* @svn_stream_empty(i32* %27)
  store i32* %28, i32** %16, align 8
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %30, align 8
  br label %70

31:                                               ; preds = %7
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @svn_wc__db_read_info(i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_8__** %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %32, i8* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %39 = icmp eq %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %43 = load i8*, i8** %13, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @svn_dirent_local_style(i8* %43, i32* %44)
  %46 = call i32* @svn_error_createf(i32 %41, i32* null, i32 %42, i32 %45)
  store i32* %46, i32** %8, align 8
  br label %74

47:                                               ; preds = %31
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_checksum_md5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32*, i32** %12, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @svn_wc__db_pristine_get_md5(%struct.TYPE_8__** %17, i32* %54, i8* %55, %struct.TYPE_8__* %56, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %63, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %66 = load i64, i64* @svn_checksum_md5, align 8
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = call i32* @svn_stream_checksummed2(i32* %64, %struct.TYPE_8__** %65, i32* null, i64 %66, i32 %67, i32* %68)
  store i32* %69, i32** %16, align 8
  br label %70

70:                                               ; preds = %61, %26
  %71 = load i32*, i32** %16, align 8
  %72 = load i32**, i32*** %9, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %8, align 8
  br label %74

74:                                               ; preds = %70, %40
  %75 = load i32*, i32** %8, align 8
  ret i32* %75
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_pristine_contents(i32**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_md5(%struct.TYPE_8__**, i32*, i8*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32* @svn_stream_checksummed2(i32*, %struct.TYPE_8__**, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
