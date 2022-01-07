; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_revprops_new_revision_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_revprops_new_revision_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_baton = type { i32, i32, i32 (i32, %struct.TYPE_4__*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.revision_baton = type { i32, i64 }

@svn_repos_notify_load_skipped_rev = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*)* @revprops_new_revision_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @revprops_new_revision_record(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.parse_baton*, align 8
  %10 = alloca %struct.revision_baton*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.parse_baton*
  store %struct.parse_baton* %13, %struct.parse_baton** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call %struct.revision_baton* @make_revision_baton(i32* %14, %struct.parse_baton* %15, i32* %16)
  store %struct.revision_baton* %17, %struct.revision_baton** %10, align 8
  %18 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %19 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %4
  %23 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %24 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %23, i32 0, i32 2
  %25 = load i32 (i32, %struct.TYPE_4__*, i32)*, i32 (i32, %struct.TYPE_4__*, i32)** %24, align 8
  %26 = icmp ne i32 (i32, %struct.TYPE_4__*, i32)* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = load i32, i32* @svn_repos_notify_load_skipped_rev, align 4
  %29 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %30 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_4__* @svn_repos_notify_create(i32 %28, i32 %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %11, align 8
  %33 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %34 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %39 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %38, i32 0, i32 2
  %40 = load i32 (i32, %struct.TYPE_4__*, i32)*, i32 (i32, %struct.TYPE_4__*, i32)** %39, align 8
  %41 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %42 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %46 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %40(i32 %43, %struct.TYPE_4__* %44, i32 %47)
  %49 = load %struct.parse_baton*, %struct.parse_baton** %9, align 8
  %50 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @svn_pool_clear(i32 %51)
  br label %53

53:                                               ; preds = %27, %22, %4
  %54 = load %struct.revision_baton*, %struct.revision_baton** %10, align 8
  %55 = bitcast %struct.revision_baton* %54 to i8*
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %57
}

declare dso_local %struct.revision_baton* @make_revision_baton(i32*, %struct.parse_baton*, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_repos_notify_create(i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
