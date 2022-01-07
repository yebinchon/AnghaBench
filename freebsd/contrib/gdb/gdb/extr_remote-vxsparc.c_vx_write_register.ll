; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxsparc.c_vx_write_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vxsparc.c_vx_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@SPARC_GREG_PLEN = common dso_local global i32 0, align 4
@SPARC_FPREG_PLEN = common dso_local global i32 0, align 4
@SPARC_G0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC32_Y_REGNUM = common dso_local global i32 0, align 4
@SPARC32_NPC_REGNUM = common dso_local global i32 0, align 4
@vxsparc_gregset = common dso_local global i32 0, align 4
@PTRACE_SETREGS = common dso_local global i32 0, align 4
@SPARC_SP_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@target_has_fp = common dso_local global i64 0, align 8
@PTRACE_SETFPREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_write_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  store %struct.regcache* %11, %struct.regcache** %3, align 8
  %12 = load i32, i32* @SPARC_GREG_PLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @SPARC_FPREG_PLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load i32, i32* @SPARC_G0_REGNUM, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %25
  store i32 0, i32* %8, align 4
  br label %39

38:                                               ; preds = %33, %29
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load %struct.regcache*, %struct.regcache** %3, align 8
  %45 = call i32 @sparc32_collect_gregset(i32* @vxsparc_gregset, %struct.regcache* %44, i32 -1, i8* %15)
  %46 = load i32, i32* @SPARC_GREG_PLEN, align 4
  %47 = load i32, i32* @PTRACE_SETREGS, align 4
  %48 = call i32 @net_write_registers(i8* %15, i32 %46, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %63, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59, %51, %43
  %64 = load %struct.regcache*, %struct.regcache** %3, align 8
  %65 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %66 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %64, i32 %65, i32* %10)
  %67 = load %struct.regcache*, %struct.regcache** %3, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @sparc_collect_rwindow(%struct.regcache* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %59, %55
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64, i64* @target_has_fp, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.regcache*, %struct.regcache** %3, align 8
  %80 = call i32 @sparc32_collect_fpregset(%struct.regcache* %79, i32 -1, i8* %18)
  %81 = load i32, i32* @SPARC_FPREG_PLEN, align 4
  %82 = load i32, i32* @PTRACE_SETFPREGS, align 4
  %83 = call i32 @net_write_registers(i8* %18, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %75, %72
  %85 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sparc32_collect_gregset(i32*, %struct.regcache*, i32, i8*) #2

declare dso_local i32 @net_write_registers(i8*, i32, i32) #2

declare dso_local i32 @regcache_cooked_read_unsigned(%struct.regcache*, i32, i32*) #2

declare dso_local i32 @sparc_collect_rwindow(%struct.regcache*, i32, i32) #2

declare dso_local i32 @sparc32_collect_fpregset(%struct.regcache*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
