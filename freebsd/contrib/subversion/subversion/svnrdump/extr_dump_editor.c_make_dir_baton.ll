; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i8*, i8*, i8*, i8*, i8*, i32*, i32, i32*, %struct.dump_edit_baton* }
%struct.dump_edit_baton = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_baton* (i8*, i8*, i32, i8*, %struct.dir_baton*, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_baton* @make_dir_baton(i8* %0, i8* %1, i32 %2, i8* %3, %struct.dir_baton* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dump_edit_baton*, align 8
  %14 = alloca %struct.dir_baton*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.dir_baton* %4, %struct.dir_baton** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.dump_edit_baton*
  store %struct.dump_edit_baton* %17, %struct.dump_edit_baton** %13, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call %struct.dir_baton* @apr_pcalloc(i32* %18, i32 72)
  store %struct.dir_baton* %19, %struct.dir_baton** %14, align 8
  %20 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %21 = icmp ne %struct.dir_baton* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i8*, i8** %7, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i8* @svn_relpath_canonicalize(i8* %23, i32* %24)
  store i8* %25, i8** %15, align 8
  br label %27

26:                                               ; preds = %6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i8* @svn_relpath_canonicalize(i8* %31, i32* %32)
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %13, align 8
  %36 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %37 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %36, i32 0, i32 8
  store %struct.dump_edit_baton* %35, %struct.dump_edit_baton** %37, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %40 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %39, i32 0, i32 7
  store i32* %38, i32** %40, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %43 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i8* @svn_relpath_canonicalize(i8* %47, i32* %48)
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8* [ %49, %46 ], [ null, %50 ]
  %53 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %54 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %57 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %59 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %58, i32 0, i32 5
  store i32* null, i32** %59, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i8* @apr_hash_make(i32* %60)
  %62 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %63 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i8* @apr_hash_make(i32* %64)
  %66 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %67 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i8* @apr_hash_make(i32* %68)
  %70 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %71 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  ret %struct.dir_baton* %72
}

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
