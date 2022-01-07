; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_priq_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_priq_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.priq_opts }
%struct.priq_opts = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"priq(\00", align 1
@PRCF_RED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" red\00", align 1
@PRCF_ECN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" ecn\00", align 1
@PRCF_RIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" rio\00", align 1
@PRCF_CODEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" codel\00", align 1
@PRCF_CLEARDSCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" cleardscp\00", align 1
@PRCF_DEFAULTCLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" default\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" ) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_altq*)* @print_priq_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_priq_opts(%struct.pf_altq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pf_altq*, align 8
  %4 = alloca %struct.priq_opts*, align 8
  store %struct.pf_altq* %0, %struct.pf_altq** %3, align 8
  %5 = load %struct.pf_altq*, %struct.pf_altq** %3, align 8
  %6 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.priq_opts* %7, %struct.priq_opts** %4, align 8
  %8 = load %struct.priq_opts*, %struct.priq_opts** %4, align 8
  %9 = getelementptr inbounds %struct.priq_opts, %struct.priq_opts* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %69

12:                                               ; preds = %1
  %13 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.priq_opts*, %struct.priq_opts** %4, align 8
  %15 = getelementptr inbounds %struct.priq_opts, %struct.priq_opts* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PRCF_RED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %12
  %23 = load %struct.priq_opts*, %struct.priq_opts** %4, align 8
  %24 = getelementptr inbounds %struct.priq_opts, %struct.priq_opts* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PRCF_ECN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load %struct.priq_opts*, %struct.priq_opts** %4, align 8
  %33 = getelementptr inbounds %struct.priq_opts, %struct.priq_opts* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PRCF_RIO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %31
  %41 = load %struct.priq_opts*, %struct.priq_opts** %4, align 8
  %42 = getelementptr inbounds %struct.priq_opts, %struct.priq_opts* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PRCF_CODEL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.priq_opts*, %struct.priq_opts** %4, align 8
  %51 = getelementptr inbounds %struct.priq_opts, %struct.priq_opts* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PRCF_CLEARDSCP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %49
  %59 = load %struct.priq_opts*, %struct.priq_opts** %4, align 8
  %60 = getelementptr inbounds %struct.priq_opts, %struct.priq_opts* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PRCF_DEFAULTCLASS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %58
  %68 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

69:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %67
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
