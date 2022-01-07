; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_totals_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_totals_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Totals:\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  Number of files:    %s\0A\00", align 1
@totals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_DEBUG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"  Memory needed:      %s MiB\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  Sizes in headers:   %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"  Minimum XZ Utils version: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_totals_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_totals_adv() #0 {
  %1 = call i32 @putchar(i8 signext 10)
  %2 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @puts(i8* %2)
  %4 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 9), align 4
  %6 = call i8* @uint64_to_str(i32 %5, i32 0)
  %7 = call i32 @printf(i8* %4, i8* %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 8), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 7), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 6), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 5), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 4), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 3), align 4
  %14 = call i32 @print_adv_helper(i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = call i64 (...) @message_verbosity_get()
  %16 = load i64, i64* @V_DEBUG, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %0
  %19 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 2), align 8
  %21 = call i32 @round_up_to_mib(i32 %20)
  %22 = call i8* @uint64_to_str(i32 %21, i32 0)
  %23 = call i32 @printf(i8* %19, i8* %22)
  %24 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 1), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i8* @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %31

29:                                               ; preds = %18
  %30 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8* [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @printf(i8* %24, i8* %32)
  %34 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @totals, i32 0, i32 0), align 8
  %36 = call i8* @xz_ver_to_str(i32 %35)
  %37 = call i32 @printf(i8* %34, i8* %36)
  br label %38

38:                                               ; preds = %31, %0
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @uint64_to_str(i32, i32) #1

declare dso_local i32 @print_adv_helper(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @message_verbosity_get(...) #1

declare dso_local i32 @round_up_to_mib(i32) #1

declare dso_local i8* @xz_ver_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
