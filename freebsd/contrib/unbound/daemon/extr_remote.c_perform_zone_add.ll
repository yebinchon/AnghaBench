; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_perform_zone_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_perform_zone_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.local_zone = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"error not a zone type. %s\0A\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.local_zones*, i8*)* @perform_zone_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_zone_add(i32* %0, %struct.local_zones* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.local_zones*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.local_zone*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.local_zones* %1, %struct.local_zones** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @find_arg2(i32* %14, i8* %15, i8** %11)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @parse_arg_name(i32* %20, i8* %21, i32** %8, i64* %10, i32* %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %80

25:                                               ; preds = %19
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @local_zone_str2type(i8* %26, i32* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @free(i32* %33)
  store i32 0, i32* %4, align 4
  br label %80

35:                                               ; preds = %25
  %36 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %37 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_wrlock(i32* %37)
  %39 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %44 = call %struct.local_zone* @local_zones_find(%struct.local_zones* %39, i32* %40, i64 %41, i32 %42, i32 %43)
  store %struct.local_zone* %44, %struct.local_zone** %13, align 8
  %45 = icmp ne %struct.local_zone* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %35
  %47 = load %struct.local_zone*, %struct.local_zone** %13, align 8
  %48 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %47, i32 0, i32 1
  %49 = call i32 @lock_rw_wrlock(i32* %48)
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.local_zone*, %struct.local_zone** %13, align 8
  %52 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.local_zone*, %struct.local_zone** %13, align 8
  %54 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %53, i32 0, i32 1
  %55 = call i32 @lock_rw_unlock(i32* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %59 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %58, i32 0, i32 0
  %60 = call i32 @lock_rw_unlock(i32* %59)
  store i32 1, i32* %4, align 4
  br label %80

61:                                               ; preds = %35
  %62 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @local_zones_add_zone(%struct.local_zones* %62, i32* %63, i64 %64, i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %72 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %71, i32 0, i32 0
  %73 = call i32 @lock_rw_unlock(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %80

76:                                               ; preds = %61
  %77 = load %struct.local_zones*, %struct.local_zones** %6, align 8
  %78 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %77, i32 0, i32 0
  %79 = call i32 @lock_rw_unlock(i32* %78)
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %70, %46, %29, %24, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @find_arg2(i32*, i8*, i8**) #1

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @local_zone_str2type(i8*, i32*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_find(%struct.local_zones*, i32*, i64, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @local_zones_add_zone(%struct.local_zones*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
