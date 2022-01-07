; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_route_refresh_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_route_refresh_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.bgp_route_refresh = type { i32, i32 }

@BGP_ROUTE_REFRESH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0A\09  AFI %s (%u), SAFI %s (%u)\00", align 1
@af_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@bgp_safi_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A\09  \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[|BGP]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @bgp_route_refresh_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgp_route_refresh_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bgp_route_refresh*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BGP_ROUTE_REFRESH_SIZE, align 4
  %12 = call i32 @ND_TCHECK2(i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BGP_ROUTE_REFRESH_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %57

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to %struct.bgp_route_refresh*
  store %struct.bgp_route_refresh* %19, %struct.bgp_route_refresh** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* @af_values, align 4
  %22 = load %struct.bgp_route_refresh*, %struct.bgp_route_refresh** %7, align 8
  %23 = getelementptr inbounds %struct.bgp_route_refresh, %struct.bgp_route_refresh* %22, i32 0, i32 1
  %24 = call i32 @EXTRACT_16BITS(i32* %23)
  %25 = call i32 @tok2str(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.bgp_route_refresh*, %struct.bgp_route_refresh** %7, align 8
  %27 = getelementptr inbounds %struct.bgp_route_refresh, %struct.bgp_route_refresh* %26, i32 0, i32 1
  %28 = call i32 @EXTRACT_16BITS(i32* %27)
  %29 = load i32, i32* @bgp_safi_values, align 4
  %30 = load %struct.bgp_route_refresh*, %struct.bgp_route_refresh** %7, align 8
  %31 = getelementptr inbounds %struct.bgp_route_refresh, %struct.bgp_route_refresh* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tok2str(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.bgp_route_refresh*, %struct.bgp_route_refresh** %7, align 8
  %35 = getelementptr inbounds %struct.bgp_route_refresh, %struct.bgp_route_refresh* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_5__*
  %39 = call i32 @ND_PRINT(%struct.TYPE_5__* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %53

44:                                               ; preds = %17
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ND_TCHECK2(i32 %46, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @print_unknown_data(%struct.TYPE_5__* %49, i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %44, %17
  br label %57

54:                                               ; No predecessors!
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([7 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %57

57:                                               ; preds = %54, %53, %16
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_5__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
