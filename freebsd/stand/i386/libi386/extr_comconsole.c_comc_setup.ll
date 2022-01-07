; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@comc_setup.TRY_COUNT = internal global i32 1000000, align 4
@.str = private unnamed_addr constant [16 x i8] c"hw.uart.console\00", align 1
@comc_curspeed = common dso_local global i32 0, align 4
@comc_port = common dso_local global i32 0, align 4
@comconsole = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@C_ACTIVEIN = common dso_local global i32 0, align 4
@C_ACTIVEOUT = common dso_local global i32 0, align 4
@com_cfcr = common dso_local global i64 0, align 8
@CFCR_DLAB = common dso_local global i32 0, align 4
@COMC_FMT = common dso_local global i32 0, align 4
@com_dlbl = common dso_local global i64 0, align 8
@com_dlbh = common dso_local global i64 0, align 8
@com_mcr = common dso_local global i64 0, align 8
@MCR_RTS = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@com_data = common dso_local global i64 0, align 8
@com_lsr = common dso_local global i64 0, align 8
@LSR_RXRDY = common dso_local global i32 0, align 4
@C_PRESENTIN = common dso_local global i32 0, align 4
@C_PRESENTOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"io:%d,br:%d\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @comc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comc_setup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 @unsetenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* @comc_curspeed, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* @comc_port, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comconsole, i32 0, i32 0), align 4
  %11 = load i32, i32* @C_ACTIVEIN, align 4
  %12 = load i32, i32* @C_ACTIVEOUT, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %102

17:                                               ; preds = %2
  %18 = load i32, i32* @comc_port, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @com_cfcr, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @CFCR_DLAB, align 4
  %23 = load i32, i32* @COMC_FMT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @outb(i64 %21, i32 %24)
  %26 = load i32, i32* @comc_port, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @com_dlbl, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @COMC_BPS(i32 %30)
  %32 = and i32 %31, 255
  %33 = call i32 @outb(i64 %29, i32 %32)
  %34 = load i32, i32* @comc_port, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @com_dlbh, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @COMC_BPS(i32 %38)
  %40 = ashr i32 %39, 8
  %41 = call i32 @outb(i64 %37, i32 %40)
  %42 = load i32, i32* @comc_port, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @com_cfcr, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* @COMC_FMT, align 4
  %47 = call i32 @outb(i64 %45, i32 %46)
  %48 = load i32, i32* @comc_port, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @com_mcr, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @MCR_RTS, align 4
  %53 = load i32, i32* @MCR_DTR, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @outb(i64 %51, i32 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %76, %17
  %57 = load i32, i32* @comc_port, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @com_data, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @inb(i64 %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @comc_port, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @com_lsr, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @inb(i64 %66)
  %68 = load i32, i32* @LSR_RXRDY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @comc_setup.TRY_COUNT, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %71, %62
  %77 = phi i1 [ false, %62 ], [ %75, %71 ]
  br i1 %77, label %56, label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @comc_setup.TRY_COUNT, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load i32, i32* @C_PRESENTIN, align 4
  %84 = load i32, i32* @C_PRESENTOUT, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comconsole, i32 0, i32 0), align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comconsole, i32 0, i32 0), align 4
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %89 = load i32, i32* @comc_port, align 4
  %90 = load i32, i32* @comc_curspeed, align 4
  %91 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @EV_VOLATILE, align 4
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %94 = call i32 @env_setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %92, i8* %93, i32* null, i32* null)
  br label %102

95:                                               ; preds = %78
  %96 = load i32, i32* @C_PRESENTIN, align 4
  %97 = load i32, i32* @C_PRESENTOUT, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comconsole, i32 0, i32 0), align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comconsole, i32 0, i32 0), align 4
  br label %102

102:                                              ; preds = %16, %95, %82
  ret void
}

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @COMC_BPS(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @env_setenv(i8*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
