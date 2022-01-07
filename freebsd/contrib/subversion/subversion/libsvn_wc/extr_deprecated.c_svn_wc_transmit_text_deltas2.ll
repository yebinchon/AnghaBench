; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_transmit_text_deltas2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_transmit_text_deltas2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@svn_io_file_del_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_transmit_text_deltas2(i8** %0, i8* %1, i8* %2, i32* %3, i32 %4, i32* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i8** %0, i8*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = call i32* @svn_dirent_get_absolute(i8** %17, i8* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32* %25)
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_wc__adm_get_db(i32* %27)
  %29 = load i32*, i32** %16, align 8
  %30 = call i32* @svn_wc__context_create_with_db(%struct.TYPE_6__** %18, i32* null, i32 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32* %30)
  %32 = load i8**, i8*** %9, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %8
  %35 = load i8**, i8*** %9, align 8
  %36 = load i32, i32* @svn_io_file_del_none, align 4
  %37 = load i32*, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32* @svn_io_open_unique_file3(i32** %22, i8** %35, i32* null, i32 %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32* %39)
  %41 = load i32*, i32** %22, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = call i32* @svn_stream__from_aprfile(i32* %41, i32 %42, i32 %43, i32* %44)
  store i32* %45, i32** %20, align 8
  br label %47

46:                                               ; preds = %8
  store i32* null, i32** %20, align 8
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32*, i32** %20, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @svn_stream_disown(i32* %48, i32* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %53
  %56 = phi %struct.TYPE_7__** [ %19, %53 ], [ null, %54 ]
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i32* @svn_wc__internal_transmit_text_deltas(i32 %50, %struct.TYPE_7__** %56, i32* null, i32 %59, i8* %60, i32 %61, i32* %62, i8* %63, i32* %64, i32* %65)
  store i32* %66, i32** %21, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %55
  %70 = load i32*, i32** %21, align 8
  %71 = load i32*, i32** %20, align 8
  %72 = call i32 @svn_stream_close(i32* %71)
  %73 = call i32* @svn_error_compose_create(i32* %70, i32 %72)
  store i32* %73, i32** %21, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32*, i32** %21, align 8
  %78 = load i8**, i8*** %9, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @TRUE, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @svn_io_remove_file2(i8* %79, i32 %80, i32* %81)
  %83 = call i32* @svn_error_compose_create(i32* %77, i32 %82)
  store i32* %83, i32** %21, align 8
  br label %84

84:                                               ; preds = %76, %69
  br label %85

85:                                               ; preds = %84, %55
  %86 = load i32*, i32** %21, align 8
  %87 = call i32 @SVN_ERR(i32* %86)
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %96 = call i32 @memcpy(i8* %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %99 = call i32 @svn_wc_context_destroy(%struct.TYPE_6__* %98)
  %100 = call i32* @svn_error_trace(i32 %99)
  ret i32* %100
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32* @svn_wc__context_create_with_db(%struct.TYPE_6__**, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(i32*) #1

declare dso_local i32* @svn_io_open_unique_file3(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream__from_aprfile(i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_wc__internal_transmit_text_deltas(i32, %struct.TYPE_7__**, i32*, i32, i8*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_disown(i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
