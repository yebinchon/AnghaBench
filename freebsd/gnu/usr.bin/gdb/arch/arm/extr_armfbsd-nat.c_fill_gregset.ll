; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_fill_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/arch/arm/extr_armfbsd-nat.c_fill_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32* }

@ARM_A1_REGNUM = common dso_local global i32 0, align 4
@ARM_SP_REGNUM = common dso_local global i32 0, align 4
@ARM_LR_REGNUM = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@ARM_PS_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_gregset(%struct.reg* %0, i32 %1) #0 {
  %3 = alloca %struct.reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.reg* %0, %struct.reg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ARM_A1_REGNUM, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ARM_SP_REGNUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.reg*, %struct.reg** %3, align 8
  %21 = getelementptr inbounds %struct.reg, %struct.reg* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @regcache_collect(i32 %19, i32* %25)
  br label %27

27:                                               ; preds = %18, %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ARM_SP_REGNUM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @ARM_SP_REGNUM, align 4
  %40 = load %struct.reg*, %struct.reg** %3, align 8
  %41 = getelementptr inbounds %struct.reg, %struct.reg* %40, i32 0, i32 3
  %42 = call i32 @regcache_collect(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ARM_LR_REGNUM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @ARM_LR_REGNUM, align 4
  %52 = load %struct.reg*, %struct.reg** %3, align 8
  %53 = getelementptr inbounds %struct.reg, %struct.reg* %52, i32 0, i32 2
  %54 = call i32 @regcache_collect(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ARM_PC_REGNUM, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58, %55
  %63 = load i32, i32* @ARM_PC_REGNUM, align 4
  %64 = load %struct.reg*, %struct.reg** %3, align 8
  %65 = getelementptr inbounds %struct.reg, %struct.reg* %64, i32 0, i32 1
  %66 = call i32 @regcache_collect(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ARM_PS_REGNUM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %67
  %75 = load i32, i32* @ARM_PS_REGNUM, align 4
  %76 = load %struct.reg*, %struct.reg** %3, align 8
  %77 = getelementptr inbounds %struct.reg, %struct.reg* %76, i32 0, i32 0
  %78 = call i32 @regcache_collect(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %70
  ret void
}

declare dso_local i32 @regcache_collect(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
