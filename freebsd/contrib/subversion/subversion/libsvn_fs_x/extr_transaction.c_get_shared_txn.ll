; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_shared_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_shared_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_8__* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_11__*, i64, i32)* @get_shared_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_shared_txn(%struct.TYPE_11__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %10, align 8
  br label %21

21:                                               ; preds = %32, %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %36

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %10, align 8
  br label %21

36:                                               ; preds = %30, %21
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %4, align 8
  br label %81

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %10, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %54, align 8
  br label %65

55:                                               ; preds = %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @svn_pool_create(i32 %58)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call %struct.TYPE_8__* @apr_palloc(i32* %60, i32 32)
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %10, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %55, %49
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @FALSE, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %4, align 8
  br label %81

81:                                               ; preds = %65, %42
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %82
}

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local %struct.TYPE_8__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
