; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxmips.c_vx_read_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxmips.c_vx_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MIPS_GREG_PLEN = common dso_local global i32 0, align 4
@MIPS_FPREG_PLEN = common dso_local global i32 0, align 4
@PTRACE_GETREGS = common dso_local global i32 0, align 4
@MIPS_R_GP0 = common dso_local global i64 0, align 8
@deprecated_registers = common dso_local global i32* null, align 8
@MIPS_GREG_SIZE = common dso_local global i32 0, align 4
@MIPS_R_SR = common dso_local global i64 0, align 8
@PS_REGNUM = common dso_local global i32 0, align 4
@MIPS_R_LO = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@MIPS_R_HI = common dso_local global i64 0, align 8
@MIPS_R_PC = common dso_local global i64 0, align 8
@target_has_fp = common dso_local global i64 0, align 8
@PTRACE_GETFPREGS = common dso_local global i32 0, align 4
@MIPS_R_FP0 = common dso_local global i64 0, align 8
@FP0_REGNUM = common dso_local global i32 0, align 4
@MIPS_R_FPCSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_read_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @MIPS_GREG_PLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MIPS_FPREG_PLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = load i32, i32* @MIPS_GREG_PLEN, align 4
  %14 = load i32, i32* @PTRACE_GETREGS, align 4
  %15 = call i32 @net_read_registers(i8* %9, i32 %13, i32 %14)
  %16 = load i64, i64* @MIPS_R_GP0, align 8
  %17 = getelementptr inbounds i8, i8* %9, i64 %16
  %18 = load i32*, i32** @deprecated_registers, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %21 = mul nsw i32 32, %20
  %22 = call i32 @bcopy(i8* %17, i32* %19, i32 %21)
  %23 = load i64, i64* @MIPS_R_SR, align 8
  %24 = getelementptr inbounds i8, i8* %9, i64 %23
  %25 = load i32*, i32** @deprecated_registers, align 8
  %26 = load i32, i32* @PS_REGNUM, align 4
  %27 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %26)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %30 = call i32 @bcopy(i8* %24, i32* %28, i32 %29)
  %31 = load i64, i64* @MIPS_R_LO, align 8
  %32 = getelementptr inbounds i8, i8* %9, i64 %31
  %33 = load i32*, i32** @deprecated_registers, align 8
  %34 = load i32, i32* @current_gdbarch, align 4
  %35 = call %struct.TYPE_2__* @mips_regnum(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %37)
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %41 = call i32 @bcopy(i8* %32, i32* %39, i32 %40)
  %42 = load i64, i64* @MIPS_R_HI, align 8
  %43 = getelementptr inbounds i8, i8* %9, i64 %42
  %44 = load i32*, i32** @deprecated_registers, align 8
  %45 = load i32, i32* @current_gdbarch, align 4
  %46 = call %struct.TYPE_2__* @mips_regnum(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %48)
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %52 = call i32 @bcopy(i8* %43, i32* %50, i32 %51)
  %53 = load i64, i64* @MIPS_R_PC, align 8
  %54 = getelementptr inbounds i8, i8* %9, i64 %53
  %55 = load i32*, i32** @deprecated_registers, align 8
  %56 = load i32, i32* @current_gdbarch, align 4
  %57 = call %struct.TYPE_2__* @mips_regnum(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %59)
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* @MIPS_GREG_SIZE, align 4
  %63 = call i32 @bcopy(i8* %54, i32* %61, i32 %62)
  %64 = load i64, i64* @target_has_fp, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %1
  %67 = load i32, i32* @MIPS_FPREG_PLEN, align 4
  %68 = load i32, i32* @PTRACE_GETFPREGS, align 4
  %69 = call i32 @net_read_registers(i8* %12, i32 %67, i32 %68)
  %70 = load i64, i64* @MIPS_R_FP0, align 8
  %71 = getelementptr inbounds i8, i8* %12, i64 %70
  %72 = load i32*, i32** @deprecated_registers, align 8
  %73 = load i32, i32* @FP0_REGNUM, align 4
  %74 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %73)
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* @FP0_REGNUM, align 4
  %77 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %76)
  %78 = mul nsw i32 %77, 32
  %79 = call i32 @bcopy(i8* %71, i32* %75, i32 %78)
  %80 = load i64, i64* @MIPS_R_FPCSR, align 8
  %81 = getelementptr inbounds i8, i8* %12, i64 %80
  %82 = load i32*, i32** @deprecated_registers, align 8
  %83 = load i32, i32* @current_gdbarch, align 4
  %84 = call %struct.TYPE_2__* @mips_regnum(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %86)
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* @current_gdbarch, align 4
  %90 = call %struct.TYPE_2__* @mips_regnum(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %92)
  %94 = call i32 @bcopy(i8* %81, i32* %88, i32 %93)
  br label %117

95:                                               ; preds = %1
  %96 = load i32*, i32** @deprecated_registers, align 8
  %97 = load i32, i32* @FP0_REGNUM, align 4
  %98 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %97)
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* @FP0_REGNUM, align 4
  %101 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %100)
  %102 = mul nsw i32 %101, 32
  %103 = call i32 @memset(i32* %99, i32 0, i32 %102)
  %104 = load i32*, i32** @deprecated_registers, align 8
  %105 = load i32, i32* @current_gdbarch, align 4
  %106 = call %struct.TYPE_2__* @mips_regnum(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %108)
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  %111 = load i32, i32* @current_gdbarch, align 4
  %112 = call %struct.TYPE_2__* @mips_regnum(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %114)
  %116 = call i32 @memset(i32* %110, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %95, %66
  %118 = call i32 (...) @deprecated_registers_fetched()
  %119 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @net_read_registers(i8*, i32, i32) #2

declare dso_local i32 @bcopy(i8*, i32*, i32) #2

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #2

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @deprecated_registers_fetched(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
