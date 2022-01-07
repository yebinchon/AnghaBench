; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_clean_tmp_userrefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_clean_tmp_userrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@SPA_VERSION_USERREFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_pool_clean_tmp_userrefs(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @spa_version(i32 %22)
  %24 = load i64, i64* @SPA_VERSION_USERREFS, align 8
  %25 = icmp sge i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = call i32* (...) @fnvlist_alloc()
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @zap_cursor_init(i32* %4, i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %64, %19
  %33 = call i64 @zap_cursor_retrieve(i32* %4, %struct.TYPE_6__* %3)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @strchr(i32 %37, i8 signext 45)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nvlist_lookup_nvlist(i32* %42, i32 %44, i32** %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = call i32* (...) @fnvlist_alloc()
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @fnvlist_add_boolean(i32* %49, i8* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @fnvlist_add_nvlist(i32* %52, i32 %54, i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @fnvlist_free(i32* %57)
  br label %63

59:                                               ; preds = %35
  %60 = load i32*, i32** %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @fnvlist_add_boolean(i32* %60, i8* %61)
  br label %63

63:                                               ; preds = %59, %47
  br label %64

64:                                               ; preds = %63
  %65 = call i32 @zap_cursor_advance(i32* %4)
  br label %32

66:                                               ; preds = %32
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @dsl_dataset_user_release_tmp(%struct.TYPE_7__* %67, i32* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @fnvlist_free(i32* %70)
  %72 = call i32 @zap_cursor_fini(i32* %4)
  br label %73

73:                                               ; preds = %66, %18
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i64) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_6__*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @dsl_dataset_user_release_tmp(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
