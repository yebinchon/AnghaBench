; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_close_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_close_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { %struct.revision_baton* }
%struct.revision_baton = type { i64, %struct.parse_baton* }
%struct.parse_baton = type { i32, i32, i32 (i32, i32*, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_repos_notify_load_node_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_node(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node_baton*, align 8
  %5 = alloca %struct.revision_baton*, align 8
  %6 = alloca %struct.parse_baton*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.node_baton*
  store %struct.node_baton* %9, %struct.node_baton** %4, align 8
  %10 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %11 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %10, i32 0, i32 0
  %12 = load %struct.revision_baton*, %struct.revision_baton** %11, align 8
  store %struct.revision_baton* %12, %struct.revision_baton** %5, align 8
  %13 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %14 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %13, i32 0, i32 1
  %15 = load %struct.parse_baton*, %struct.parse_baton** %14, align 8
  store %struct.parse_baton* %15, %struct.parse_baton** %6, align 8
  %16 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %17 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %21, i32** %2, align 8
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.parse_baton*, %struct.parse_baton** %6, align 8
  %24 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %23, i32 0, i32 2
  %25 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %24, align 8
  %26 = icmp ne i32 (i32, i32*, i32)* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i32, i32* @svn_repos_notify_load_node_done, align 4
  %29 = load %struct.parse_baton*, %struct.parse_baton** %6, align 8
  %30 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @svn_repos_notify_create(i32 %28, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load %struct.parse_baton*, %struct.parse_baton** %6, align 8
  %34 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %33, i32 0, i32 2
  %35 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %34, align 8
  %36 = load %struct.parse_baton*, %struct.parse_baton** %6, align 8
  %37 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.parse_baton*, %struct.parse_baton** %6, align 8
  %41 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %35(i32 %38, i32* %39, i32 %42)
  %44 = load %struct.parse_baton*, %struct.parse_baton** %6, align 8
  %45 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @svn_pool_clear(i32 %46)
  br label %48

48:                                               ; preds = %27, %22
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %49, i32** %2, align 8
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i32*, i32** %2, align 8
  ret i32* %51
}

declare dso_local i32* @svn_repos_notify_create(i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
