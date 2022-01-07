; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_close_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_close_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.svn_delta_editor_t* }
%struct.svn_delta_editor_t = type { i32 (i64, i32*, i32*)*, i32 (i32, i8*, i32, i32*)*, i32 (i64, i8*, i32, i32*)* }
%struct.TYPE_9__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_node(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.node_baton*, align 8
  %4 = alloca %struct.svn_delta_editor_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.node_baton*
  store %struct.node_baton* %10, %struct.node_baton** %3, align 8
  %11 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %12 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.svn_delta_editor_t*, %struct.svn_delta_editor_t** %16, align 8
  store %struct.svn_delta_editor_t* %17, %struct.svn_delta_editor_t** %4, align 8
  %18 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %19 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %25 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @apr_hash_first(i32* %23, i32 %26)
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %73, %1
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @apr_hash_this_key(i32* %32)
  store i8* %33, i8** %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call %struct.TYPE_9__* @apr_hash_this_val(i32* %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %8, align 8
  %36 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %37 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %71 [
    i32 128, label %39
    i32 129, label %53
  ]

39:                                               ; preds = %31
  %40 = load %struct.svn_delta_editor_t*, %struct.svn_delta_editor_t** %4, align 8
  %41 = getelementptr inbounds %struct.svn_delta_editor_t, %struct.svn_delta_editor_t* %40, i32 0, i32 2
  %42 = load i32 (i64, i8*, i32, i32*)*, i32 (i64, i8*, i32, i32*)** %41, align 8
  %43 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %44 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 %42(i64 %45, i8* %46, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %72

53:                                               ; preds = %31
  %54 = load %struct.svn_delta_editor_t*, %struct.svn_delta_editor_t** %4, align 8
  %55 = getelementptr inbounds %struct.svn_delta_editor_t, %struct.svn_delta_editor_t* %54, i32 0, i32 1
  %56 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** %55, align 8
  %57 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %58 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 %56(i32 %63, i8* %64, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %72

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %71, %53, %39
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %6, align 8
  %75 = call i32* @apr_hash_next(i32* %74)
  store i32* %75, i32** %6, align 8
  br label %28

76:                                               ; preds = %28
  %77 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %78 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %83 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.svn_delta_editor_t*, %struct.svn_delta_editor_t** %4, align 8
  %88 = getelementptr inbounds %struct.svn_delta_editor_t, %struct.svn_delta_editor_t* %87, i32 0, i32 0
  %89 = load i32 (i64, i32*, i32*)*, i32 (i64, i32*, i32*)** %88, align 8
  %90 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %91 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.node_baton*, %struct.node_baton** %3, align 8
  %94 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 %89(i64 %92, i32* null, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %86, %81, %76
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %101
}

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_9__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
