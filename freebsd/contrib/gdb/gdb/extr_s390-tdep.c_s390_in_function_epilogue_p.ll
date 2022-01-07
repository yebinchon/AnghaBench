; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_in_function_epilogue_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_in_function_epilogue_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@op_lm = common dso_local global i32 0, align 4
@S390_SP_REGNUM = common dso_local global i32 0, align 4
@S390_R0_REGNUM = common dso_local global i32 0, align 4
@op1_lmy = common dso_local global i32 0, align 4
@op2_lmy = common dso_local global i32 0, align 4
@op1_lmg = common dso_local global i32 0, align 4
@op2_lmg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i64)* @s390_in_function_epilogue_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_in_function_epilogue_p(%struct.gdbarch* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %13 = call i32 @gdbarch_ptr_bit(%struct.gdbarch* %12)
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %18, 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %21 = call i32 @read_memory_nobpt(i64 %19, i32* %20, i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* @op_lm, align 4
  %26 = call i64 @is_rs(i32* %24, i32 %25, i32* %8, i32* %9, i32* %11, i32* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @S390_SP_REGNUM, align 4
  %31 = load i32, i32* @S390_R0_REGNUM, align 4
  %32 = sub i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %80

35:                                               ; preds = %28, %23, %17, %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %39, 6
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %42 = call i32 @read_memory_nobpt(i64 %40, i32* %41, i32 6)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* @op1_lmy, align 4
  %47 = load i32, i32* @op2_lmy, align 4
  %48 = call i64 @is_rsy(i32* %45, i32 %46, i32 %47, i32* %8, i32* %9, i32* %11, i32* %10)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @S390_SP_REGNUM, align 4
  %53 = load i32, i32* @S390_R0_REGNUM, align 4
  %54 = sub i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %80

57:                                               ; preds = %50, %44, %38, %35
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = sub nsw i64 %61, 6
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %64 = call i32 @read_memory_nobpt(i64 %62, i32* %63, i32 6)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %68 = load i32, i32* @op1_lmg, align 4
  %69 = load i32, i32* @op2_lmg, align 4
  %70 = call i64 @is_rsy(i32* %67, i32 %68, i32 %69, i32* %8, i32* %9, i32* %11, i32* %10)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @S390_SP_REGNUM, align 4
  %75 = load i32, i32* @S390_R0_REGNUM, align 4
  %76 = sub i32 %74, %75
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %80

79:                                               ; preds = %72, %66, %60, %57
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %78, %56, %34
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @gdbarch_ptr_bit(%struct.gdbarch*) #1

declare dso_local i32 @read_memory_nobpt(i64, i32*, i32) #1

declare dso_local i64 @is_rs(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @is_rsy(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
