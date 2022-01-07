; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_clear_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_clear_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i32 }

@PFRB_TRANS = common dso_local global i32 0, align 4
@PF_RULESET_NAT = common dso_local global i32 0, align 4
@PF_RULESET_BINAT = common dso_local global i32 0, align 4
@PF_RULESET_RDR = common dso_local global i32 0, align 4
@DIOCXBEGIN = common dso_local global i32 0, align 4
@DIOCXCOMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pfctl_clear_nat\00", align 1
@PF_OPT_QUIET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nat cleared\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_clear_nat(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pfr_buffer, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call i32 @memset(%struct.pfr_buffer* %7, i32 0, i32 4)
  %9 = load i32, i32* @PFRB_TRANS, align 4
  %10 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @PF_RULESET_NAT, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @pfctl_add_trans(%struct.pfr_buffer* %7, i32 %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @PF_RULESET_BINAT, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @pfctl_add_trans(%struct.pfr_buffer* %7, i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @PF_RULESET_RDR, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @pfctl_add_trans(%struct.pfr_buffer* %7, i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DIOCXBEGIN, align 4
  %28 = call i64 @pfctl_trans(i32 %26, %struct.pfr_buffer* %7, i32 %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DIOCXCOMMIT, align 4
  %33 = call i64 @pfctl_trans(i32 %31, %struct.pfr_buffer* %7, i32 %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25, %20, %15, %3
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PF_OPT_QUIET, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  ret i32 0
}

declare dso_local i32 @memset(%struct.pfr_buffer*, i32, i32) #1

declare dso_local i64 @pfctl_add_trans(%struct.pfr_buffer*, i32, i8*) #1

declare dso_local i64 @pfctl_trans(i32, %struct.pfr_buffer*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
