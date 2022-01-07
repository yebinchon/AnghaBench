; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_codel_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_codel_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.codel_opts }
%struct.codel_opts = type { i32, i32, i64 }
%struct.node_queue_opt = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"codel(\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" target %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" interval %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ecn\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" ) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_altq*, %struct.node_queue_opt*)* @print_codel_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_codel_opts(%struct.pf_altq* %0, %struct.node_queue_opt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_altq*, align 8
  %5 = alloca %struct.node_queue_opt*, align 8
  %6 = alloca %struct.codel_opts*, align 8
  store %struct.pf_altq* %0, %struct.pf_altq** %4, align 8
  store %struct.node_queue_opt* %1, %struct.node_queue_opt** %5, align 8
  %7 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %8 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.codel_opts* %9, %struct.codel_opts** %6, align 8
  %10 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %11 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %16 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %21 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %19, %14, %2
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %27 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %32 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %37 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %42 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.codel_opts*, %struct.codel_opts** %6, align 8
  %47 = getelementptr inbounds %struct.codel_opts, %struct.codel_opts* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
