; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_hardware_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_hardware_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CVMX_BOARD_TYPE_CN3005_EVB_HS5 = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_LANAI2_U = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_CN3010_EVB_HS5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ERROR:\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"ERROR: Board type is CVMX_BOARD_TYPE_CN3010_EVB_HS5, but Broadcom PHY found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"ERROR: The board type is mis-configured, and software malfunctions are likely.\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"ERROR: All boards require a unique board type to identify them.\0A\00", align 1
@CVMX_BOARD_TYPE_CUST_UBIQUITI_E100 = common dso_local global i64 0, align 8
@CVMX_BOARD_TYPE_CUST_UBIQUITI_E120 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_board_hardware_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CVMX_BOARD_TYPE_CN3005_EVB_HS5, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @CVMX_ASXX_TX_CLK_SETX(i32 1, i32 %14)
  %16 = call i32 @cvmx_write_csr(i32 %15, i32 0)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @CVMX_ASXX_RX_CLK_SETX(i32 1, i32 %17)
  %19 = call i32 @cvmx_write_csr(i32 %18, i32 0)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @CVMX_ASXX_TX_CLK_SETX(i32 0, i32 %20)
  %22 = call i32 @cvmx_write_csr(i32 %21, i32 12)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @CVMX_ASXX_RX_CLK_SETX(i32 0, i32 %23)
  %25 = call i32 @cvmx_write_csr(i32 %24, i32 12)
  br label %26

26:                                               ; preds = %13, %10
  br label %85

27:                                               ; preds = %1
  %28 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CVMX_BOARD_TYPE_LANAI2_U, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @CVMX_ASXX_TX_CLK_SETX(i32 0, i32 %37)
  %39 = call i32 @cvmx_write_csr(i32 %38, i32 16)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @CVMX_ASXX_RX_CLK_SETX(i32 0, i32 %40)
  %42 = call i32 @cvmx_write_csr(i32 %41, i32 16)
  br label %43

43:                                               ; preds = %36, %33
  br label %84

44:                                               ; preds = %27
  %45 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CVMX_BOARD_TYPE_CN3010_EVB_HS5, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = call i32 @cvmx_helper_board_get_mii_address(i32 0)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = ashr i32 %58, 8
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 255
  %62 = call i32 @cvmx_mdio_read(i32 %59, i32 %61, i32 2)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 323
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %67 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @cvmx_wait(i32 1000000000)
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @CVMX_ASXX_RX_CLK_SETX(i32 0, i32 %74)
  %76 = call i32 @cvmx_write_csr(i32 %75, i32 5)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @CVMX_ASXX_TX_CLK_SETX(i32 0, i32 %77)
  %79 = call i32 @cvmx_write_csr(i32 %78, i32 5)
  br label %80

80:                                               ; preds = %65, %57
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %44
  br label %84

84:                                               ; preds = %83, %43
  br label %85

85:                                               ; preds = %84, %26
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_TX_CLK_SETX(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_RX_CLK_SETX(i32, i32) #1

declare dso_local i32 @cvmx_helper_board_get_mii_address(i32) #1

declare dso_local i32 @cvmx_mdio_read(i32, i32, i32) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @cvmx_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
