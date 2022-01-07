; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_ck_icmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_ck_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32 }
%union.ad_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ICMP_ROUTERADVERT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"advertisement\00", align 1
@ICMP_ROUTERSOLICIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"solicitation\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"unrecognized ICMP Router %s code=%d from %s to %s\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"unknown interface for router-discovery %s from %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.interface* (i8*, i32, %struct.interface*, i32, %union.ad_u*, i32)* @ck_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.interface* @ck_icmp(i8* %0, i32 %1, %struct.interface* %2, i32 %3, %union.ad_u* %4, i32 %5) #0 {
  %7 = alloca %struct.interface*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.ad_u*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.interface* %2, %struct.interface** %10, align 8
  store i32 %3, i32* %11, align 4
  store %union.ad_u* %4, %union.ad_u** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %union.ad_u*, %union.ad_u** %12, align 8
  %16 = bitcast %union.ad_u* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ICMP_ROUTERADVERT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %32

22:                                               ; preds = %6
  %23 = load %union.ad_u*, %union.ad_u** %12, align 8
  %24 = bitcast %union.ad_u* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ICMP_ROUTERSOLICIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %31

30:                                               ; preds = %22
  store %struct.interface* null, %struct.interface** %7, align 8
  br label %68

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %21
  %33 = load %union.ad_u*, %union.ad_u** %12, align 8
  %34 = bitcast %union.ad_u* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i8*, i8** %14, align 8
  %40 = load %union.ad_u*, %union.ad_u** %12, align 8
  %41 = bitcast %union.ad_u* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @naddr_ntoa(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @naddr_ntoa(i32 %46)
  %48 = call i32 (i8*, i8*, i32, i32, ...) @trace_pkt(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %43, i32 %45, i32 %47)
  store %struct.interface* null, %struct.interface** %7, align 8
  br label %68

49:                                               ; preds = %32
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.interface*, %struct.interface** %10, align 8
  %54 = load %union.ad_u*, %union.ad_u** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @trace_rdisc(i8* %50, i32 %51, i32 %52, %struct.interface* %53, %union.ad_u* %54, i32 %55)
  %57 = load %struct.interface*, %struct.interface** %10, align 8
  %58 = icmp eq %struct.interface* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @naddr_ntoa(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @naddr_ntoa(i32 %63)
  %65 = call i32 (i8*, i8*, i32, i32, ...) @trace_pkt(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %59, %49
  %67 = load %struct.interface*, %struct.interface** %10, align 8
  store %struct.interface* %67, %struct.interface** %7, align 8
  br label %68

68:                                               ; preds = %66, %38, %30
  %69 = load %struct.interface*, %struct.interface** %7, align 8
  ret %struct.interface* %69
}

declare dso_local i32 @trace_pkt(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @naddr_ntoa(i32) #1

declare dso_local i32 @trace_rdisc(i8*, i32, i32, %struct.interface*, %union.ad_u*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
