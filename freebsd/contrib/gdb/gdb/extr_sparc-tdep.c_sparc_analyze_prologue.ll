; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_analyze_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_analyze_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_frame_cache = type { i64 }
%struct.gdbarch_tdep = type { i64 }

@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sparc_analyze_prologue(i64 %0, i64 %1, %struct.sparc_frame_cache* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sparc_frame_cache*, align 8
  %8 = alloca %struct.gdbarch_tdep*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sparc_frame_cache* %2, %struct.sparc_frame_cache** %7, align 8
  %12 = load i32, i32* @current_gdbarch, align 4
  %13 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %12)
  store %struct.gdbarch_tdep* %13, %struct.gdbarch_tdep** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %4, align 8
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %21 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @in_plt_section(i64 %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %8, align 8
  %34 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = srem i64 %32, %35
  %37 = sub nsw i64 %29, %36
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %28, %24, %19
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @sparc_fetch_instruction(i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @X_OP(i64 %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @X_OP2(i64 %45)
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @X_RD(i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 4
  %55 = call i64 @sparc_fetch_instruction(i64 %54)
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %48, %44, %38
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @X_OP(i64 %57)
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @X_I(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @X_RD(i64 %65)
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @X_RD(i64 %69)
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %10, align 4
  %76 = load i64, i64* %5, align 8
  %77 = add nsw i64 %76, 8
  %78 = call i64 @sparc_fetch_instruction(i64 %77)
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %73, %68, %60, %56
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @X_OP(i64 %80)
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @X_OP3(i64 %84)
  %86 = icmp eq i32 %85, 60
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.sparc_frame_cache*, %struct.sparc_frame_cache** %7, align 8
  %89 = getelementptr inbounds %struct.sparc_frame_cache, %struct.sparc_frame_cache* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = add nsw i64 %93, 4
  store i64 %94, i64* %4, align 8
  br label %97

95:                                               ; preds = %83, %79
  %96 = load i64, i64* %5, align 8
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %95, %87, %17
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @in_plt_section(i64, i32*) #1

declare dso_local i64 @sparc_fetch_instruction(i64) #1

declare dso_local i32 @X_OP(i64) #1

declare dso_local i32 @X_OP2(i64) #1

declare dso_local i32 @X_RD(i64) #1

declare dso_local i64 @X_I(i64) #1

declare dso_local i32 @X_OP3(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
