; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32 }
%struct.cmd = type { i32 }
%struct.nvme_controller_data = type { i32 }

@opt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@POWER_NONE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can't set power and list power states\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_controller_data, align 4
  %8 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = load %struct.cmd*, %struct.cmd** %4, align 8
  %12 = call i32 @arg_parse(i32 %9, i8** %10, %struct.cmd* %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %17 = load i64, i64* @POWER_NONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = load %struct.cmd*, %struct.cmd** %4, align 8
  %25 = call i32 @arg_help(i32 %22, i8** %23, %struct.cmd* %24)
  br label %26

26:                                               ; preds = %19, %15, %3
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 3), align 8
  %28 = call i32 @open_dev(i32 %27, i32* %8, i32 1, i32 1)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 2), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @read_controller_data(i32 %32, %struct.nvme_controller_data* %7)
  %34 = call i32 @power_list(%struct.nvme_controller_data* %7)
  br label %47

35:                                               ; preds = %26
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %37 = load i64, i64* @POWER_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 1), align 8
  %43 = call i32 @power_set(i32 %40, i64 %41, i32 %42, i32 0)
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @power_show(i32 %45)
  br label %47

47:                                               ; preds = %44, %39, %31
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @close(i32 %48)
  %50 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i32 @read_controller_data(i32, %struct.nvme_controller_data*) #1

declare dso_local i32 @power_list(%struct.nvme_controller_data*) #1

declare dso_local i32 @power_set(i32, i64, i32, i32) #1

declare dso_local i32 @power_show(i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
