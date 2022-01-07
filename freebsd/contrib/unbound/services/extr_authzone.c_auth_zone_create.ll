; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.auth_zone* }
%struct.auth_zones = type { i32 }

@auth_data_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"duplicate auth zone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_zone* @auth_zone_create(%struct.auth_zones* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.auth_zones*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auth_zone*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i64 @calloc(i32 1, i32 40)
  %12 = inttoptr i64 %11 to %struct.auth_zone*
  store %struct.auth_zone* %12, %struct.auth_zone** %10, align 8
  %13 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %14 = icmp ne %struct.auth_zone* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.auth_zone* null, %struct.auth_zone** %5, align 8
  br label %73

16:                                               ; preds = %4
  %17 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %18 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %19 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.auth_zone* %17, %struct.auth_zone** %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %23 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %26 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @dname_count_labels(i32* %27)
  %29 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %30 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @memdup(i32* %31, i64 %32)
  %34 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %35 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %37 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %16
  %41 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %42 = call i32 @free(%struct.auth_zone* %41)
  store %struct.auth_zone* null, %struct.auth_zone** %5, align 8
  br label %73

43:                                               ; preds = %16
  %44 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %45 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %44, i32 0, i32 4
  %46 = call i32 @rbtree_init(i32* %45, i32* @auth_data_cmp)
  %47 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %48 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %47, i32 0, i32 1
  %49 = call i32 @lock_rw_init(i32* %48)
  %50 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %51 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %50, i32 0, i32 1
  %52 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %53 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %52, i32 0, i32 3
  %54 = call i32 @lock_protect(i32* %51, i32* %53, i32 36)
  %55 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %56 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %55, i32 0, i32 1
  %57 = call i32 @lock_rw_wrlock(i32* %56)
  %58 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %59 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %58, i32 0, i32 0
  %60 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %61 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %60, i32 0, i32 2
  %62 = call i32 @rbtree_insert(i32* %59, %struct.TYPE_2__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %43
  %65 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %66 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %65, i32 0, i32 1
  %67 = call i32 @lock_rw_unlock(i32* %66)
  %68 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  %69 = call i32 @auth_zone_delete(%struct.auth_zone* %68)
  %70 = call i32 @log_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_zone* null, %struct.auth_zone** %5, align 8
  br label %73

71:                                               ; preds = %43
  %72 = load %struct.auth_zone*, %struct.auth_zone** %10, align 8
  store %struct.auth_zone* %72, %struct.auth_zone** %5, align 8
  br label %73

73:                                               ; preds = %71, %64, %40, %15
  %74 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  ret %struct.auth_zone* %74
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @memdup(i32*, i64) #1

declare dso_local i32 @free(%struct.auth_zone*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @rbtree_insert(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @auth_zone_delete(%struct.auth_zone*) #1

declare dso_local i32 @log_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
