; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_errlog.c_sync_error_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_errlog.c_sync_error_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@DMU_OT_ERROR_LOG = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i64*, i32*)* @sync_error_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_error_list(%struct.TYPE_9__* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @avl_numnodes(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %4
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMU_OT_ERROR_LOG, align 4
  %25 = load i32, i32* @DMU_OT_NONE, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @zap_create(i32 %23, i32 %24, i32 %25, i32 0, i32* %26)
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %20, %16
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.TYPE_10__* @avl_first(i32* %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %9, align 8
  br label %32

32:                                               ; preds = %63, %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %44 ]
  store i8* %46, i8** %12, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %50 = call i32 @bookmark_to_name(i32* %48, i8* %49, i32 64)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %58, 1
  %60 = load i8*, i8** %12, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @zap_update(i32 %53, i64 %55, i8* %56, i32 1, i64 %59, i8* %60, i32* %61)
  br label %63

63:                                               ; preds = %45
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = call %struct.TYPE_10__* @AVL_NEXT(i32* %64, %struct.TYPE_10__* %65)
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %9, align 8
  br label %32

67:                                               ; preds = %32
  store i8* null, i8** %11, align 8
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i32*, i32** %6, align 8
  %70 = call %struct.TYPE_10__* @avl_destroy_nodes(i32* %69, i8** %11)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %9, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = call i32 @kmem_free(%struct.TYPE_10__* %73, i32 16)
  br label %68

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %4
  ret void
}

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local i64 @zap_create(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @avl_first(i32*) #1

declare dso_local i32 @bookmark_to_name(i32*, i8*, i32) #1

declare dso_local i32 @zap_update(i32, i64, i8*, i32, i64, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_10__* @AVL_NEXT(i32*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @avl_destroy_nodes(i32*, i8**) #1

declare dso_local i32 @kmem_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
