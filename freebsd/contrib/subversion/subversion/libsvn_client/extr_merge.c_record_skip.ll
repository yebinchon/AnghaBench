; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_record_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_record_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32 (i32, %struct.TYPE_11__*, i32*)* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.merge_dir_baton_t = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i8*, i32, i32, i32, %struct.merge_dir_baton_t*, i32*)* @record_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @record_skip(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.merge_dir_baton_t* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.merge_dir_baton_t*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.merge_dir_baton_t* %5, %struct.merge_dir_baton_t** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %8, align 8
  br label %89

23:                                               ; preds = %7
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29, %23
  %35 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %14, align 8
  %36 = icmp ne %struct.merge_dir_baton_t* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %14, align 8
  %39 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @store_path(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %42, %37, %29
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %52, align 8
  %54 = icmp ne i32 (i32, %struct.TYPE_11__*, i32*)* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @notify_merge_begin(%struct.TYPE_12__* %56, i8* %57, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = call %struct.TYPE_11__* @svn_wc_create_notify(i8* %62, i32 %63, i32* %64)
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %16, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 %78(i32 %83, %struct.TYPE_11__* %84, i32* %85)
  br label %87

87:                                               ; preds = %55, %48
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %8, align 8
  br label %89

89:                                               ; preds = %87, %21
  %90 = load i32*, i32** %8, align 8
  ret i32* %90
}

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @notify_merge_begin(%struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
