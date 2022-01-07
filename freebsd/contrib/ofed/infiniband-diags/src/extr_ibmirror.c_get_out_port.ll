; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_get_out_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_get_out_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mirror_dlid = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@IB_ATTR_LINEARFORWTBL = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"linear forwarding table get failed\00", align 1
@mirror_dport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_out_port(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @mirror_dlid, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load i32, i32* @mirror_dlid, align 4
  %10 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @mirror_dlid, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** @buf, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @IB_ATTR_LINEARFORWTBL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @srcport, align 4
  %22 = call i32 @smp_query_via(i32* %17, i32* %18, i32 %19, i32 %20, i32 0, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %8
  %25 = call i32 @IBEXIT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i32, i32* @mirror_dlid, align 4
  %28 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @mirror_dlid, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32*, i32** @buf, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @mirror_dport, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @smp_query_via(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IBEXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
