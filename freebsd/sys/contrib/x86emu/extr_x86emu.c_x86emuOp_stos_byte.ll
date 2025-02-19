; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_stos_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_stos_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_stos_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_stos_byte(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %4 = load i32, i32* @F_DF, align 4
  %5 = call i64 @ACCESS_FLAG(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %9

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %11 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %15 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %26, %19
  %21 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %22 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %33 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @store_byte(%struct.x86emu* %27, i32 %31, i32 %35, i32 %39)
  %41 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %42 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %48 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, %46
  store i32 %51, i32* %49, align 8
  br label %20

52:                                               ; preds = %20
  %53 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %54 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %58 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 8
  br label %83

62:                                               ; preds = %9
  %63 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %64 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %65 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %73 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @store_byte(%struct.x86emu* %63, i32 %67, i32 %71, i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %79 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %77
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %62, %52
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @store_byte(%struct.x86emu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
