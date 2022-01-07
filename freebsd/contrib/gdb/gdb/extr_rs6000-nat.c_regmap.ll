; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_regmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@FPLAST_REGNUM = common dso_local global i32 0, align 4
@FPR0 = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@IAR = common dso_local global i32 0, align 4
@MSR = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@LR = common dso_local global i32 0, align 4
@CTR = common dso_local global i32 0, align 4
@XER = common dso_local global i32 0, align 4
@FPSCR = common dso_local global i32 0, align 4
@MQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gdbarch_tdep*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @current_gdbarch, align 4
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %6, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %11 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %18 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %15, %2
  %24 = load i32, i32* @FP0_REGNUM, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FPLAST_REGNUM, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FP0_REGNUM, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @FPR0, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %106

38:                                               ; preds = %27, %23
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PC_REGNUM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @IAR, align 4
  store i32 %43, i32* %3, align 4
  br label %106

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %47 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @MSR, align 4
  store i32 %51, i32* %3, align 4
  br label %106

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %55 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @CR, align 4
  store i32 %59, i32* %3, align 4
  br label %106

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %63 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @LR, align 4
  store i32 %67, i32* %3, align 4
  br label %106

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %71 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @CTR, align 4
  store i32 %75, i32* %3, align 4
  br label %106

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %79 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @XER, align 4
  store i32 %83, i32* %3, align 4
  br label %106

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %87 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @FPSCR, align 4
  store i32 %91, i32* %3, align 4
  br label %106

92:                                               ; preds = %84
  %93 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %94 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %100 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @MQ, align 4
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %97, %92
  store i32 -1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %103, %90, %82, %74, %66, %58, %50, %42, %31, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
