; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_register_reggroup_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_register_reggroup_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroup = type { i32 }
%struct.gdbarch = type { i32 }
%struct.gdbarch_tdep = type { i32 }

@general_reggroup = common dso_local global %struct.reggroup* null, align 8
@S390_R0_REGNUM = common dso_local global i32 0, align 4
@S390_R15_REGNUM = common dso_local global i32 0, align 4
@S390_PC_REGNUM = common dso_local global i32 0, align 4
@S390_CC_REGNUM = common dso_local global i32 0, align 4
@float_reggroup = common dso_local global %struct.reggroup* null, align 8
@S390_F0_REGNUM = common dso_local global i32 0, align 4
@S390_F15_REGNUM = common dso_local global i32 0, align 4
@S390_FPC_REGNUM = common dso_local global i32 0, align 4
@save_reggroup = common dso_local global %struct.reggroup* null, align 8
@restore_reggroup = common dso_local global %struct.reggroup* null, align 8
@S390_PSWM_REGNUM = common dso_local global i32 0, align 4
@S390_PSWA_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.reggroup*)* @s390_register_reggroup_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_register_reggroup_p(%struct.gdbarch* %0, i32 %1, %struct.reggroup* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reggroup*, align 8
  %8 = alloca %struct.gdbarch_tdep*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.reggroup* %2, %struct.reggroup** %7, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %10 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %9)
  store %struct.gdbarch_tdep* %10, %struct.gdbarch_tdep** %8, align 8
  %11 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %12 = load %struct.reggroup*, %struct.reggroup** @general_reggroup, align 8
  %13 = icmp eq %struct.reggroup* %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @S390_R0_REGNUM, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @S390_R15_REGNUM, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @S390_PC_REGNUM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @S390_CC_REGNUM, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22, %18
  %31 = phi i1 [ true, %22 ], [ true, %18 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %76

33:                                               ; preds = %3
  %34 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %35 = load %struct.reggroup*, %struct.reggroup** @float_reggroup, align 8
  %36 = icmp eq %struct.reggroup* %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @S390_F0_REGNUM, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @S390_F15_REGNUM, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @S390_FPC_REGNUM, align 4
  %48 = icmp eq i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ true, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %33
  %53 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %54 = load %struct.reggroup*, %struct.reggroup** @save_reggroup, align 8
  %55 = icmp eq %struct.reggroup* %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %58 = load %struct.reggroup*, %struct.reggroup** @restore_reggroup, align 8
  %59 = icmp eq %struct.reggroup* %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @S390_PSWM_REGNUM, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @S390_PSWA_REGNUM, align 4
  %67 = icmp ne i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %56
  %72 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %75 = call i32 @default_register_reggroup_p(%struct.gdbarch* %72, i32 %73, %struct.reggroup* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %68, %49, %30
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @default_register_reggroup_p(%struct.gdbarch*, i32, %struct.reggroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
