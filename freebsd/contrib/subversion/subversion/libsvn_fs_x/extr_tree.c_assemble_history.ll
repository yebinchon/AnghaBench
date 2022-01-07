; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_assemble_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_assemble_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, i32*, i8*, i8*, i32*, i32, i8*, i32* }

@history_vtable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i8*, i8*, i32, i8*, i8*, i8*, i32*, i32*)* @assemble_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @assemble_history(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load i32*, i32** %18, align 8
  %22 = call i8* @apr_pcalloc(i32* %21, i32 16)
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %19, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = call i8* @apr_pcalloc(i32* %24, i32 64)
  %26 = bitcast i8* %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %20, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = call i32* @svn_fs__canonicalize_abspath(i8* %27, i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 7
  store i32* %29, i32** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %9
  %41 = load i8*, i8** %14, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = call i32* @svn_fs__canonicalize_abspath(i8* %41, i32* %42)
  br label %45

44:                                               ; preds = %9
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32* [ %43, %40 ], [ null, %44 ]
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %69

65:                                               ; preds = %45
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @svn_fs_x__id_reset(i32* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32* @history_vtable, i32** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  ret %struct.TYPE_4__* %75
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @svn_fs_x__id_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
