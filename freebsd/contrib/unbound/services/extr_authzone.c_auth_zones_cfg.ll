; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32, i32 }
%struct.config_auth = type { i32, i32, i64, i32, i64, i64, i32 }
%struct.auth_zone = type { i32, i32, i32, i32, i64, i64 }
%struct.auth_xfer = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zones*, %struct.config_auth*)* @auth_zones_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_zones_cfg(%struct.auth_zones* %0, %struct.config_auth* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_zones*, align 8
  %5 = alloca %struct.config_auth*, align 8
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.auth_xfer*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %4, align 8
  store %struct.config_auth* %1, %struct.config_auth** %5, align 8
  store %struct.auth_xfer* null, %struct.auth_xfer** %7, align 8
  %8 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %9 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %8, i32 0, i32 1
  %10 = call i32 @lock_rw_wrlock(i32* %9)
  %11 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %12 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %13 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.auth_zone* @auth_zones_find_or_add_zone(%struct.auth_zones* %11, i32 %14)
  store %struct.auth_zone* %15, %struct.auth_zone** %6, align 8
  %16 = icmp ne %struct.auth_zone* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %19 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %18, i32 0, i32 1
  %20 = call i32 @lock_rw_unlock(i32* %19)
  store i32 0, i32* %3, align 4
  br label %133

21:                                               ; preds = %2
  %22 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %23 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %28 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26, %21
  %32 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %33 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %34 = call %struct.auth_xfer* @auth_zones_find_or_add_xfer(%struct.auth_zones* %32, %struct.auth_zone* %33)
  store %struct.auth_xfer* %34, %struct.auth_xfer** %7, align 8
  %35 = icmp ne %struct.auth_xfer* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %38 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %37, i32 0, i32 1
  %39 = call i32 @lock_rw_unlock(i32* %38)
  %40 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %41 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %40, i32 0, i32 1
  %42 = call i32 @lock_rw_unlock(i32* %41)
  store i32 0, i32* %3, align 4
  br label %133

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %46 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %51 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.auth_zones*, %struct.auth_zones** %4, align 8
  %54 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %53, i32 0, i32 1
  %55 = call i32 @lock_rw_unlock(i32* %54)
  %56 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %57 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %59 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %60 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @auth_zone_set_zonefile(%struct.auth_zone* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %52
  %65 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %66 = icmp ne %struct.auth_xfer* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %69 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %68, i32 0, i32 0
  %70 = call i32 @lock_basic_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %73 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %72, i32 0, i32 1
  %74 = call i32 @lock_rw_unlock(i32* %73)
  store i32 0, i32* %3, align 4
  br label %133

75:                                               ; preds = %52
  %76 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %77 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %80 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %82 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %85 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %87 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %90 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %92 = icmp ne %struct.auth_xfer* %91, null
  br i1 %92, label %93, label %129

93:                                               ; preds = %75
  %94 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %95 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %97 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %101 = call i32 @xfer_set_masters(i32* %99, %struct.config_auth* %100, i32 0)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %93
  %104 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %105 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %104, i32 0, i32 0
  %106 = call i32 @lock_basic_unlock(i32* %105)
  %107 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %108 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %107, i32 0, i32 1
  %109 = call i32 @lock_rw_unlock(i32* %108)
  store i32 0, i32* %3, align 4
  br label %133

110:                                              ; preds = %93
  %111 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %112 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.config_auth*, %struct.config_auth** %5, align 8
  %116 = call i32 @xfer_set_masters(i32* %114, %struct.config_auth* %115, i32 1)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %110
  %119 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %120 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %119, i32 0, i32 0
  %121 = call i32 @lock_basic_unlock(i32* %120)
  %122 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %123 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %122, i32 0, i32 1
  %124 = call i32 @lock_rw_unlock(i32* %123)
  store i32 0, i32* %3, align 4
  br label %133

125:                                              ; preds = %110
  %126 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %127 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %126, i32 0, i32 0
  %128 = call i32 @lock_basic_unlock(i32* %127)
  br label %129

129:                                              ; preds = %125, %75
  %130 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %131 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %130, i32 0, i32 1
  %132 = call i32 @lock_rw_unlock(i32* %131)
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %118, %103, %71, %36, %17
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zones_find_or_add_zone(%struct.auth_zones*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local %struct.auth_xfer* @auth_zones_find_or_add_xfer(%struct.auth_zones*, %struct.auth_zone*) #1

declare dso_local i32 @auth_zone_set_zonefile(%struct.auth_zone*, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @xfer_set_masters(i32*, %struct.config_auth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
