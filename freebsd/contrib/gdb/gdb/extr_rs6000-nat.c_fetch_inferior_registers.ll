; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_fetch_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_fetch_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@FPLAST_REGNUM = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch_tdep*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @fetch_register(i32 %7)
  br label %76

9:                                                ; preds = %1
  %10 = load i32, i32* @current_gdbarch, align 4
  %11 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %10)
  store %struct.gdbarch_tdep* %11, %struct.gdbarch_tdep** %3, align 8
  %12 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %13 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %24, %9
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %18 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @fetch_register(i32 %22)
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @FP0_REGNUM, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %36, %27
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @FPLAST_REGNUM, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @fetch_register(i32 %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %29

39:                                               ; preds = %29
  %40 = load i32, i32* @PC_REGNUM, align 4
  %41 = call i32 @fetch_register(i32 %40)
  %42 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %43 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fetch_register(i32 %44)
  %46 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %47 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fetch_register(i32 %48)
  %50 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %51 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fetch_register(i32 %52)
  %54 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %55 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fetch_register(i32 %56)
  %58 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %59 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fetch_register(i32 %60)
  %62 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %63 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fetch_register(i32 %64)
  %66 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %67 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %39
  %71 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %3, align 8
  %72 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @fetch_register(i32 %73)
  br label %75

75:                                               ; preds = %70, %39
  br label %76

76:                                               ; preds = %75, %6
  ret void
}

declare dso_local i32 @fetch_register(i32) #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
