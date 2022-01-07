; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_store_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PT_WRITE_FPR = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"gdb error: register no %d not implemented.\0A\00", align 1
@SP_REGNUM = common dso_local global i32 0, align 4
@PT_WRITE_GPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ptrace write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @store_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @regcache_collect(i32 %12, i32* %11)
  store i64 0, i64* @errno, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @regmap(i32 %14, i32* %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @PT_WRITE_FPR, align 4
  %20 = load i32, i32* @inferior_ptid, align 4
  %21 = call i32 @PIDGET(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rs6000_ptrace32(i32 %19, i32 %21, i32* %11, i32 %22, i32 0)
  br label %72

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @NUM_REGS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @gdb_stderr, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @fprintf_unfiltered(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %71

36:                                               ; preds = %24
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SP_REGNUM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @exec_one_dummy_insn()
  br label %42

42:                                               ; preds = %40, %36
  %43 = call i32 (...) @ARCH64()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @PT_WRITE_GPR, align 4
  %47 = load i32, i32* @inferior_ptid, align 4
  %48 = call i32 @PIDGET(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %11, align 16
  %53 = call i32 @rs6000_ptrace32(i32 %46, i32 %48, i32* %51, i32 %52, i32 0)
  br label %70

54:                                               ; preds = %42
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %55)
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @memcpy(i64* %7, i32* %11, i32 8)
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 16
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %60, %58
  %64 = load i32, i32* @PT_WRITE_GPR, align 4
  %65 = load i32, i32* @inferior_ptid, align 4
  %66 = call i32 @PIDGET(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = bitcast i64* %7 to i32*
  %69 = call i32 @rs6000_ptrace64(i32 %64, i32 %66, i32 %67, i32 0, i32* %68)
  br label %70

70:                                               ; preds = %63, %45
  br label %71

71:                                               ; preds = %70, %35
  br label %72

72:                                               ; preds = %71, %18
  %73 = load i64, i64* @errno, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @errno, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regcache_collect(i32, i32*) #2

declare dso_local i32 @regmap(i32, i32*) #2

declare dso_local i32 @rs6000_ptrace32(i32, i32, i32*, i32, i32) #2

declare dso_local i32 @PIDGET(i32) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #2

declare dso_local i32 @exec_one_dummy_insn(...) #2

declare dso_local i32 @ARCH64(...) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @memcpy(i64*, i32*, i32) #2

declare dso_local i32 @rs6000_ptrace64(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
