; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_alloc_tswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_alloc_tswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_switch = type { i64, %struct.TYPE_4__*, i32*, %struct.f_switch*, %struct.torus*, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.t_switch* }
%struct.torus = type { i64, i64, i32, %struct.t_switch**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.f_switch = type { i32, i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ERR 4E14: unexpectedly requested too many switch structures!\0A\00", align 1
@SWITCH_MAX_PORTGRPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ERR 4E15: calloc: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t_switch* (%struct.torus*, %struct.f_switch*)* @alloc_tswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t_switch* @alloc_tswitch(%struct.torus* %0, %struct.f_switch* %1) #0 {
  %3 = alloca %struct.torus*, align 8
  %4 = alloca %struct.f_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.t_switch*, align 8
  %8 = alloca i8*, align 8
  store %struct.torus* %0, %struct.torus** %3, align 8
  store %struct.f_switch* %1, %struct.f_switch** %4, align 8
  store %struct.t_switch* null, %struct.t_switch** %7, align 8
  %9 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %10 = icmp ne %struct.f_switch* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %144

12:                                               ; preds = %2
  %13 = load %struct.torus*, %struct.torus** %3, align 8
  %14 = getelementptr inbounds %struct.torus, %struct.torus* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.torus*, %struct.torus** %3, align 8
  %17 = getelementptr inbounds %struct.torus, %struct.torus* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.torus*, %struct.torus** %3, align 8
  %22 = getelementptr inbounds %struct.torus, %struct.torus* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* @OSM_LOG_ERROR, align 4
  %26 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %24, i32 %25, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %144

27:                                               ; preds = %12
  %28 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %29 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 48, %32
  %34 = load i32, i32* @SWITCH_MAX_PORTGRPS, align 4
  %35 = load %struct.torus*, %struct.torus** %3, align 8
  %36 = getelementptr inbounds %struct.torus, %struct.torus* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = add i64 %33, %40
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call %struct.t_switch* @calloc(i32 1, i64 %42)
  store %struct.t_switch* %43, %struct.t_switch** %7, align 8
  %44 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %45 = icmp ne %struct.t_switch* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %27
  %47 = load %struct.torus*, %struct.torus** %3, align 8
  %48 = getelementptr inbounds %struct.torus, %struct.torus* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* @OSM_LOG_ERROR, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %50, i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %144

55:                                               ; preds = %27
  %56 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %57 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %56, i64 1
  %58 = bitcast %struct.t_switch* %57 to i8*
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %61 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %63 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %66 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %68 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %72 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.torus*, %struct.torus** %3, align 8
  %74 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %75 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %74, i32 0, i32 4
  store %struct.torus* %73, %struct.torus** %75, align 8
  %76 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %77 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %78 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %77, i32 0, i32 3
  store %struct.f_switch* %76, %struct.f_switch** %78, align 8
  %79 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %80 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %83 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = bitcast i32* %85 to i8*
  store i8* %86, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %131, %55
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @SWITCH_MAX_PORTGRPS, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %134

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %94 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  %100 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %101 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %102 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store %struct.t_switch* %100, %struct.t_switch** %107, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %111 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32* %109, i32** %116, align 8
  %117 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %118 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.torus*, %struct.torus** %3, align 8
  %126 = getelementptr inbounds %struct.torus, %struct.torus* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = bitcast i32* %129 to i8*
  store i8* %130, i8** %8, align 8
  br label %131

131:                                              ; preds = %91
  %132 = load i32, i32* %5, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %87

134:                                              ; preds = %87
  %135 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %136 = load %struct.torus*, %struct.torus** %3, align 8
  %137 = getelementptr inbounds %struct.torus, %struct.torus* %136, i32 0, i32 3
  %138 = load %struct.t_switch**, %struct.t_switch*** %137, align 8
  %139 = load %struct.torus*, %struct.torus** %3, align 8
  %140 = getelementptr inbounds %struct.torus, %struct.torus* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %138, i64 %141
  store %struct.t_switch* %135, %struct.t_switch** %143, align 8
  br label %144

144:                                              ; preds = %134, %46, %20, %11
  %145 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  ret %struct.t_switch* %145
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local %struct.t_switch* @calloc(i32, i64) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
