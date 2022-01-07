; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i32, i32)*, i32, i32 (i32)* }

@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Driver is still in Listen state - wait for it to end before continuing\00", align 1
@P2P_FIND_PROGRESSIVE = common dso_local global i64 0, align 8
@P2P_FIND_START_WITH_FULL = common dso_local global i64 0, align 8
@P2P_SCAN_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Starting search (pending full scan)\00", align 1
@P2P_SCAN_SOCIAL_PLUS_ONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Starting search (+ freq %u)\00", align 1
@P2P_SCAN_SOCIAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Starting search\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Scan request schedule failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*)* @p2p_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_search(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @DEV_PW_DEFAULT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %14 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %13, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %111

15:                                               ; preds = %1
  %16 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %20(i32 %25)
  %27 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %28 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %15
  %32 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %33 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @P2P_FIND_PROGRESSIVE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %39 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @P2P_FIND_START_WITH_FULL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @P2P_SCAN_FULL, align 4
  store i32 %44, i32* %4, align 4
  %45 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %46 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %48 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  br label %80

49:                                               ; preds = %37, %15
  %50 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %51 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @P2P_FIND_PROGRESSIVE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %57 = call i32 @p2p_get_next_prog_freq(%struct.p2p_data* %56)
  store i32 %57, i32* %3, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %61 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @P2P_FIND_START_WITH_FULL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %67 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %3, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %55
  %71 = load i32, i32* @P2P_SCAN_SOCIAL_PLUS_ONE, align 4
  store i32 %71, i32* %4, align 4
  %72 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %79

75:                                               ; preds = %65, %59
  %76 = load i32, i32* @P2P_SCAN_SOCIAL, align 4
  store i32 %76, i32* %4, align 4
  %77 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %78 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %82 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32)** %84, align 8
  %86 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %87 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %86, i32 0, i32 5
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %94 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %97 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %100 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 %85(i32 %90, i32 %91, i32 %92, i32 %95, i32 %98, i32 %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %80
  %107 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %108 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %110 = call i32 @p2p_continue_find(%struct.p2p_data* %109)
  br label %111

111:                                              ; preds = %12, %106, %80
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_get_next_prog_freq(%struct.p2p_data*) #1

declare dso_local i32 @p2p_continue_find(%struct.p2p_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
