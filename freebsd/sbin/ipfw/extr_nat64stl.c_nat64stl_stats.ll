; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64stl.c_nat64stl_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64stl.c_nat64stl_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ipfw_nat64stl_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error retrieving stats\00", align 1
@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"set %u \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nat64stl %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\09%ju packets translated from IPv6 to IPv4\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\09%ju packets translated from IPv4 to IPv6\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\09%ju IPv6 fragments created\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\09%ju IPv4 fragments received\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\09%ju output packets dropped due to no bufs, etc.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"\09%ju output packets discarded due to no IPv4 route\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"\09%ju output packets discarded due to no IPv6 route\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"\09%ju packets discarded due to unsupported protocol\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"\09%ju packets discarded due to memory allocation problems\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\09%ju packets discarded due to some errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @nat64stl_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64stl_stats(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipfw_nat64stl_stats, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @nat64stl_get_stats(i8* %6, i64 %7, %struct.ipfw_nat64stl_stats* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EX_OSERR, align 4
  %12 = call i32 @err(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %13
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds %struct.ipfw_nat64stl_stats, %struct.ipfw_nat64stl_stats* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %64)
  ret void
}

declare dso_local i64 @nat64stl_get_stats(i8*, i64, %struct.ipfw_nat64stl_stats*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
