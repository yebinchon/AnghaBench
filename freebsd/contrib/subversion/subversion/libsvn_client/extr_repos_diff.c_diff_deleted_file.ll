; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_diff_deleted_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_diff_deleted_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_3__*, i32, i32, i32 (i32)*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*)*, i32 (i32*, i64*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*, i32*)* }
%struct.file_baton = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.dir_baton*, i32*)* @diff_deleted_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_deleted_file(i8* %0, %struct.dir_baton* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dir_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.edit_baton*, align 8
  %9 = alloca %struct.file_baton*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %13 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %12, i32 0, i32 1
  %14 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  store %struct.edit_baton* %14, %struct.edit_baton** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %17 = load i64, i64* @FALSE, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call %struct.file_baton* @make_file_baton(i8* %15, %struct.dir_baton* %16, i64 %17, i32* %18)
  store %struct.file_baton* %19, %struct.file_baton** %9, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %22 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @svn_diff__source_create(i32 %23, i32* %24)
  store i32* %25, i32** %11, align 8
  %26 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 3
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = icmp ne i32 (i32)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %32 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %31, i32 0, i32 3
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %35 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %33(i32 %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %30, %3
  %40 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (i32*, i64*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*, i32*)*, i32 (i32*, i64*, i8*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*, i32*)** %43, align 8
  %45 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %46 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %45, i32 0, i32 0
  %47 = load i8*, i8** %5, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %50 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %53 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 %44(i32* %46, i64* %10, i8* %47, i32* %48, i32* null, i32* null, i32 %51, %struct.TYPE_3__* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %60 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %59, i32 0, i32 3
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = icmp ne i32 (i32)* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %39
  %64 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %65 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %64, i32 0, i32 3
  %66 = load i32 (i32)*, i32 (i32)** %65, align 8
  %67 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %68 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %66(i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %63, %39
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %4, align 8
  br label %113

77:                                               ; preds = %72
  %78 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %79 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %80 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @get_file_from_ra(%struct.file_baton* %78, i32 %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %89 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32 (i32, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*)*, i32 (i32, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*)** %91, align 8
  %93 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %94 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %98 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %101 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.file_baton*, %struct.file_baton** %9, align 8
  %104 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %107 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 %92(i32 %95, i32* %96, i32 %99, i32 %102, i32 %105, %struct.TYPE_3__* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %112, i32** %4, align 8
  br label %113

113:                                              ; preds = %77, %75
  %114 = load i32*, i32** %4, align 8
  ret i32* %114
}

declare dso_local %struct.file_baton* @make_file_baton(i8*, %struct.dir_baton*, i64, i32*) #1

declare dso_local i32* @svn_diff__source_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_file_from_ra(%struct.file_baton*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
