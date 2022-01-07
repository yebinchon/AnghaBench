; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_peer_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_peer_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@stats_control = common dso_local global i32 0, align 4
@peerstats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MJD_1900 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%lu %s %s %x %.9f %.9f %.9f %.9f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_peer_stats(i32* %0, i32 %1, double %2, double %3, double %4, double %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %15 = load i32, i32* @stats_control, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  br label %48

18:                                               ; preds = %6
  %19 = call i32 @get_systime(%struct.TYPE_6__* %13)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @filegen_setup(%struct.TYPE_7__* @peerstats, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 86400
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @MJD_1900, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 86400
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @peerstats, i32 0, i32 0), align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %18
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @peerstats, i32 0, i32 0), align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @ulfptoa(%struct.TYPE_6__* %13, i32 3)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @stoa(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = load double, double* %9, align 8
  %42 = load double, double* %10, align 8
  %43 = load double, double* %11, align 8
  %44 = load double, double* %12, align 8
  %45 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %37, i32 %39, i32 %40, double %41, double %42, double %43, double %44)
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @peerstats, i32 0, i32 0), align 8
  %47 = call i32 @fflush(i32* %46)
  br label %48

48:                                               ; preds = %17, %34, %18
  ret void
}

declare dso_local i32 @get_systime(%struct.TYPE_6__*) #1

declare dso_local i32 @filegen_setup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, i32, i32, double, double, double, double) #1

declare dso_local i32 @ulfptoa(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
