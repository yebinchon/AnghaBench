; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_zone_dname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_enter_zone_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32, i32 }
%struct.local_zones = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"duplicate local-zone %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.local_zone* (%struct.local_zones*, i32*, i64, i32, i32, i32)* @lz_enter_zone_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.local_zone* @lz_enter_zone_dname(%struct.local_zones* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.local_zone*, align 8
  %8 = alloca %struct.local_zones*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.local_zone*, align 8
  %15 = alloca %struct.local_zone*, align 8
  %16 = alloca [256 x i8], align 16
  store %struct.local_zones* %0, %struct.local_zones** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.local_zone* @local_zone_create(i32* %17, i64 %18, i32 %19, i32 %20, i32 %21)
  store %struct.local_zone* %22, %struct.local_zone** %14, align 8
  %23 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %24 = icmp ne %struct.local_zone* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @free(i32* %26)
  %28 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.local_zone* null, %struct.local_zone** %7, align 8
  br label %72

29:                                               ; preds = %6
  %30 = load %struct.local_zones*, %struct.local_zones** %8, align 8
  %31 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %30, i32 0, i32 0
  %32 = call i32 @lock_rw_wrlock(i32* %31)
  %33 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %34 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %33, i32 0, i32 0
  %35 = call i32 @lock_rw_wrlock(i32* %34)
  %36 = load %struct.local_zones*, %struct.local_zones** %8, align 8
  %37 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %36, i32 0, i32 1
  %38 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %39 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %38, i32 0, i32 1
  %40 = call i32 @rbtree_insert(i32* %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %29
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %45 = call i32 @dname_str(i32* %43, i8* %44)
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %47 = call i32 @log_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %49 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %48, i32 0, i32 0
  %50 = call i32 @lock_rw_unlock(i32* %49)
  %51 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  store %struct.local_zone* %51, %struct.local_zone** %15, align 8
  %52 = load %struct.local_zones*, %struct.local_zones** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call %struct.local_zone* @local_zones_find(%struct.local_zones* %52, i32* %53, i64 %54, i32 %55, i32 %56)
  store %struct.local_zone* %57, %struct.local_zone** %14, align 8
  %58 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  %59 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %58, i32 0, i32 0
  %60 = call i32 @lock_rw_wrlock(i32* %59)
  %61 = load %struct.local_zones*, %struct.local_zones** %8, align 8
  %62 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %61, i32 0, i32 0
  %63 = call i32 @lock_rw_unlock(i32* %62)
  %64 = load %struct.local_zone*, %struct.local_zone** %15, align 8
  %65 = call i32 @local_zone_delete(%struct.local_zone* %64)
  %66 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  store %struct.local_zone* %66, %struct.local_zone** %7, align 8
  br label %72

67:                                               ; preds = %29
  %68 = load %struct.local_zones*, %struct.local_zones** %8, align 8
  %69 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %68, i32 0, i32 0
  %70 = call i32 @lock_rw_unlock(i32* %69)
  %71 = load %struct.local_zone*, %struct.local_zone** %14, align 8
  store %struct.local_zone* %71, %struct.local_zone** %7, align 8
  br label %72

72:                                               ; preds = %67, %42, %25
  %73 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  ret %struct.local_zone* %73
}

declare dso_local %struct.local_zone* @local_zone_create(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

declare dso_local i32 @dname_str(i32*, i8*) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_find(%struct.local_zones*, i32*, i64, i32, i32) #1

declare dso_local i32 @local_zone_delete(%struct.local_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
