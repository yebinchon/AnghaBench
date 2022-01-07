; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@diffcheck_flags = common dso_local global i32 0, align 4
@DIFF_FLAG_SWITCH = common dso_local global i32 0, align 4
@IB_NODE_SWITCH = common dso_local global i32 0, align 4
@out_switch = common dso_local global i32 0, align 4
@out_switch_detail = common dso_local global i32 0, align 4
@out_switch_port = common dso_local global i32 0, align 4
@DIFF_FLAG_CA = common dso_local global i32 0, align 4
@IB_NODE_CA = common dso_local global i32 0, align 4
@out_ca = common dso_local global i32 0, align 4
@out_ca_detail = common dso_local global i32 0, align 4
@out_ca_port = common dso_local global i32 0, align 4
@DIFF_FLAG_ROUTER = common dso_local global i32 0, align 4
@IB_NODE_ROUTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @diffcheck_flags, align 4
  %6 = load i32, i32* @DIFF_FLAG_SWITCH, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @IB_NODE_SWITCH, align 4
  %13 = load i32, i32* @diffcheck_flags, align 4
  %14 = load i32, i32* @out_switch, align 4
  %15 = load i32, i32* @out_switch_detail, align 4
  %16 = load i32, i32* @out_switch_port, align 4
  %17 = call i32 @diff_common(i32* %10, i32* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load i32, i32* @diffcheck_flags, align 4
  %20 = load i32, i32* @DIFF_FLAG_CA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @IB_NODE_CA, align 4
  %27 = load i32, i32* @diffcheck_flags, align 4
  %28 = load i32, i32* @out_ca, align 4
  %29 = load i32, i32* @out_ca_detail, align 4
  %30 = load i32, i32* @out_ca_port, align 4
  %31 = call i32 @diff_common(i32* %24, i32* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load i32, i32* @diffcheck_flags, align 4
  %34 = load i32, i32* @DIFF_FLAG_ROUTER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @IB_NODE_ROUTER, align 4
  %41 = load i32, i32* @diffcheck_flags, align 4
  %42 = load i32, i32* @out_ca, align 4
  %43 = load i32, i32* @out_ca_detail, align 4
  %44 = load i32, i32* @out_ca_port, align 4
  %45 = call i32 @diff_common(i32* %38, i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %32
  ret i32 0
}

declare dso_local i32 @diff_common(i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
