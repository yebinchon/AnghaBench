; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_dwarf2_frame_init_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_dwarf2_frame_init_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.dwarf2_frame_state_reg = type { i8* }
%struct.gdbarch_tdep = type { i32 }

@S390_R6_REGNUM = common dso_local global i32 0, align 4
@S390_R15_REGNUM = common dso_local global i32 0, align 4
@S390_F4_REGNUM = common dso_local global i32 0, align 4
@S390_F6_REGNUM = common dso_local global i32 0, align 4
@DWARF2_FRAME_REG_SAME_VALUE = common dso_local global i8* null, align 8
@S390_R0_REGNUM = common dso_local global i32 0, align 4
@S390_R5_REGNUM = common dso_local global i32 0, align 4
@S390_F0_REGNUM = common dso_local global i32 0, align 4
@S390_F15_REGNUM = common dso_local global i32 0, align 4
@DWARF2_FRAME_REG_UNDEFINED = common dso_local global i8* null, align 8
@S390_PC_REGNUM = common dso_local global i32 0, align 4
@DWARF2_FRAME_REG_RA = common dso_local global i8* null, align 8
@S390_F8_REGNUM = common dso_local global i32 0, align 4
@S390_F7_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, i32, %struct.dwarf2_frame_state_reg*)* @s390_dwarf2_frame_init_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_dwarf2_frame_init_reg(%struct.gdbarch* %0, i32 %1, %struct.dwarf2_frame_state_reg* %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwarf2_frame_state_reg*, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dwarf2_frame_state_reg* %2, %struct.dwarf2_frame_state_reg** %6, align 8
  %8 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %9 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %8)
  store %struct.gdbarch_tdep* %9, %struct.gdbarch_tdep** %7, align 8
  %10 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %11 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %123 [
    i32 129, label %13
    i32 128, label %72
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @S390_R6_REGNUM, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @S390_R15_REGNUM, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @S390_F4_REGNUM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @S390_F6_REGNUM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21, %17
  %30 = load i8*, i8** @DWARF2_FRAME_REG_SAME_VALUE, align 8
  %31 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %32 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %71

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @S390_R0_REGNUM, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @S390_R5_REGNUM, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @S390_F0_REGNUM, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @S390_F15_REGNUM, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @S390_F4_REGNUM, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @S390_F6_REGNUM, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %37
  %58 = load i8*, i8** @DWARF2_FRAME_REG_UNDEFINED, align 8
  %59 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %60 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %70

61:                                               ; preds = %53, %49, %45, %41
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @S390_PC_REGNUM, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** @DWARF2_FRAME_REG_RA, align 8
  %67 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %68 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %57
  br label %71

71:                                               ; preds = %70, %29
  br label %123

72:                                               ; preds = %3
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @S390_R6_REGNUM, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @S390_R15_REGNUM, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @S390_F8_REGNUM, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @S390_F15_REGNUM, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %76
  %89 = load i8*, i8** @DWARF2_FRAME_REG_SAME_VALUE, align 8
  %90 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %91 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %122

92:                                               ; preds = %84, %80
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @S390_R0_REGNUM, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @S390_R5_REGNUM, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @S390_F0_REGNUM, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @S390_F7_REGNUM, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104, %96
  %109 = load i8*, i8** @DWARF2_FRAME_REG_UNDEFINED, align 8
  %110 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %111 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %121

112:                                              ; preds = %104, %100
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @S390_PC_REGNUM, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** @DWARF2_FRAME_REG_RA, align 8
  %118 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %6, align 8
  %119 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %108
  br label %122

122:                                              ; preds = %121, %88
  br label %123

123:                                              ; preds = %3, %122, %71
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
