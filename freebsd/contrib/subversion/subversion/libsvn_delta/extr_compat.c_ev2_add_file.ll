; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_file_baton = type { %struct.TYPE_3__*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32**, i32, i8*, i32, i32*, i32*)*, i32* }
%struct.ev2_dir_baton = type { i32, %struct.TYPE_3__* }
%struct.change_node = type { i32, i8*, i32, i32 }

@RESTRUCTURE_ADD = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @ev2_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ev2_add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ev2_file_baton*, align 8
  %15 = alloca %struct.ev2_dir_baton*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.change_node*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %18 = load i32*, i32** %11, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call %struct.ev2_file_baton* @apr_pcalloc(i32* %19, i32 24)
  store %struct.ev2_file_baton* %20, %struct.ev2_file_baton** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.ev2_dir_baton*
  store %struct.ev2_dir_baton* %22, %struct.ev2_dir_baton** %15, align 8
  %23 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %15, align 8
  %24 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i8* @map_to_repos_relpath(%struct.TYPE_3__* %25, i8* %26, i32* %27)
  store i8* %28, i8** %16, align 8
  %29 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %15, align 8
  %30 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = call %struct.change_node* @locate_change(%struct.TYPE_3__* %31, i8* %32)
  store %struct.change_node* %33, %struct.change_node** %17, align 8
  %34 = load i32, i32* @RESTRUCTURE_ADD, align 4
  %35 = load %struct.change_node*, %struct.change_node** %17, align 8
  %36 = getelementptr inbounds %struct.change_node, %struct.change_node* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @svn_node_file, align 4
  %38 = load %struct.change_node*, %struct.change_node** %17, align 8
  %39 = getelementptr inbounds %struct.change_node, %struct.change_node* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %15, align 8
  %41 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %44 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %43, i32 0, i32 0
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %44, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @apr_pstrdup(i32* %45, i8* %46)
  %48 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %49 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %15, align 8
  %51 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %54 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %56 = bitcast %struct.ev2_file_baton* %55 to i8*
  %57 = load i8**, i8*** %12, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %6
  %61 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %62 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %101

63:                                               ; preds = %6
  %64 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %65 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %69 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i8* @map_to_repos_relpath(%struct.TYPE_3__* %66, i8* %67, i32* %72)
  %74 = load %struct.change_node*, %struct.change_node** %17, align 8
  %75 = getelementptr inbounds %struct.change_node, %struct.change_node* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.change_node*, %struct.change_node** %17, align 8
  %78 = getelementptr inbounds %struct.change_node, %struct.change_node* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %80 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32 (i32**, i32, i8*, i32, i32*, i32*)*, i32 (i32**, i32, i8*, i32, i32*, i32*)** %82, align 8
  %84 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %85 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %84, i32 0, i32 1
  %86 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %14, align 8
  %87 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.change_node*, %struct.change_node** %17, align 8
  %92 = getelementptr inbounds %struct.change_node, %struct.change_node* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.change_node*, %struct.change_node** %17, align 8
  %95 = getelementptr inbounds %struct.change_node, %struct.change_node* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 %83(i32** %85, i32 %90, i8* %93, i32 %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  br label %101

101:                                              ; preds = %63, %60
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %102
}

declare dso_local %struct.ev2_file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @map_to_repos_relpath(%struct.TYPE_3__*, i8*, i32*) #1

declare dso_local %struct.change_node* @locate_change(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
