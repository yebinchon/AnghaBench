; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_merge_binary_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_merge_binary_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@svn_wc_merge_conflict = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_io_file_del_none = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, i32*, %struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i32*, i32*)* @merge_binary_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_binary_file(i32** %0, i32** %1, i32* %2, %struct.TYPE_3__* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i64 %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  store i32** %0, i32*** %15, align 8
  store i32** %1, i32*** %16, align 8
  store i32* %2, i32** %17, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i8* %7, i8** %22, align 8
  store i8* %8, i8** %23, align 8
  store i64 %9, i64* %24, align 8
  store i8* %10, i8** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %34 = load i32*, i32** %27, align 8
  store i32* %34, i32** %28, align 8
  %35 = load i32**, i32*** %15, align 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %28, align 8
  %40 = call i32 @svn_dirent_split(i8** %31, i8** %32, i32 %38, i32* %39)
  %41 = load i64, i64* %24, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %13
  %44 = load i32, i32* @svn_wc_merge_conflict, align 4
  %45 = load i32*, i32** %17, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %14, align 8
  br label %132

47:                                               ; preds = %13
  %48 = load i8*, i8** %31, align 8
  %49 = load i8*, i8** %32, align 8
  %50 = load i8*, i8** %21, align 8
  %51 = load i32, i32* @svn_io_file_del_none, align 4
  %52 = load i32*, i32** %28, align 8
  %53 = load i32*, i32** %28, align 8
  %54 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %29, i8* %48, i8* %49, i8* %50, i32 %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i8*, i8** %31, align 8
  %57 = load i8*, i8** %32, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = load i32, i32* @svn_io_file_del_none, align 4
  %60 = load i32*, i32** %28, align 8
  %61 = load i32*, i32** %28, align 8
  %62 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %30, i8* %56, i8* %57, i8* %58, i32 %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i8*, i8** %19, align 8
  %65 = load i8*, i8** %29, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = load i32*, i32** %28, align 8
  %68 = call i32 @svn_io_copy_file(i8* %64, i8* %65, i32 %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i8*, i8** %20, align 8
  %71 = load i8*, i8** %30, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = load i32*, i32** %28, align 8
  %74 = call i32 @svn_io_copy_file(i8* %70, i8* %71, i32 %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %25, align 8
  %80 = call i64 @strcmp(i32 %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %47
  %83 = load i8*, i8** %31, align 8
  %84 = load i8*, i8** %32, align 8
  %85 = load i8*, i8** %23, align 8
  %86 = load i32, i32* @svn_io_file_del_none, align 4
  %87 = load i32*, i32** %28, align 8
  %88 = load i32*, i32** %28, align 8
  %89 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %33, i8* %83, i8* %84, i8* %85, i32 %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32**, i32*** %15, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %25, align 8
  %99 = load i8*, i8** %33, align 8
  %100 = load i32*, i32** %28, align 8
  %101 = load i32*, i32** %26, align 8
  %102 = call i32 @svn_wc__wq_build_file_move(i32** %91, i32 %94, i32 %97, i8* %98, i8* %99, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %105

104:                                              ; preds = %47
  store i8* null, i8** %33, align 8
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i32**, i32*** %16, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32*, i32** %26, align 8
  %111 = call i32* @svn_wc__conflict_skel_create(i32* %110)
  %112 = load i32**, i32*** %16, align 8
  store i32* %111, i32** %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load i32**, i32*** %16, align 8
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %33, align 8
  %123 = load i8*, i8** %29, align 8
  %124 = load i8*, i8** %30, align 8
  %125 = load i32*, i32** %26, align 8
  %126 = load i32*, i32** %27, align 8
  %127 = call i32 @svn_wc__conflict_skel_add_text_conflict(i32* %115, i32 %118, i32 %121, i8* %122, i8* %123, i8* %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load i32, i32* @svn_wc_merge_conflict, align 4
  %130 = load i32*, i32** %17, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %131, i32** %14, align 8
  br label %132

132:                                              ; preds = %113, %43
  %133 = load i32*, i32** %14, align 8
  ret i32* %133
}

declare dso_local i32 @svn_dirent_split(i8**, i8**, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_uniquely_named(i32*, i8**, i8*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_wc__wq_build_file_move(i32**, i32, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_text_conflict(i32*, i32, i32, i8*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
