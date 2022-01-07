; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_reggroups.c_default_register_reggroup_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_reggroups.c_default_register_reggroup_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroup = type { i32 }
%struct.gdbarch = type { i32 }

@all_reggroup = common dso_local global %struct.reggroup* null, align 8
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@NUM_REGS = common dso_local global i32 0, align 4
@float_reggroup = common dso_local global %struct.reggroup* null, align 8
@vector_reggroup = common dso_local global %struct.reggroup* null, align 8
@general_reggroup = common dso_local global %struct.reggroup* null, align 8
@save_reggroup = common dso_local global %struct.reggroup* null, align 8
@restore_reggroup = common dso_local global %struct.reggroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_register_reggroup_p(%struct.gdbarch* %0, i32 %1, %struct.reggroup* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reggroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.reggroup* %2, %struct.reggroup** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @REGISTER_NAME(i32 %11)
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @REGISTER_NAME(i32 %15)
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %78

21:                                               ; preds = %14
  %22 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %23 = load %struct.reggroup*, %struct.reggroup** @all_reggroup, align 8
  %24 = icmp eq %struct.reggroup* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %78

26:                                               ; preds = %21
  %27 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @register_type(%struct.gdbarch* %27, i32 %28)
  %30 = call i32 @TYPE_VECTOR(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @register_type(%struct.gdbarch* %31, i32 %32)
  %34 = call i64 @TYPE_CODE(i32 %33)
  %35 = load i64, i64* @TYPE_CODE_FLT, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NUM_REGS, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %43 = load %struct.reggroup*, %struct.reggroup** @float_reggroup, align 8
  %44 = icmp eq %struct.reggroup* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %78

47:                                               ; preds = %26
  %48 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %49 = load %struct.reggroup*, %struct.reggroup** @vector_reggroup, align 8
  %50 = icmp eq %struct.reggroup* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %78

53:                                               ; preds = %47
  %54 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %55 = load %struct.reggroup*, %struct.reggroup** @general_reggroup, align 8
  %56 = icmp eq %struct.reggroup* %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %78

67:                                               ; preds = %53
  %68 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %69 = load %struct.reggroup*, %struct.reggroup** @save_reggroup, align 8
  %70 = icmp eq %struct.reggroup* %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %73 = load %struct.reggroup*, %struct.reggroup** @restore_reggroup, align 8
  %74 = icmp eq %struct.reggroup* %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %75, %64, %51, %45, %25, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i32 @TYPE_VECTOR(i32) #1

declare dso_local i32 @register_type(%struct.gdbarch*, i32) #1

declare dso_local i64 @TYPE_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
