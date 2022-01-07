; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_del_rdisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_del_rdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dr = type { i64, %struct.interface*, i64, i32 }
%struct.interface = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@drs = common dso_local global %struct.dr* null, align 8
@MAX_ADS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"discovered router %s via %s is bad--have %d remaining\00", align 1
@MAX_SOLICITATIONS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"last discovered router %s via %s is bad--re-solicit\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"last discovered router %s via %s is bad--wait to solicit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dr*)* @del_rdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_rdisc(%struct.dr* %0) #0 {
  %2 = alloca %struct.dr*, align 8
  %3 = alloca %struct.interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dr* %0, %struct.dr** %2, align 8
  %6 = load %struct.dr*, %struct.dr** %2, align 8
  %7 = getelementptr inbounds %struct.dr, %struct.dr* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = call i32 @del_redirects(i32 %8, i32 0)
  %10 = load %struct.dr*, %struct.dr** %2, align 8
  %11 = getelementptr inbounds %struct.dr, %struct.dr* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.dr*, %struct.dr** %2, align 8
  %13 = getelementptr inbounds %struct.dr, %struct.dr* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.dr*, %struct.dr** %2, align 8
  %15 = getelementptr inbounds %struct.dr, %struct.dr* %14, i32 0, i32 1
  %16 = load %struct.interface*, %struct.interface** %15, align 8
  store %struct.interface* %16, %struct.interface** %3, align 8
  %17 = load %struct.dr*, %struct.dr** @drs, align 8
  store %struct.dr* %17, %struct.dr** %2, align 8
  br label %18

18:                                               ; preds = %39, %1
  %19 = load %struct.dr*, %struct.dr** %2, align 8
  %20 = load %struct.dr*, %struct.dr** @drs, align 8
  %21 = load i64, i64* @MAX_ADS, align 8
  %22 = getelementptr inbounds %struct.dr, %struct.dr* %20, i64 %21
  %23 = icmp ult %struct.dr* %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.dr*, %struct.dr** %2, align 8
  %26 = getelementptr inbounds %struct.dr, %struct.dr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.dr*, %struct.dr** %2, align 8
  %31 = getelementptr inbounds %struct.dr, %struct.dr* %30, i32 0, i32 1
  %32 = load %struct.interface*, %struct.interface** %31, align 8
  %33 = load %struct.interface*, %struct.interface** %3, align 8
  %34 = icmp eq %struct.interface* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %29, %24
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.dr*, %struct.dr** %2, align 8
  %41 = getelementptr inbounds %struct.dr, %struct.dr* %40, i32 1
  store %struct.dr* %41, %struct.dr** %2, align 8
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @naddr_ntoa(i32 %46)
  %48 = load %struct.interface*, %struct.interface** %3, align 8
  %49 = getelementptr inbounds %struct.interface, %struct.interface* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i8*, i32, i32, ...) @trace_act(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %51)
  br label %80

53:                                               ; preds = %42
  %54 = load %struct.interface*, %struct.interface** %3, align 8
  %55 = getelementptr inbounds %struct.interface, %struct.interface* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAX_SOLICITATIONS, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @naddr_ntoa(i32 %60)
  %62 = load %struct.interface*, %struct.interface** %3, align 8
  %63 = getelementptr inbounds %struct.interface, %struct.interface* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i32, i32, ...) @trace_act(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.interface*, %struct.interface** %3, align 8
  %67 = getelementptr inbounds %struct.interface, %struct.interface* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.interface*, %struct.interface** %3, align 8
  %69 = getelementptr inbounds %struct.interface, %struct.interface* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = call i32 (...) @rdisc_sol()
  br label %79

72:                                               ; preds = %53
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @naddr_ntoa(i32 %73)
  %75 = load %struct.interface*, %struct.interface** %3, align 8
  %76 = getelementptr inbounds %struct.interface, %struct.interface* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i32, i32, ...) @trace_act(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %72, %59
  br label %80

80:                                               ; preds = %79, %45
  ret void
}

declare dso_local i32 @del_redirects(i32, i32) #1

declare dso_local i32 @trace_act(i8*, i32, i32, ...) #1

declare dso_local i32 @naddr_ntoa(i32) #1

declare dso_local i32 @rdisc_sol(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
