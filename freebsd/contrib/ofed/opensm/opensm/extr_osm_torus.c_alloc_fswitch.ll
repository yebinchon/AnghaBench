; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_alloc_fswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_alloc_fswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_switch = type { i32, i32, i8* }
%struct.fabric = type { i64, i64, %struct.f_switch**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ERR 4E02: realloc: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ERR 4E03: calloc: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f_switch* (%struct.fabric*, i32, i32)* @alloc_fswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f_switch* @alloc_fswitch(%struct.fabric* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fabric*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.f_switch*, align 8
  %10 = alloca i8*, align 8
  store %struct.fabric* %0, %struct.fabric** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.f_switch* null, %struct.f_switch** %9, align 8
  %11 = load %struct.fabric*, %struct.fabric** %4, align 8
  %12 = getelementptr inbounds %struct.fabric, %struct.fabric* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fabric*, %struct.fabric** %4, align 8
  %15 = getelementptr inbounds %struct.fabric, %struct.fabric* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %3
  %19 = load %struct.fabric*, %struct.fabric** %4, align 8
  %20 = getelementptr inbounds %struct.fabric, %struct.fabric* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = mul i64 5, %21
  %23 = udiv i64 %22, 4
  %24 = add i64 16, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.fabric*, %struct.fabric** %4, align 8
  %27 = getelementptr inbounds %struct.fabric, %struct.fabric* %26, i32 0, i32 2
  %28 = load %struct.f_switch**, %struct.f_switch*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call i8* @realloc(%struct.f_switch** %28, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %18
  %37 = load %struct.fabric*, %struct.fabric** %4, align 8
  %38 = getelementptr inbounds %struct.fabric, %struct.fabric* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* @OSM_LOG_ERROR, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 @OSM_LOG(i32* %40, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %110

45:                                               ; preds = %18
  %46 = load i8*, i8** %10, align 8
  %47 = bitcast i8* %46 to %struct.f_switch**
  %48 = load %struct.fabric*, %struct.fabric** %4, align 8
  %49 = getelementptr inbounds %struct.fabric, %struct.fabric* %48, i32 0, i32 2
  store %struct.f_switch** %47, %struct.f_switch*** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = load %struct.fabric*, %struct.fabric** %4, align 8
  %53 = getelementptr inbounds %struct.fabric, %struct.fabric* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.fabric*, %struct.fabric** %4, align 8
  %55 = getelementptr inbounds %struct.fabric, %struct.fabric* %54, i32 0, i32 2
  %56 = load %struct.f_switch**, %struct.f_switch*** %55, align 8
  %57 = load %struct.fabric*, %struct.fabric** %4, align 8
  %58 = getelementptr inbounds %struct.fabric, %struct.fabric* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.f_switch*, %struct.f_switch** %56, i64 %59
  %61 = load %struct.fabric*, %struct.fabric** %4, align 8
  %62 = getelementptr inbounds %struct.fabric, %struct.fabric* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fabric*, %struct.fabric** %4, align 8
  %65 = getelementptr inbounds %struct.fabric, %struct.fabric* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.f_switch** %60, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %45, %3
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = mul i64 %73, 1
  %75 = add i64 16, %74
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call %struct.f_switch* @calloc(i32 1, i64 %76)
  store %struct.f_switch* %77, %struct.f_switch** %9, align 8
  %78 = load %struct.f_switch*, %struct.f_switch** %9, align 8
  %79 = icmp ne %struct.f_switch* %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %71
  %81 = load %struct.fabric*, %struct.fabric** %4, align 8
  %82 = getelementptr inbounds %struct.fabric, %struct.fabric* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* @OSM_LOG_ERROR, align 4
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 @strerror(i32 %86)
  %88 = call i32 @OSM_LOG(i32* %84, i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %110

89:                                               ; preds = %71
  %90 = load %struct.f_switch*, %struct.f_switch** %9, align 8
  %91 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %90, i64 1
  %92 = bitcast %struct.f_switch* %91 to i8*
  %93 = load %struct.f_switch*, %struct.f_switch** %9, align 8
  %94 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.f_switch*, %struct.f_switch** %9, align 8
  %97 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.f_switch*, %struct.f_switch** %9, align 8
  %100 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.f_switch*, %struct.f_switch** %9, align 8
  %102 = load %struct.fabric*, %struct.fabric** %4, align 8
  %103 = getelementptr inbounds %struct.fabric, %struct.fabric* %102, i32 0, i32 2
  %104 = load %struct.f_switch**, %struct.f_switch*** %103, align 8
  %105 = load %struct.fabric*, %struct.fabric** %4, align 8
  %106 = getelementptr inbounds %struct.fabric, %struct.fabric* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = getelementptr inbounds %struct.f_switch*, %struct.f_switch** %104, i64 %107
  store %struct.f_switch* %101, %struct.f_switch** %109, align 8
  br label %110

110:                                              ; preds = %89, %80, %36
  %111 = load %struct.f_switch*, %struct.f_switch** %9, align 8
  ret %struct.f_switch* %111
}

declare dso_local i8* @realloc(%struct.f_switch**, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.f_switch**, i32, i32) #1

declare dso_local %struct.f_switch* @calloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
