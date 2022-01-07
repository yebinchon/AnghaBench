; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_user_reg_map_name_to_regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_user-regs.c_user_reg_map_name_to_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdb_user_regs = type { %struct.user_reg* }
%struct.user_reg = type { i8*, %struct.user_reg* }

@user_regs_data = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_reg_map_name_to_regnum(%struct.gdbarch* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gdb_user_regs*, align 8
  %12 = alloca %struct.user_reg*, align 8
  %13 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %21 = call i32 @gdbarch_num_regs(%struct.gdbarch* %20)
  %22 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %23 = call i32 @gdbarch_num_pseudo_regs(%struct.gdbarch* %22)
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %49, %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @gdbarch_register_name(%struct.gdbarch* %30, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @strncmp(i8* %41, i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %101

48:                                               ; preds = %40, %35, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %54 = load i32, i32* @user_regs_data, align 4
  %55 = call %struct.gdb_user_regs* @gdbarch_data(%struct.gdbarch* %53, i32 %54)
  store %struct.gdb_user_regs* %55, %struct.gdb_user_regs** %11, align 8
  store i32 0, i32* %13, align 4
  %56 = load %struct.gdb_user_regs*, %struct.gdb_user_regs** %11, align 8
  %57 = getelementptr inbounds %struct.gdb_user_regs, %struct.gdb_user_regs* %56, i32 0, i32 0
  %58 = load %struct.user_reg*, %struct.user_reg** %57, align 8
  store %struct.user_reg* %58, %struct.user_reg** %12, align 8
  br label %59

59:                                               ; preds = %94, %52
  %60 = load %struct.user_reg*, %struct.user_reg** %12, align 8
  %61 = icmp ne %struct.user_reg* %60, null
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.user_reg*, %struct.user_reg** %12, align 8
  %67 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %65, %62
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.user_reg*, %struct.user_reg** %12, align 8
  %75 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = icmp eq i32 %73, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load %struct.user_reg*, %struct.user_reg** %12, align 8
  %81 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @strncmp(i8* %82, i8* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79, %65
  %88 = load i32, i32* @NUM_REGS, align 4
  %89 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %4, align 4
  br label %101

93:                                               ; preds = %79, %72
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.user_reg*, %struct.user_reg** %12, align 8
  %96 = getelementptr inbounds %struct.user_reg, %struct.user_reg* %95, i32 0, i32 1
  %97 = load %struct.user_reg*, %struct.user_reg** %96, align 8
  store %struct.user_reg* %97, %struct.user_reg** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %59

100:                                              ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %87, %46
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gdbarch_num_regs(%struct.gdbarch*) #1

declare dso_local i32 @gdbarch_num_pseudo_regs(%struct.gdbarch*) #1

declare dso_local i8* @gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.gdb_user_regs* @gdbarch_data(%struct.gdbarch*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
