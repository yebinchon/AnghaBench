; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_rdisc_age.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_rdisc_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dr = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@supplier = common dso_local global i64 0, align 8
@cur_drp = common dso_local global i32* null, align 8
@drs = common dso_local global %struct.dr* null, align 8
@MAX_ADS = common dso_local global i64 0, align 8
@now = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SUPPLY_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"age 0.0.0.0 --> %s via %s\00", align 1
@rip_sock = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdisc_age(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dr*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @supplier, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32*, i32** @cur_drp, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @rdisc_sort()
  br label %12

12:                                               ; preds = %10, %7
  %13 = call i32 (...) @rdisc_adv()
  br label %80

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %14
  %18 = load %struct.dr*, %struct.dr** @drs, align 8
  store %struct.dr* %18, %struct.dr** %4, align 8
  br label %19

19:                                               ; preds = %66, %17
  %20 = load %struct.dr*, %struct.dr** %4, align 8
  %21 = load %struct.dr*, %struct.dr** @drs, align 8
  %22 = load i64, i64* @MAX_ADS, align 8
  %23 = getelementptr inbounds %struct.dr, %struct.dr* %21, i64 %22
  %24 = icmp ult %struct.dr* %20, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %19
  %26 = load %struct.dr*, %struct.dr** %4, align 8
  %27 = getelementptr inbounds %struct.dr, %struct.dr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %66

31:                                               ; preds = %25
  %32 = load %struct.dr*, %struct.dr** %4, align 8
  %33 = getelementptr inbounds %struct.dr, %struct.dr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %2, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @now, i32 0, i32 0), align 8
  %39 = load %struct.dr*, %struct.dr** %4, align 8
  %40 = getelementptr inbounds %struct.dr, %struct.dr* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load i64, i64* @SUPPLY_INTERVAL, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %3, align 8
  %45 = load %struct.dr*, %struct.dr** %4, align 8
  %46 = getelementptr inbounds %struct.dr, %struct.dr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %37
  %51 = load %struct.dr*, %struct.dr** %4, align 8
  %52 = getelementptr inbounds %struct.dr, %struct.dr* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @naddr_ntoa(i64 %53)
  %55 = load %struct.dr*, %struct.dr** %4, align 8
  %56 = getelementptr inbounds %struct.dr, %struct.dr* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @trace_act(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %59)
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.dr*, %struct.dr** %4, align 8
  %63 = getelementptr inbounds %struct.dr, %struct.dr* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %50, %37
  br label %69

65:                                               ; preds = %31
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.dr*, %struct.dr** %4, align 8
  %68 = getelementptr inbounds %struct.dr, %struct.dr* %67, i32 1
  store %struct.dr* %68, %struct.dr** %4, align 8
  br label %19

69:                                               ; preds = %64, %19
  br label %70

70:                                               ; preds = %69, %14
  %71 = call i32 (...) @rdisc_sol()
  %72 = call i32 (...) @rdisc_sort()
  %73 = load i64, i64* @rip_sock, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i64, i64* %2, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @age(i32 0)
  br label %80

80:                                               ; preds = %12, %78, %75, %70
  ret void
}

declare dso_local i32 @rdisc_sort(...) #1

declare dso_local i32 @rdisc_adv(...) #1

declare dso_local i32 @trace_act(i8*, i32, i32) #1

declare dso_local i32 @naddr_ntoa(i64) #1

declare dso_local i32 @rdisc_sol(...) #1

declare dso_local i32 @age(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
