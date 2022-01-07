; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_add_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_add_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32, i32, i32 }
%struct.local_zones = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"internal: duplicate entry in local_zones_add_zone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.local_zone* @local_zones_add_zone(%struct.local_zones* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.local_zone*, align 8
  %8 = alloca %struct.local_zones*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.local_zone*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.local_zone* @local_zone_create(i32* %15, i64 %16, i32 %17, i32 %18, i32 %19)
  store %struct.local_zone* %20, %struct.local_zone** %14, align 8
  %21 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %22 = icmp ne %struct.local_zone* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @free(i32* %24)
  store %struct.local_zone* null, %struct.local_zone** %7, align 8
  br label %62

26:                                               ; preds = %6
  %27 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %28 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %27, i32 0, i32 0
  %29 = call i32 @lock_rw_wrlock(i32* %28)
  %30 = load %struct.local_zones*, %struct.local_zones** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @local_zones_find(%struct.local_zones* %30, i32* %31, i64 %32, i32 %33, i32 %34)
  %36 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %37 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.local_zones*, %struct.local_zones** %8, align 8
  %39 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %38, i32 0, i32 0
  %40 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %41 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %40, i32 0, i32 2
  %42 = call i32 @rbtree_insert(i32* %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %26
  %45 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %46 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %45, i32 0, i32 0
  %47 = call i32 @lock_rw_unlock(i32* %46)
  %48 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %49 = call i32 @local_zone_delete(%struct.local_zone* %48)
  %50 = call i32 @log_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.local_zone* null, %struct.local_zone** %7, align 8
  br label %62

51:                                               ; preds = %26
  %52 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %53 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %54 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %57 = call i32 @set_kiddo_parents(%struct.local_zone* %52, i32 %55, %struct.local_zone* %56)
  %58 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %59 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %58, i32 0, i32 0
  %60 = call i32 @lock_rw_unlock(i32* %59)
  %61 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  store %struct.local_zone* %61, %struct.local_zone** %7, align 8
  br label %62

62:                                               ; preds = %51, %44, %23
  %63 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  ret %struct.local_zone* %63
}

declare dso_local %struct.local_zone* @local_zone_create(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @local_zones_find(%struct.local_zones*, i32*, i64, i32, i32) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @local_zone_delete(%struct.local_zone*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @set_kiddo_parents(%struct.local_zone*, i32, %struct.local_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
