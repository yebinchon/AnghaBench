; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_set_ram_latency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_set_ram_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl310_softc = type { i32 }

@PL310_TAG_RAM_CTRL = common dso_local global i64 0, align 8
@PL310_DATA_RAM_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"bad pl310 ram latency register address\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"bad pl310 setup latency: %d\00", align 1
@RAM_CTRL_SETUP_MASK = common dso_local global i64 0, align 8
@RAM_CTRL_SETUP_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"bad pl310 read latency: %d\00", align 1
@RAM_CTRL_READ_MASK = common dso_local global i64 0, align 8
@RAM_CTRL_READ_SHIFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"bad pl310 write latency: %d\00", align 1
@RAM_CTRL_WRITE_MASK = common dso_local global i64 0, align 8
@RAM_CTRL_WRITE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pl310_set_ram_latency(%struct.pl310_softc* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.pl310_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pl310_softc* %0, %struct.pl310_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @PL310_TAG_RAM_CTRL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PL310_DATA_RAM_CTRL, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ true, %5 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pl310_softc*, %struct.pl310_softc** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @pl310_read4(%struct.pl310_softc* %23, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %19
  %29 = load i64, i64* %10, align 8
  %30 = icmp sle i64 %29, 8
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %10, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %31, i8* %33)
  %35 = load i64, i64* @RAM_CTRL_SETUP_MASK, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %11, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load i64, i64* @RAM_CTRL_SETUP_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = load i64, i64* %11, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %28, %19
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8
  %50 = icmp sle i64 %49, 8
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %8, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %51, i8* %53)
  %55 = load i64, i64* @RAM_CTRL_READ_MASK, align 8
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %11, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %59, 1
  %61 = load i64, i64* @RAM_CTRL_READ_SHIFT, align 8
  %62 = shl i64 %60, %61
  %63 = load i64, i64* %11, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %48, %45
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i64, i64* %9, align 8
  %70 = icmp sle i64 %69, 8
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %9, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @KASSERT(i32 %71, i8* %73)
  %75 = load i64, i64* @RAM_CTRL_WRITE_MASK, align 8
  %76 = xor i64 %75, -1
  %77 = load i64, i64* %11, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub nsw i64 %79, 1
  %81 = load i64, i64* @RAM_CTRL_WRITE_SHIFT, align 8
  %82 = shl i64 %80, %81
  %83 = load i64, i64* %11, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %68, %65
  %86 = load %struct.pl310_softc*, %struct.pl310_softc** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @pl310_write4(%struct.pl310_softc* %86, i64 %87, i64 %88)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pl310_read4(%struct.pl310_softc*, i64) #1

declare dso_local i32 @pl310_write4(%struct.pl310_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
