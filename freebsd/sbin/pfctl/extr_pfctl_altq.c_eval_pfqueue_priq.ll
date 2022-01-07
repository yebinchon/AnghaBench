; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_eval_pfqueue_priq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_eval_pfqueue_priq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.pf_altq = type { i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pfctl_altq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@PRIQ_MAXPRI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"priority out of range: max %d\00", align 1
@QPRI_BITSET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s does not have a unique priority on interface %s\00", align 1
@PRCF_DEFAULTCLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfctl*, %struct.pf_altq*, %struct.pfctl_altq*)* @eval_pfqueue_priq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_pfqueue_priq(%struct.pfctl* %0, %struct.pf_altq* %1, %struct.pfctl_altq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfctl*, align 8
  %6 = alloca %struct.pf_altq*, align 8
  %7 = alloca %struct.pfctl_altq*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %5, align 8
  store %struct.pf_altq* %1, %struct.pf_altq** %6, align 8
  store %struct.pfctl_altq* %2, %struct.pfctl_altq** %7, align 8
  %8 = load %struct.pf_altq*, %struct.pf_altq** %6, align 8
  %9 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PRIQ_MAXPRI, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* @PRIQ_MAXPRI, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i32 -1, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load i32, i32* @QPRI_BITSET_SIZE, align 4
  %19 = load %struct.pf_altq*, %struct.pf_altq** %6, align 8
  %20 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pfctl_altq*, %struct.pfctl_altq** %7, align 8
  %23 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = call i64 @BIT_ISSET(i32 %18, i64 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.pf_altq*, %struct.pf_altq** %6, align 8
  %29 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.pf_altq*, %struct.pf_altq** %6, align 8
  %33 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %31, i32 %34)
  store i32 -1, i32* %4, align 4
  br label %61

36:                                               ; preds = %17
  %37 = load i32, i32* @QPRI_BITSET_SIZE, align 4
  %38 = load %struct.pf_altq*, %struct.pf_altq** %6, align 8
  %39 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pfctl_altq*, %struct.pfctl_altq** %7, align 8
  %42 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = call i32 @BIT_SET(i32 %37, i64 %40, i32* %43)
  br label %45

45:                                               ; preds = %36
  %46 = load %struct.pf_altq*, %struct.pf_altq** %6, align 8
  %47 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PRCF_DEFAULTCLASS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.pfctl_altq*, %struct.pfctl_altq** %7, align 8
  %56 = getelementptr inbounds %struct.pfctl_altq, %struct.pfctl_altq* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %45
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %27, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @warnx(i8*, i64, ...) #1

declare dso_local i64 @BIT_ISSET(i32, i64, i32*) #1

declare dso_local i32 @BIT_SET(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
