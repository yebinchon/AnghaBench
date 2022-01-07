; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i32, i32, i32, i32, %struct.revision_baton* }
%struct.revision_baton = type { i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8**, i8*)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i32** %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.node_baton*, align 8
  %9 = alloca %struct.revision_baton*, align 8
  store i32** %0, i32*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.node_baton*
  store %struct.node_baton* %11, %struct.node_baton** %8, align 8
  %12 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %13 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %12, i32 0, i32 4
  %14 = load %struct.revision_baton*, %struct.revision_baton** %13, align 8
  store %struct.revision_baton* %14, %struct.revision_baton** %9, align 8
  %15 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %16 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32**, i32*** %5, align 8
  store i32* null, i32** %20, align 8
  %21 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %21, i32** %4, align 8
  br label %49

22:                                               ; preds = %3
  %23 = load i32**, i32*** %5, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = load %struct.revision_baton*, %struct.revision_baton** %9, align 8
  %26 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %29 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %32 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %35 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @svn_checksum_to_cstring(i32 %33, i32 %36)
  %38 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %39 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %42 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @svn_checksum_to_cstring(i32 %40, i32 %43)
  %45 = load %struct.node_baton*, %struct.node_baton** %8, align 8
  %46 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @svn_fs_apply_textdelta(i32** %23, i8** %24, i32 %27, i32 %30, i32 %37, i32 %44, i32 %47)
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %22, %19
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

declare dso_local i32* @svn_fs_apply_textdelta(i32**, i8**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svn_checksum_to_cstring(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
