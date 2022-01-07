; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_add_RR.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_add_RR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.local_zone = type { i32 }

@local_zone_transparent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_zones_add_RR(%struct.local_zones* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_zone*, align 8
  %12 = alloca i32, align 4
  store %struct.local_zones* %0, %struct.local_zones** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @get_rr_nameclass(i8* %13, i32** %6, i32* %7, i32* %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @dname_count_size_labels(i32* %18, i64* %9)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %21 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %20, i32 0, i32 0
  %22 = call i32 @lock_rw_wrlock(i32* %21)
  %23 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.local_zone* @local_zones_lookup(%struct.local_zones* %23, i32* %24, i64 %25, i32 %26, i32 %27, i32 %28)
  store %struct.local_zone* %29, %struct.local_zone** %11, align 8
  %30 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %31 = icmp ne %struct.local_zone* %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %17
  %33 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @local_zone_transparent, align 4
  %39 = call %struct.local_zone* @local_zones_add_zone(%struct.local_zones* %33, i32* %34, i64 %35, i32 %36, i32 %37, i32 %38)
  store %struct.local_zone* %39, %struct.local_zone** %11, align 8
  %40 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %41 = icmp ne %struct.local_zone* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %44 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %43, i32 0, i32 0
  %45 = call i32 @lock_rw_unlock(i32* %44)
  store i32 0, i32* %3, align 4
  br label %64

46:                                               ; preds = %32
  br label %50

47:                                               ; preds = %17
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @free(i32* %48)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %52 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %51, i32 0, i32 0
  %53 = call i32 @lock_rw_wrlock(i32* %52)
  %54 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %55 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %54, i32 0, i32 0
  %56 = call i32 @lock_rw_unlock(i32* %55)
  %57 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @lz_enter_rr_into_zone(%struct.local_zone* %57, i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %61 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %60, i32 0, i32 0
  %62 = call i32 @lock_rw_unlock(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %50, %42, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @get_rr_nameclass(i8*, i32**, i32*, i32*) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_lookup(%struct.local_zones*, i32*, i64, i32, i32, i32) #1

declare dso_local %struct.local_zone* @local_zones_add_zone(%struct.local_zones*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @lz_enter_rr_into_zone(%struct.local_zone*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
