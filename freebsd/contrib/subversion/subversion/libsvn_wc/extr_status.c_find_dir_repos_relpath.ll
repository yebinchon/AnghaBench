; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_find_dir_repos_relpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_find_dir_repos_relpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i32, i32, %struct.dir_baton*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_9__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dir_baton*, i32*)* @find_dir_repos_relpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_dir_repos_relpath(%struct.dir_baton* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dir_baton*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dir_baton*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.dir_baton* %0, %struct.dir_baton** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %10 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %15 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %14, i32 0, i32 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %24 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %23, i32 0, i32 3
  %25 = load %struct.dir_baton*, %struct.dir_baton** %24, align 8
  store %struct.dir_baton* %25, %struct.dir_baton** %7, align 8
  %26 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %27 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %30 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_9__* @svn_hash_gets(i32 %28, i32 %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %3, align 8
  br label %54

44:                                               ; preds = %35, %22
  %45 = load %struct.dir_baton*, %struct.dir_baton** %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i8* @find_dir_repos_relpath(%struct.dir_baton* %45, i32* %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %50 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i8* @svn_relpath_join(i8* %48, i32 %51, i32* %52)
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %44, %40, %13
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local %struct.TYPE_9__* @svn_hash_gets(i32, i32) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
