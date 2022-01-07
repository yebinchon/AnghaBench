; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_fs_hotcopy_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_fs_hotcopy_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_hotcopy_notify_baton_t = type { i32, i32 (i32, %struct.TYPE_4__*, i32*)* }
%struct.TYPE_4__ = type { i8*, i8* }

@svn_repos_notify_hotcopy_rev_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32*)* @fs_hotcopy_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_hotcopy_notify(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fs_hotcopy_notify_baton_t*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.fs_hotcopy_notify_baton_t*
  store %struct.fs_hotcopy_notify_baton_t* %12, %struct.fs_hotcopy_notify_baton_t** %9, align 8
  %13 = load i32, i32* @svn_repos_notify_hotcopy_rev_range, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_4__* @svn_repos_notify_create(i32 %13, i32* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.fs_hotcopy_notify_baton_t*, %struct.fs_hotcopy_notify_baton_t** %9, align 8
  %23 = getelementptr inbounds %struct.fs_hotcopy_notify_baton_t, %struct.fs_hotcopy_notify_baton_t* %22, i32 0, i32 1
  %24 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %23, align 8
  %25 = load %struct.fs_hotcopy_notify_baton_t*, %struct.fs_hotcopy_notify_baton_t** %9, align 8
  %26 = getelementptr inbounds %struct.fs_hotcopy_notify_baton_t, %struct.fs_hotcopy_notify_baton_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 %24(i32 %27, %struct.TYPE_4__* %28, i32* %29)
  ret void
}

declare dso_local %struct.TYPE_4__* @svn_repos_notify_create(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
