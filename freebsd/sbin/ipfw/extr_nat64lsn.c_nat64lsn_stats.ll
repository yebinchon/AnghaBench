; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ipfw_nat64lsn_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error retrieving stats\00", align 1
@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"set %u \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nat64lsn %s\0A\00", align 1
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
@.str.13 = private unnamed_addr constant [43 x i8] c"\09%ju packets not matched with IPv4 prefix\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\09%ju mbufs queued for post processing\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"\09%ju times the job queue was processed\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"\09%ju job requests queued\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"\09%ju job requests queue limit reached\0A\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"\09%ju job requests failed due to memory allocation problems\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"\09%ju hosts allocated\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\09%ju hosts requested\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\09%ju host requests failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"\09%ju portgroups requested\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"\09%ju portgroups allocated\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\09%ju portgroups deleted\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"\09%ju portgroup requests failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\09%ju portgroups allocated for TCP\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"\09%ju portgroups allocated for UDP\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"\09%ju portgroups allocated for ICMP\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"\09%ju states created\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"\09%ju states deleted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @nat64lsn_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_stats(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipfw_nat64lsn_stats, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @nat64lsn_get_stats(i8* %6, i64 %7, %struct.ipfw_nat64lsn_stats* %5)
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
  %26 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 27
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 26
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 25
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 24
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 23
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 22
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 21
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 20
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 19
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 18
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %64)
  %66 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 17
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 16
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 15
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8* %76)
  %78 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 14
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %80)
  %82 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 13
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i8* %84)
  %86 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 12
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i64 0, i64 0), i8* %88)
  %90 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* %92)
  %94 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %96)
  %98 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i8* %100)
  %102 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %104)
  %106 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %108)
  %110 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %112)
  %114 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* %116)
  %118 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i8* %120)
  %122 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %124)
  %126 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* %128)
  %130 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i8* %132)
  %134 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %5, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* %136)
  ret void
}

declare dso_local i64 @nat64lsn_get_stats(i8*, i64, %struct.ipfw_nat64lsn_stats*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
