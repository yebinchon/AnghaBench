; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_file_baton = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32*, i32, i8*, i32, i32*, i32*)* }
%struct.ev2_dir_baton = type { i32, i32, %struct.TYPE_2__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i8**)* @ev2_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ev2_open_file(i8* %0, i8* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ev2_file_baton*, align 8
  %13 = alloca %struct.ev2_dir_baton*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %17 = load i32*, i32** %9, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.ev2_file_baton* @apr_pcalloc(i32* %18, i32 24)
  store %struct.ev2_file_baton* %19, %struct.ev2_file_baton** %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.ev2_dir_baton*
  store %struct.ev2_dir_baton* %21, %struct.ev2_dir_baton** %13, align 8
  %22 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %13, align 8
  %23 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i8* @map_to_repos_relpath(%struct.TYPE_2__* %24, i8* %25, i32* %26)
  store i8* %27, i8** %14, align 8
  %28 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %13, align 8
  %29 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %32 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %31, i32 0, i32 0
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @apr_pstrdup(i32* %33, i8* %34)
  %36 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %37 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %40 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %13, align 8
  %42 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %5
  %46 = load i8*, i8** %14, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i8* @svn_relpath_basename(i8* %46, i32* %47)
  store i8* %48, i8** %15, align 8
  %49 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %13, align 8
  %50 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i8* @svn_relpath_join(i32 %51, i8* %52, i32* %53)
  store i8* %54, i8** %16, align 8
  %55 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %56 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (i32*, i32, i8*, i32, i32*, i32*)*, i32 (i32*, i32, i8*, i32, i32*, i32*)** %58, align 8
  %60 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %61 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %60, i32 0, i32 1
  %62 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %63 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %13, align 8
  %69 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 %59(i32* %61, i32 %66, i8* %67, i32 %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %94

75:                                               ; preds = %5
  %76 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %77 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (i32*, i32, i8*, i32, i32*, i32*)*, i32 (i32*, i32, i8*, i32, i32*, i32*)** %79, align 8
  %81 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %82 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %81, i32 0, i32 1
  %83 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %84 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 %80(i32* %82, i32 %87, i8* %88, i32 %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  br label %94

94:                                               ; preds = %75, %45
  %95 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %12, align 8
  %96 = bitcast %struct.ev2_file_baton* %95 to i8*
  %97 = load i8**, i8*** %10, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %98
}

declare dso_local %struct.ev2_file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @map_to_repos_relpath(%struct.TYPE_2__*, i8*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
