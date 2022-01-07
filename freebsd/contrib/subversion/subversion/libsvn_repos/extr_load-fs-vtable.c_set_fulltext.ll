; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_set_fulltext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_set_fulltext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, i32, i32, %struct.revision_baton* }
%struct.revision_baton = type { i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*)* @set_fulltext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_fulltext(i32** %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.node_baton*, align 8
  %7 = alloca %struct.revision_baton*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.node_baton*
  store %struct.node_baton* %9, %struct.node_baton** %6, align 8
  %10 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %11 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %10, i32 0, i32 3
  %12 = load %struct.revision_baton*, %struct.revision_baton** %11, align 8
  store %struct.revision_baton* %12, %struct.revision_baton** %7, align 8
  %13 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %14 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32**, i32*** %4, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %19, i32** %3, align 8
  br label %39

20:                                               ; preds = %2
  %21 = load i32**, i32*** %4, align 8
  %22 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %23 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %26 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %29 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %32 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @svn_checksum_to_cstring(i32 %30, i32 %33)
  %35 = load %struct.node_baton*, %struct.node_baton** %6, align 8
  %36 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @svn_fs_apply_text(i32** %21, i32 %24, i32 %27, i32 %34, i32 %37)
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %20, %17
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32* @svn_fs_apply_text(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @svn_checksum_to_cstring(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
