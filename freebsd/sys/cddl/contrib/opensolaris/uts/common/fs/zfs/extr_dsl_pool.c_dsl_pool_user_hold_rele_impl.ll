; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_user_hold_rele_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_user_hold_rele_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

@SPA_VERSION_USERREFS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%llx-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i8*, i64, i32*, i64)* @dsl_pool_user_hold_rele_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_pool_user_hold_rele_impl(%struct.TYPE_4__* %0, i64 %1, i8* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %14, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @spa_version(i32 %26)
  %28 = load i64, i64* @SPA_VERSION_USERREFS, align 8
  %29 = icmp sge i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @dmu_tx_is_syncing(i32* %32)
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i64, i64* %15, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %6
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @dsl_pool_user_hold_create_obj(%struct.TYPE_4__* %41, i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOENT, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %7, align 4
  br label %74

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %6
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %54)
  store i8* %55, i8** %16, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32*, i32** %14, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @zap_add(i32* %59, i64 %60, i8* %61, i32 8, i32 1, i64* %11, i32* %62)
  store i32 %63, i32* %17, align 4
  br label %70

64:                                               ; preds = %51
  %65 = load i32*, i32** %14, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @zap_remove(i32* %65, i64 %66, i8* %67, i32* %68)
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @strfree(i8* %71)
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %47
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @dsl_pool_user_hold_create_obj(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i8* @kmem_asprintf(i8*, i32, i8*) #1

declare dso_local i32 @zap_add(i32*, i64, i8*, i32, i32, i64*, i32*) #1

declare dso_local i32 @zap_remove(i32*, i64, i8*, i32*) #1

declare dso_local i32 @strfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
