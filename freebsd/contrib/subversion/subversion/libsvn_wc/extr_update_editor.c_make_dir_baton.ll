; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32* }
%struct.dir_baton = type { i32, i32, i8*, i32, i64, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32*, %struct.dir_baton*, %struct.edit_baton*, i32, i32* }

@FALSE = common dso_local global i8* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton**, i8*, %struct.edit_baton*, %struct.dir_baton*, i32, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_dir_baton(%struct.dir_baton** %0, i8* %1, %struct.edit_baton* %2, %struct.dir_baton* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.dir_baton**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.edit_baton*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dir_baton*, align 8
  store %struct.dir_baton** %0, %struct.dir_baton*** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %9, align 8
  store %struct.dir_baton* %3, %struct.dir_baton** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %16 = icmp ne %struct.dir_baton* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %19 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %18, i32 0, i32 13
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @svn_pool_create(i32* %20)
  store i32* %21, i32** %13, align 8
  br label %27

22:                                               ; preds = %6
  %23 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %24 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32* @svn_pool_create(i32* %25)
  store i32* %26, i32** %13, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %32 = icmp ne %struct.dir_baton* %31, null
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ true, %27 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @SVN_ERR_ASSERT(i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = call %struct.dir_baton* @apr_pcalloc(i32* %38, i32 128)
  store %struct.dir_baton* %39, %struct.dir_baton** %14, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32* @svn_dirent_basename(i8* %43, i32* %44)
  %46 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %47 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %46, i32 0, i32 17
  store i32* %45, i32** %47, align 8
  %48 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %49 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %48, i32 0, i32 16
  %50 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %51 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %54 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %53, i32 0, i32 17
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @path_join_under_root(i32* %49, i32 %52, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %67

59:                                               ; preds = %34
  %60 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %61 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %60, i32 0, i32 17
  store i32* null, i32** %61, align 8
  %62 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %63 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %66 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %65, i32 0, i32 16
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %59, %42
  %68 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %69 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %70 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %69, i32 0, i32 15
  store %struct.edit_baton* %68, %struct.edit_baton** %70, align 8
  %71 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %72 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %73 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %72, i32 0, i32 14
  store %struct.dir_baton* %71, %struct.dir_baton** %73, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %76 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %75, i32 0, i32 13
  store i32* %74, i32** %76, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @apr_array_make(i32* %77, i32 1, i32 4)
  %79 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %80 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** @FALSE, align 8
  %82 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %83 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %82, i32 0, i32 11
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @FALSE, align 8
  %85 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %86 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %88 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %90 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %91 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %90, i32 0, i32 9
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %94 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %96 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %97 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @apr_hash_make(i32* %98)
  %100 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %101 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %103 = icmp ne %struct.dir_baton* %102, null
  br i1 %103, label %104, label %128

104:                                              ; preds = %67
  %105 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %106 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %109 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %111 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %104
  %115 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %116 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %114, %104
  %120 = phi i1 [ true, %104 ], [ %118, %114 ]
  %121 = zext i1 %120 to i32
  %122 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %123 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %125 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %119, %67
  %129 = load i32, i32* @svn_depth_unknown, align 4
  %130 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %131 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** @FALSE, align 8
  %133 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %134 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %136 = load %struct.dir_baton**, %struct.dir_baton*** %7, align 8
  store %struct.dir_baton* %135, %struct.dir_baton** %136, align 8
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %137
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @path_join_under_root(i32*, i32, i32*, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
