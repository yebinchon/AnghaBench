; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_gdbsim_fetch_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sim.c_gdbsim_fetch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@gdbsim_fetch_register.warn_user = internal global i32 1, align 4
@gdbsim_desc = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Size of register %s (%d/%d) incorrect (%d instead of %d))\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gdbsim_fetch_register: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gdbsim_fetch_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdbsim_fetch_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %18, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @NUM_REGS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  call void @gdbsim_fetch_register(i32 %17)
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %12

21:                                               ; preds = %12
  br label %95

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @REGISTER_SIM_REGNO(i32 %23)
  switch i32 %24, label %38 [
    i32 129, label %25
    i32 128, label %26
  ]

25:                                               ; preds = %22
  br label %95

26:                                               ; preds = %22
  %27 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %3, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %4, align 8
  %31 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @supply_register(i32 %33, i8* %30)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @set_register_cached(i32 %35, i32 -1)
  %37 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %37)
  br label %95

38:                                               ; preds = %22
  %39 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %6, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %7, align 8
  %43 = load i32, i32* %2, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @NUM_REGS, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %45, %38
  %50 = phi i1 [ false, %38 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @gdb_assert(i32 %51)
  %53 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %54 = call i32 @memset(i8* %42, i32 0, i32 %53)
  %55 = load i32, i32* @gdbsim_desc, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @REGISTER_SIM_REGNO(i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %58)
  %60 = call i32 @sim_fetch_register(i32 %55, i32 %57, i8* %42, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %65)
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32, i32* @gdbsim_fetch_register.warn_user, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32, i32* @gdb_stderr, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @REGISTER_NAME(i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @REGISTER_SIM_REGNO(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %79)
  %81 = call i32 @fprintf_unfiltered(i32 %72, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %77, i32 %78, i32 %80)
  store i32 0, i32* @gdbsim_fetch_register.warn_user, align 4
  br label %82

82:                                               ; preds = %71, %68, %63, %49
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @supply_register(i32 %83, i8* %42)
  %85 = call i32 (...) @sr_get_debug()
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @printf_filtered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %90)
  %92 = call i32 @dump_mem(i8* %42, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  br label %95

95:                                               ; preds = %21, %93, %26, %25
  ret void
}

declare dso_local i32 @REGISTER_SIM_REGNO(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @set_register_cached(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @sim_fetch_register(i32, i32, i8*, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REGISTER_NAME(i32) #1

declare dso_local i32 @sr_get_debug(...) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @dump_mem(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
