; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxsparc.c_vx_read_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxsparc.c_vx_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@SPARC_GREG_PLEN = common dso_local global i32 0, align 4
@SPARC_FPREG_PLEN = common dso_local global i32 0, align 4
@PTRACE_GETREGS = common dso_local global i32 0, align 4
@vxsparc_gregset = common dso_local global i32 0, align 4
@target_has_fp = common dso_local global i64 0, align 8
@PTRACE_GETFPREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_read_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  store %struct.regcache* %8, %struct.regcache** %3, align 8
  %9 = load i32, i32* @SPARC_GREG_PLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @SPARC_FPREG_PLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load i32, i32* @SPARC_GREG_PLEN, align 4
  %17 = load i32, i32* @PTRACE_GETREGS, align 4
  %18 = call i32 @net_read_registers(i8* %12, i32 %16, i32 %17)
  %19 = load %struct.regcache*, %struct.regcache** %3, align 8
  %20 = call i32 @sparc32_supply_gregset(i32* @vxsparc_gregset, %struct.regcache* %19, i32 -1, i8* %12)
  %21 = load i64, i64* @target_has_fp, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @SPARC_FPREG_PLEN, align 4
  %25 = load i32, i32* @PTRACE_GETFPREGS, align 4
  %26 = call i32 @net_read_registers(i8* %15, i32 %24, i32 %25)
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @SPARC_FPREG_PLEN, align 4
  %29 = call i32 @memset(i8* %15, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.regcache*, %struct.regcache** %3, align 8
  %32 = call i32 @sparc32_supply_fpregset(%struct.regcache* %31, i32 -1, i8* %15)
  %33 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @net_read_registers(i8*, i32, i32) #2

declare dso_local i32 @sparc32_supply_gregset(i32*, %struct.regcache*, i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sparc32_supply_fpregset(%struct.regcache*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
