; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_validate_more_comp_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_validate_more_comp_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@IB_MCR_COMPMASK_MTU_SEL = common dso_local global i32 0, align 4
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Requested mcast group has MTU %x, which is not greater than %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Requested mcast group has MTU %x, which is not less than %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Requested mcast group has MTU %x, which is not equal to %x\0A\00", align 1
@IB_MCR_COMPMASK_RATE_SEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Requested mcast group has RATE %x, which is not greater than %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Requested mcast group has RATE %x, which is not less than %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Requested mcast group has RATE %x, which is not equal to %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32)* @validate_more_comp_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_more_comp_fields(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @IB_MCR_COMPMASK_MTU_SEL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 6
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 63
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 63
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %71 [
    i32 0, label %35
    i32 1, label %47
    i32 2, label %59
  ]

35:                                               ; preds = %20
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @OSM_LOG(i32* %40, i32 %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %136

46:                                               ; preds = %35
  br label %72

47:                                               ; preds = %20
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @OSM_LOG(i32* %52, i32 %53, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %5, align 4
  br label %136

58:                                               ; preds = %47
  br label %72

59:                                               ; preds = %20
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @OSM_LOG(i32* %64, i32 %65, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %5, align 4
  br label %136

70:                                               ; preds = %59
  br label %72

71:                                               ; preds = %20
  br label %72

72:                                               ; preds = %71, %70, %58, %46
  br label %73

73:                                               ; preds = %72, %4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @IB_MCR_COMPMASK_RATE_SEL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %134

78:                                               ; preds = %73
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 6
  store i32 %82, i32* %13, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  store i32 %86, i32* %14, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 63
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %13, align 4
  switch i32 %92, label %132 [
    i32 0, label %93
    i32 1, label %106
    i32 2, label %119
  ]

93:                                               ; preds = %78
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @ib_path_compare_rates(i32 %94, i32 %95)
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @OSM_LOG(i32* %99, i32 %100, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %5, align 4
  br label %136

105:                                              ; preds = %93
  br label %133

106:                                              ; preds = %78
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @ib_path_compare_rates(i32 %107, i32 %108)
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @OSM_LOG(i32* %112, i32 %113, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %5, align 4
  br label %136

118:                                              ; preds = %106
  br label %133

119:                                              ; preds = %78
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @ib_path_compare_rates(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @OSM_LOG(i32* %125, i32 %126, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %5, align 4
  br label %136

131:                                              ; preds = %119
  br label %133

132:                                              ; preds = %78
  br label %133

133:                                              ; preds = %132, %131, %118, %105
  br label %134

134:                                              ; preds = %133, %73
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %124, %111, %98, %63, %51, %39
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ib_path_compare_rates(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
