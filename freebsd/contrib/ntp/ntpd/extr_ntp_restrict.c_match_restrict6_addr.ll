; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_restrict.c_match_restrict6_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_restrict.c_match_restrict6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.in6_addr = type { i32 }

@restrictlist6 = common dso_local global %struct.TYPE_9__* null, align 8
@current_time = common dso_local global i64 0, align 8
@RESM_NTPONLY = common dso_local global i32 0, align 4
@NTP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.in6_addr*, i64)* @match_restrict6_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @match_restrict6_addr(%struct.in6_addr* %0, i64 %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.in6_addr, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @restrictlist6, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  br label %10

10:                                               ; preds = %62, %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %10
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = icmp ne %struct.TYPE_9__* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @INSIST(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @current_time, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = call i32 @free_res(%struct.TYPE_9__* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %26, %13
  %36 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = call i32 @MASK_IPV6_ADDR(%struct.in6_addr* %8, %struct.in6_addr* %36, i32* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i64 @ADDR6_EQ(%struct.in6_addr* %8, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %35
  %49 = load i32, i32* @RESM_NTPONLY, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* @NTP_PORT, align 4
  %57 = load i64, i64* %4, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %48
  br label %64

61:                                               ; preds = %55, %35
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %6, align 8
  br label %10

64:                                               ; preds = %60, %10
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %65
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @free_res(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @MASK_IPV6_ADDR(%struct.in6_addr*, %struct.in6_addr*, i32*) #1

declare dso_local i64 @ADDR6_EQ(%struct.in6_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
