; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-nat.c_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-nat.c_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@PTRACE_GETREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't get registers\00", align 1
@sparc_gregset = common dso_local global i32 0, align 4
@PTRACE_SETREGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't write registers\00", align 1
@SPARC_SP_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@PTRACE_GETFPREGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Couldn't get floating-point registers\00", align 1
@PTRACE_SETFPREGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Couldn't write floating-point registers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_inferior_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  store %struct.regcache* %9, %struct.regcache** %3, align 8
  %10 = load i32, i32* @inferior_ptid, align 4
  %11 = call i32 @TIDGET(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = call i32 @PIDGET(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @sparc_gregset_supplies_p(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @PTRACE_GETREGS, align 4
  %26 = load i32, i32* %4, align 4
  %27 = ptrtoint i32* %5 to i32
  %28 = call i32 @ptrace(i32 %25, i32 %26, i32 %27, i32 0)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @perror_with_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* @sparc_gregset, align 4
  %34 = load %struct.regcache*, %struct.regcache** %3, align 8
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @sparc_collect_gregset(i32 %33, %struct.regcache* %34, i32 %35, i32* %5)
  %37 = load i32, i32* @PTRACE_SETREGS, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ptrtoint i32* %5 to i32
  %40 = call i32 @ptrace(i32 %37, i32 %38, i32 %39, i32 0)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 @perror_with_name(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %47, %44
  %60 = load %struct.regcache*, %struct.regcache** %3, align 8
  %61 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %62 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %60, i32 %61, i32* %6)
  %63 = load %struct.regcache*, %struct.regcache** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @sparc_collect_rwindow(%struct.regcache* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %55, %51
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %108

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i32, i32* %2, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %2, align 4
  %77 = call i64 @sparc_fpregset_supplies_p(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %75, %72
  %80 = load i32, i32* @PTRACE_GETFPREGS, align 4
  %81 = load i32, i32* %4, align 4
  %82 = ptrtoint i32* %7 to i32
  %83 = call i32 @ptrace(i32 %80, i32 %81, i32 %82, i32 0)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 @perror_with_name(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %79
  %88 = call i32 @memcpy(i32* %8, i32* %7, i32 4)
  %89 = load %struct.regcache*, %struct.regcache** %3, align 8
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @sparc_collect_fpregset(%struct.regcache* %89, i32 %90, i32* %7)
  %92 = call i64 @memcmp(i32* %8, i32* %7, i32 4)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load i32, i32* @PTRACE_SETFPREGS, align 4
  %96 = load i32, i32* %4, align 4
  %97 = ptrtoint i32* %7 to i32
  %98 = call i32 @ptrace(i32 %95, i32 %96, i32 %97, i32 0)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 @perror_with_name(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %94
  br label %103

103:                                              ; preds = %102, %87
  %104 = load i32, i32* %2, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %108

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %70, %106, %107, %75
  ret void
}

declare dso_local i32 @TIDGET(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i64 @sparc_gregset_supplies_p(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @sparc_collect_gregset(i32, %struct.regcache*, i32, i32*) #1

declare dso_local i32 @regcache_cooked_read_unsigned(%struct.regcache*, i32, i32*) #1

declare dso_local i32 @sparc_collect_rwindow(%struct.regcache*, i32, i32) #1

declare dso_local i64 @sparc_fpregset_supplies_p(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sparc_collect_fpregset(%struct.regcache*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
