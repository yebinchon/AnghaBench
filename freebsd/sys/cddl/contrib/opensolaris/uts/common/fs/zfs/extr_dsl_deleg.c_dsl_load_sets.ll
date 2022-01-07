; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_load_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_load_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ZFS_MAX_DELEG_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8, i8, i8*, i32*)* @dsl_load_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_load_sets(i32* %0, i32 %1, i8 signext %2, i8 signext %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* @ZFS_MAX_DELEG_NAME, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %20, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %21, align 8
  %27 = load i8, i8* %10, align 1
  %28 = load i8, i8* %11, align 1
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @zfs_deleg_whokey(i8* %26, i8 signext %27, i8 signext %28, i8* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @zap_lookup(i32* %31, i32 %32, i8* %26, i32 8, i32 1, i32* %18)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %74

38:                                               ; preds = %6
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @zap_cursor_init(i32* %14, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %70, %38
  %43 = call i64 @zap_cursor_retrieve(i32* %14, %struct.TYPE_8__* %15)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %42
  %46 = load i32, i32* @KM_SLEEP, align 4
  %47 = call %struct.TYPE_9__* @kmem_alloc(i32 8, i32 %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %16, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strlcpy(i32 %50, i32 %52, i32 4)
  %54 = load i32, i32* @B_FALSE, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %59 = call i32* @avl_find(i32* %57, %struct.TYPE_9__* %58, i32* %17)
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load i32*, i32** %13, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @avl_insert(i32* %62, %struct.TYPE_9__* %63, i32 %64)
  br label %69

66:                                               ; preds = %45
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %68 = call i32 @kmem_free(%struct.TYPE_9__* %67, i32 8)
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69
  %71 = call i32 @zap_cursor_advance(i32* %14)
  br label %42

72:                                               ; preds = %42
  %73 = call i32 @zap_cursor_fini(i32* %14)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %74

74:                                               ; preds = %72, %36
  %75 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_deleg_whokey(i8*, i8 signext, i8 signext, i8*) #2

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #2

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_8__*) #2

declare dso_local %struct.TYPE_9__* @kmem_alloc(i32, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32* @avl_find(i32*, %struct.TYPE_9__*, i32*) #2

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @kmem_free(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @zap_cursor_advance(i32*) #2

declare dso_local i32 @zap_cursor_fini(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
