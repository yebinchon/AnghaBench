; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx68.c_vx_read_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx68.c_vx_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC68K_GREG_PLEN = common dso_local global i32 0, align 4
@MC68K_FPREG_PLEN = common dso_local global i32 0, align 4
@PTRACE_GETREGS = common dso_local global i32 0, align 4
@MC68K_R_D0 = common dso_local global i64 0, align 8
@deprecated_registers = common dso_local global i32* null, align 8
@MC68K_GREG_SIZE = common dso_local global i32 0, align 4
@MC68K_R_SR = common dso_local global i64 0, align 8
@PS_REGNUM = common dso_local global i32 0, align 4
@MC68K_R_PC = common dso_local global i64 0, align 8
@PC_REGNUM = common dso_local global i32 0, align 4
@target_has_fp = common dso_local global i64 0, align 8
@PTRACE_GETFPREGS = common dso_local global i32 0, align 4
@MC68K_R_FP0 = common dso_local global i64 0, align 8
@FP0_REGNUM = common dso_local global i32 0, align 4
@MC68K_FPREG_SIZE = common dso_local global i32 0, align 4
@MC68K_R_FPCR = common dso_local global i64 0, align 8
@FPC_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_read_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @MC68K_GREG_PLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MC68K_FPREG_PLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = load i32, i32* @MC68K_GREG_PLEN, align 4
  %14 = load i32, i32* @PTRACE_GETREGS, align 4
  %15 = call i32 @net_read_registers(i8* %9, i32 %13, i32 %14)
  %16 = load i64, i64* @MC68K_R_D0, align 8
  %17 = getelementptr inbounds i8, i8* %9, i64 %16
  %18 = load i32*, i32** @deprecated_registers, align 8
  %19 = load i32, i32* @MC68K_GREG_SIZE, align 4
  %20 = mul nsw i32 16, %19
  %21 = call i32 @bcopy(i8* %17, i32* %18, i32 %20)
  %22 = load i64, i64* @MC68K_R_SR, align 8
  %23 = getelementptr inbounds i8, i8* %9, i64 %22
  %24 = load i32*, i32** @deprecated_registers, align 8
  %25 = load i32, i32* @PS_REGNUM, align 4
  %26 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %25)
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @MC68K_GREG_SIZE, align 4
  %29 = call i32 @bcopy(i8* %23, i32* %27, i32 %28)
  %30 = load i64, i64* @MC68K_R_PC, align 8
  %31 = getelementptr inbounds i8, i8* %9, i64 %30
  %32 = load i32*, i32** @deprecated_registers, align 8
  %33 = load i32, i32* @PC_REGNUM, align 4
  %34 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %33)
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @MC68K_GREG_SIZE, align 4
  %37 = call i32 @bcopy(i8* %31, i32* %35, i32 %36)
  %38 = load i64, i64* @target_has_fp, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %1
  %41 = load i32, i32* @MC68K_FPREG_PLEN, align 4
  %42 = load i32, i32* @PTRACE_GETFPREGS, align 4
  %43 = call i32 @net_read_registers(i8* %12, i32 %41, i32 %42)
  %44 = load i64, i64* @MC68K_R_FP0, align 8
  %45 = getelementptr inbounds i8, i8* %12, i64 %44
  %46 = load i32*, i32** @deprecated_registers, align 8
  %47 = load i32, i32* @FP0_REGNUM, align 4
  %48 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @MC68K_FPREG_SIZE, align 4
  %51 = mul nsw i32 %50, 8
  %52 = call i32 @bcopy(i8* %45, i32* %49, i32 %51)
  %53 = load i64, i64* @MC68K_R_FPCR, align 8
  %54 = getelementptr inbounds i8, i8* %12, i64 %53
  %55 = load i32*, i32** @deprecated_registers, align 8
  %56 = load i32, i32* @FPC_REGNUM, align 4
  %57 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %56)
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* @MC68K_FPREG_PLEN, align 4
  %60 = load i32, i32* @MC68K_FPREG_SIZE, align 4
  %61 = mul nsw i32 %60, 8
  %62 = sub nsw i32 %59, %61
  %63 = call i32 @bcopy(i8* %54, i32* %58, i32 %62)
  br label %81

64:                                               ; preds = %1
  %65 = load i32*, i32** @deprecated_registers, align 8
  %66 = load i32, i32* @FP0_REGNUM, align 4
  %67 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %66)
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* @MC68K_FPREG_SIZE, align 4
  %70 = mul nsw i32 %69, 8
  %71 = call i32 @memset(i32* %68, i32 0, i32 %70)
  %72 = load i32*, i32** @deprecated_registers, align 8
  %73 = load i32, i32* @FPC_REGNUM, align 4
  %74 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %73)
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* @MC68K_FPREG_PLEN, align 4
  %77 = load i32, i32* @MC68K_FPREG_SIZE, align 4
  %78 = mul nsw i32 %77, 8
  %79 = sub nsw i32 %76, %78
  %80 = call i32 @memset(i32* %75, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %64, %40
  %82 = call i32 (...) @deprecated_registers_fetched()
  %83 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @net_read_registers(i8*, i32, i32) #2

declare dso_local i32 @bcopy(i8*, i32*, i32) #2

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #2

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
