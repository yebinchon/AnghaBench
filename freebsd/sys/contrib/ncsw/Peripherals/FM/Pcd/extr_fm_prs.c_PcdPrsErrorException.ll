; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_prs.c_PcdPrsErrorException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_prs.c_PcdPrsErrorException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 (i32, i32)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.fman_prs_regs = type { i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"parser error - 0x%08x\0A\00", align 1
@FM_PCD_PRS_DOUBLE_ECC = common dso_local global i32 0, align 4
@e_FM_PCD_PRS_EXCEPTION_DOUBLE_ECC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @PcdPrsErrorException to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PcdPrsErrorException(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fman_prs_regs*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.fman_prs_regs*
  store %struct.fman_prs_regs* %14, %struct.fman_prs_regs** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NCSW_MASTER_ID, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT_COND(i32 %20)
  %22 = load %struct.fman_prs_regs*, %struct.fman_prs_regs** %6, align 8
  %23 = call i32 @fman_prs_get_err_ev_mask(%struct.fman_prs_regs* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.fman_prs_regs*, %struct.fman_prs_regs** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @fman_prs_get_err_event(%struct.fman_prs_regs* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.fman_prs_regs*, %struct.fman_prs_regs** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @fman_prs_ack_err_event(%struct.fman_prs_regs* %27, i32 %28)
  %30 = load i32, i32* @TRACE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DBG(i32 %30, i8* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @FM_PCD_PRS_DOUBLE_ECC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @e_FM_PCD_PRS_EXCEPTION_DOUBLE_ECC, align 4
  %47 = call i32 %42(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @fman_prs_get_err_ev_mask(%struct.fman_prs_regs*) #1

declare dso_local i32 @fman_prs_get_err_event(%struct.fman_prs_regs*, i32) #1

declare dso_local i32 @fman_prs_ack_err_event(%struct.fman_prs_regs*, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
