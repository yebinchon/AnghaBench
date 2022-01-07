; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_get_contents_from_fulltext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_get_contents_from_fulltext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i64, i64, i64 }

@get_fulltext_partial = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, %struct.TYPE_5__*, i8*, i64*)* @get_contents_from_fulltext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_contents_from_fulltext(i64* %0, %struct.TYPE_5__* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* @get_fulltext_partial, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @svn_cache__get_partial(i8** %9, i64* %30, i32 %33, i32* %35, i32 %36, %struct.TYPE_6__* %10, i32 %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %4
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %56
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, i32*, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
