; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32 }
%struct.query_info = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_zone = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zones_lookup(%struct.auth_zones* %0, %struct.query_info* %1, %struct.regional* %2, %struct.dns_msg** %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.auth_zones*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.dns_msg**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.auth_zone*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %9, align 8
  store %struct.query_info* %1, %struct.query_info** %10, align 8
  store %struct.regional* %2, %struct.regional** %11, align 8
  store %struct.dns_msg** %3, %struct.dns_msg*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %19 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %18, i32 0, i32 0
  %20 = call i32 @lock_rw_rdlock(i32* %19)
  %21 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load %struct.query_info*, %struct.query_info** %10, align 8
  %25 = getelementptr inbounds %struct.query_info, %struct.query_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.auth_zone* @auth_zone_find(%struct.auth_zones* %21, i32* %22, i64 %23, i32 %26)
  store %struct.auth_zone* %27, %struct.auth_zone** %17, align 8
  %28 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %29 = icmp ne %struct.auth_zone* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %7
  %31 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %32 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %31, i32 0, i32 0
  %33 = call i32 @lock_rw_unlock(i32* %32)
  %34 = load i32*, i32** %13, align 8
  store i32 1, i32* %34, align 4
  store i32 0, i32* %8, align 4
  br label %75

35:                                               ; preds = %7
  %36 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %37 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %36, i32 0, i32 1
  %38 = call i32 @lock_rw_rdlock(i32* %37)
  %39 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %40 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %39, i32 0, i32 0
  %41 = call i32 @lock_rw_unlock(i32* %40)
  %42 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %43 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %48 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %47, i32 0, i32 1
  %49 = call i32 @lock_rw_unlock(i32* %48)
  %50 = load i32*, i32** %13, align 8
  store i32 1, i32* %50, align 4
  store i32 0, i32* %8, align 4
  br label %75

51:                                               ; preds = %35
  %52 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %53 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %58 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %62 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %61, i32 0, i32 1
  %63 = call i32 @lock_rw_unlock(i32* %62)
  store i32 0, i32* %8, align 4
  br label %75

64:                                               ; preds = %51
  %65 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %66 = load %struct.query_info*, %struct.query_info** %10, align 8
  %67 = load %struct.regional*, %struct.regional** %11, align 8
  %68 = load %struct.dns_msg**, %struct.dns_msg*** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @auth_zone_generate_answer(%struct.auth_zone* %65, %struct.query_info* %66, %struct.regional* %67, %struct.dns_msg** %68, i32* %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %72 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %71, i32 0, i32 1
  %73 = call i32 @lock_rw_unlock(i32* %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %64, %56, %46, %30
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.auth_zones*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @auth_zone_generate_answer(%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
