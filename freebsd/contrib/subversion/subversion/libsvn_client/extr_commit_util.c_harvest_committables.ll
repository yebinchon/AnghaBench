; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_harvest_committables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_harvest_committables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harvest_baton = type { i8*, i8*, i32*, i32*, i32*, i8*, i32, i8*, i32, i32*, i32*, i64, i32, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@harvest_status_callback = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i32, i64, i32*, i32*, i32, i8*, i32, i8*, i32, i8*, i32*, i32*, i32*)* @harvest_committables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @harvest_committables(i8* %0, i32* %1, i32* %2, i8* %3, i32 %4, i64 %5, i32* %6, i32* %7, i32 %8, i8* %9, i32 %10, i8* %11, i32 %12, i8* %13, i32* %14, i32* %15, i32* %16) #0 {
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.harvest_baton, align 8
  store i8* %0, i8** %18, align 8
  store i32* %1, i32** %19, align 8
  store i32* %2, i32** %20, align 8
  store i8* %3, i8** %21, align 8
  store i32 %4, i32* %22, align 4
  store i64 %5, i64* %23, align 8
  store i32* %6, i32** %24, align 8
  store i32* %7, i32** %25, align 8
  store i32 %8, i32* %26, align 4
  store i8* %9, i8** %27, align 8
  store i32 %10, i32* %28, align 4
  store i8* %11, i8** %29, align 8
  store i32 %12, i32* %30, align 4
  store i8* %13, i8** %31, align 8
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  store i32* %16, i32** %34, align 8
  %36 = load i64, i64* %23, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %17
  %39 = load i32*, i32** %20, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38, %17
  %42 = load i64, i64* %23, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ true, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @SVN_ERR_ASSERT(i32 %47)
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 14
  store i32* %51, i32** %52, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 13
  store i32* %53, i32** %54, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %22, align 4
  %58 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 12
  store i32 %57, i32* %58, align 8
  %59 = load i64, i64* %23, align 8
  %60 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 11
  store i64 %59, i64* %60, align 8
  %61 = load i32*, i32** %24, align 8
  %62 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 10
  store i32* %61, i32** %62, align 8
  %63 = load i32*, i32** %25, align 8
  %64 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 9
  store i32* %63, i32** %64, align 8
  %65 = load i32, i32* %26, align 4
  %66 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 8
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** %27, align 8
  %68 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 7
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %30, align 4
  %70 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 6
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** %31, align 8
  %72 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 5
  store i8* %71, i8** %72, align 8
  %73 = load i32*, i32** %32, align 8
  %74 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 4
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %33, align 8
  %76 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 3
  store i32* %75, i32** %76, align 8
  %77 = getelementptr inbounds %struct.harvest_baton, %struct.harvest_baton* %35, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load i32*, i32** %32, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = load i32, i32* %22, align 4
  %81 = load i8*, i8** %21, align 8
  %82 = icmp ne i8* %81, null
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32, i32* @harvest_status_callback, align 4
  %87 = load i32, i32* %28, align 4
  %88 = load i8*, i8** %29, align 8
  %89 = load i32*, i32** %34, align 8
  %90 = call i32 @svn_wc_walk_status(i32* %78, i8* %79, i32 %80, i32 %83, i32 %84, i32 %85, i32* null, i32 %86, %struct.harvest_baton* %35, i32 %87, i8* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %92
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_walk_status(i32*, i8*, i32, i32, i32, i32, i32*, i32, %struct.harvest_baton*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
