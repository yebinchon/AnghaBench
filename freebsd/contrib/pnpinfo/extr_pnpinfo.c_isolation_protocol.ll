; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_isolation_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_isolation_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNP_CONFIG_CONTROL = common dso_local global i32 0, align 4
@PNP_MAX_CARDS = common dso_local global i32 0, align 4
@logdevs = common dso_local global i64 0, align 8
@PNP_WAKE = common dso_local global i32 0, align 4
@PNP_SET_RD_DATA = common dso_local global i32 0, align 4
@rd_port = common dso_local global i32 0, align 4
@_PNP_ADDRESS = common dso_local global i32 0, align 4
@PNP_SERIAL_ISOLATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isolation_protocol() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i32], align 16
  %3 = call i32 (...) @send_Initiation_LFSR()
  %4 = load i32, i32* @PNP_CONFIG_CONTROL, align 4
  %5 = call i32 @pnp_write(i32 %4, i32 4)
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %29, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @PNP_MAX_CARDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  store i64 0, i64* @logdevs, align 8
  %11 = load i32, i32* @PNP_WAKE, align 4
  %12 = call i32 @pnp_write(i32 %11, i32 0)
  %13 = load i32, i32* @PNP_SET_RD_DATA, align 4
  %14 = load i32, i32* @rd_port, align 4
  %15 = call i32 @pnp_write(i32 %13, i32 %14)
  %16 = load i32, i32* @_PNP_ADDRESS, align 4
  %17 = load i32, i32* @PNP_SERIAL_ISOLATION, align 4
  %18 = call i32 @outb(i32 %16, i32 %17)
  %19 = call i32 @DELAY(i32 1000)
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0
  %21 = call i64 @get_serial(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @dump_resdata(i32* %24, i32 %25)
  br label %28

27:                                               ; preds = %10
  br label %32

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %6

32:                                               ; preds = %27, %6
  %33 = load i32, i32* %1, align 4
  %34 = sub nsw i32 %33, 1
  ret i32 %34
}

declare dso_local i32 @send_Initiation_LFSR(...) #1

declare dso_local i32 @pnp_write(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @get_serial(i32*) #1

declare dso_local i32 @dump_resdata(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
