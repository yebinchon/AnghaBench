; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_release_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_release_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i64, i32, %struct.dir_baton* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton*)* @release_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @release_dir(%struct.dir_baton* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dir_baton*, align 8
  %4 = alloca %struct.dir_baton*, align 8
  store %struct.dir_baton* %0, %struct.dir_baton** %3, align 8
  %5 = load %struct.dir_baton*, %struct.dir_baton** %3, align 8
  %6 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.dir_baton*, %struct.dir_baton** %3, align 8
  %12 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.dir_baton*, %struct.dir_baton** %3, align 8
  %16 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %2, align 8
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.dir_baton*, %struct.dir_baton** %3, align 8
  %23 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %22, i32 0, i32 2
  %24 = load %struct.dir_baton*, %struct.dir_baton** %23, align 8
  store %struct.dir_baton* %24, %struct.dir_baton** %4, align 8
  %25 = load %struct.dir_baton*, %struct.dir_baton** %3, align 8
  %26 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @svn_pool_destroy(i32 %27)
  %29 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %30 = icmp ne %struct.dir_baton* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %33 = call i32* @release_dir(%struct.dir_baton* %32)
  %34 = call i32 @SVN_ERR(i32* %33)
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %35, %19
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
