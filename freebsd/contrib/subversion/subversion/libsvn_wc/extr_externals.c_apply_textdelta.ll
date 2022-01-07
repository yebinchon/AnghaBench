; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@svn_checksum_md5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Base checksum mismatch for '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i8**)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.edit_baton*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.edit_baton*
  store %struct.edit_baton* %18, %struct.edit_baton** %12, align 8
  %19 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %20 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %19, i32 0, i32 7
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %89

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %75

26:                                               ; preds = %23
  %27 = load i64, i64* @svn_checksum_md5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @svn_checksum_parse_hex(%struct.TYPE_10__** %15, i64 %27, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %33 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %32, i32 0, i32 7
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @svn_checksum_md5, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %26
  %40 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %44 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 7
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @svn_wc__db_pristine_get_md5(%struct.TYPE_10__** %16, i32 %42, i32 %45, %struct.TYPE_10__* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %57

53:                                               ; preds = %26
  %54 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %55 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %54, i32 0, i32 7
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %16, align 8
  br label %57

57:                                               ; preds = %53, %39
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %60 = call i32 @svn_checksum_match(%struct.TYPE_10__* %58, %struct.TYPE_10__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %68 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @svn_dirent_local_style(i32 %69, i32* %70)
  %72 = call i32 @svn_checksum_mismatch_err(%struct.TYPE_10__* %63, %struct.TYPE_10__* %64, i32* %65, i32 %66, i32 %71)
  %73 = call i32* @svn_error_trace(i32 %72)
  store i32* %73, i32** %6, align 8
  br label %121

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %23
  %76 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %77 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %80 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %83 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %82, i32 0, i32 7
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @svn_wc__db_pristine_read(i32** %13, i32* null, i32 %78, i32 %81, %struct.TYPE_10__* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %92

89:                                               ; preds = %5
  %90 = load i32*, i32** %9, align 8
  %91 = call i32* @svn_stream_empty(i32* %90)
  store i32* %91, i32** %13, align 8
  br label %92

92:                                               ; preds = %89, %75
  %93 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %94 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %93, i32 0, i32 6
  %95 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %96 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %95, i32 0, i32 5
  %97 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %98 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %97, i32 0, i32 4
  %99 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %100 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %103 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %106 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @svn_wc__db_pristine_prepare_install(i32** %14, i32* %94, i32* %96, i32* %98, i32 %101, i32 %104, i32 %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %13, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %114 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i8**, i8*** %11, align 8
  %119 = call i32 @svn_txdelta_apply(i32* %111, i32* %112, i32* null, i32 %115, i32* %116, i32* %117, i8** %118)
  %120 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %120, i32** %6, align 8
  br label %121

121:                                              ; preds = %92, %62
  %122 = load i32*, i32** %6, align 8
  ret i32* %122
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_parse_hex(%struct.TYPE_10__**, i64, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_md5(%struct.TYPE_10__**, i32, i32, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_checksum_mismatch_err(%struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_read(i32**, i32*, i32, i32, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_wc__db_pristine_prepare_install(i32**, i32*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_txdelta_apply(i32*, i32*, i32*, i32, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
