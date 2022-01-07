; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxmips.c_vx_write_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxmips.c_vx_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MIPS_GREG_PLEN = common dso_local global i32 0, align 4
@MIPS_FPREG_PLEN = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i32* null, align 8
@MIPS_R_GP0 = common dso_local global i64 0, align 8
@MIPS_GREG_SIZE = common dso_local global i32 0, align 4
@PS_REGNUM = common dso_local global i32 0, align 4
@MIPS_R_SR = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@MIPS_R_LO = common dso_local global i64 0, align 8
@MIPS_R_HI = common dso_local global i64 0, align 8
@MIPS_R_PC = common dso_local global i64 0, align 8
@PTRACE_SETREGS = common dso_local global i32 0, align 4
@target_has_fp = common dso_local global i64 0, align 8
@FP0_REGNUM = common dso_local global i32 0, align 4
@MIPS_R_FP0 = common dso_local global i64 0, align 8
@MIPS_R_FPCSR = common dso_local global i64 0, align 8
@PTRACE_SETFPREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vx_write_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @MIPS_GREG_PLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @MIPS_FPREG_PLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %14 = load i32*, i32** @deprecated_registers, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i64, i64* @MIPS_R_GP0, align 8
  %17 = getelementptr inbounds i8, i8* %10, i64 %16
  %18 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %19 = mul nsw i32 32, %18
  %20 = call i32 @bcopy(i32* %15, i8* %17, i32 %19)
  %21 = load i32*, i32** @deprecated_registers, align 8
  %22 = load i32, i32* @PS_REGNUM, align 4
  %23 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i64, i64* @MIPS_R_SR, align 8
  %26 = getelementptr inbounds i8, i8* %10, i64 %25
  %27 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %28 = call i32 @bcopy(i32* %24, i8* %26, i32 %27)
  %29 = load i32*, i32** @deprecated_registers, align 8
  %30 = load i32, i32* @current_gdbarch, align 4
  %31 = call %struct.TYPE_2__* @mips_regnum(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %33)
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i64, i64* @MIPS_R_LO, align 8
  %37 = getelementptr inbounds i8, i8* %10, i64 %36
  %38 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %39 = call i32 @bcopy(i32* %35, i8* %37, i32 %38)
  %40 = load i32*, i32** @deprecated_registers, align 8
  %41 = load i32, i32* @current_gdbarch, align 4
  %42 = call %struct.TYPE_2__* @mips_regnum(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %44)
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i64, i64* @MIPS_R_HI, align 8
  %48 = getelementptr inbounds i8, i8* %10, i64 %47
  %49 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %50 = call i32 @bcopy(i32* %46, i8* %48, i32 %49)
  %51 = load i32*, i32** @deprecated_registers, align 8
  %52 = load i32, i32* @current_gdbarch, align 4
  %53 = call %struct.TYPE_2__* @mips_regnum(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %55)
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i64, i64* @MIPS_R_PC, align 8
  %59 = getelementptr inbounds i8, i8* %10, i64 %58
  %60 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %61 = call i32 @bcopy(i32* %57, i8* %59, i32 %60)
  %62 = load i32, i32* @MIPS_GREG_PLEN, align 4
  %63 = load i32, i32* @PTRACE_SETREGS, align 4
  %64 = call i32 @net_write_registers(i8* %10, i32 %62, i32 %63)
  %65 = load i64, i64* @target_has_fp, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %1
  %68 = load i32*, i32** @deprecated_registers, align 8
  %69 = load i32, i32* @FP0_REGNUM, align 4
  %70 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %69)
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i64, i64* @MIPS_R_FP0, align 8
  %73 = getelementptr inbounds i8, i8* %13, i64 %72
  %74 = load i32, i32* @FP0_REGNUM, align 4
  %75 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %74)
  %76 = mul nsw i32 %75, 32
  %77 = call i32 @bcopy(i32* %71, i8* %73, i32 %76)
  %78 = load i32*, i32** @deprecated_registers, align 8
  %79 = load i32, i32* @current_gdbarch, align 4
  %80 = call %struct.TYPE_2__* @mips_regnum(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %82)
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i64, i64* @MIPS_R_FPCSR, align 8
  %86 = getelementptr inbounds i8, i8* %13, i64 %85
  %87 = load i32, i32* @current_gdbarch, align 4
  %88 = call %struct.TYPE_2__* @mips_regnum(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %90)
  %92 = call i32 @bcopy(i32* %84, i8* %86, i32 %91)
  %93 = load i32, i32* @MIPS_FPREG_PLEN, align 4
  %94 = load i32, i32* @PTRACE_SETFPREGS, align 4
  %95 = call i32 @net_write_registers(i8* %13, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %67, %1
  %97 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #2

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #2

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #2

declare dso_local i32 @net_write_registers(i8*, i32, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
