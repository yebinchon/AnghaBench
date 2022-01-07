; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_remove_node_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_remove_node_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, i32, %struct.revision_baton* }
%struct.revision_baton = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @remove_node_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @remove_node_props(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node_baton*, align 8
  %5 = alloca %struct.revision_baton*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.node_baton*
  store %struct.node_baton* %10, %struct.node_baton** %4, align 8
  %11 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %12 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %11, i32 0, i32 2
  %13 = load %struct.revision_baton*, %struct.revision_baton** %12, align 8
  store %struct.revision_baton* %13, %struct.revision_baton** %5, align 8
  %14 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %15 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %19, i32** %2, align 8
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %22 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %25 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %28 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @svn_fs_node_proplist(i32** %6, i32 %23, i32 %26, i32 %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %33 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @apr_hash_first(i32 %34, i32* %35)
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %60, %20
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @apr_hash_this_key(i32* %41)
  store i8* %42, i8** %8, align 8
  %43 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %44 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %47 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %51 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %56 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @change_node_prop(i32 %45, i32 %48, i8* %49, i32* null, i32 %54, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %40
  %61 = load i32*, i32** %7, align 8
  %62 = call i32* @apr_hash_next(i32* %61)
  store i32* %62, i32** %7, align 8
  br label %37

63:                                               ; preds = %37
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %2, align 8
  br label %65

65:                                               ; preds = %63, %18
  %66 = load i32*, i32** %2, align 8
  ret i32* %66
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_node_proplist(i32**, i32, i32, i32) #1

declare dso_local i32* @apr_hash_first(i32, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @change_node_prop(i32, i32, i8*, i32*, i32, i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
