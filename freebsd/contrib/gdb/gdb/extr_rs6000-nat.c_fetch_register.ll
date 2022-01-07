; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_fetch_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_fetch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@PT_READ_FPR = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"gdb error: register no %d not implemented.\0A\00", align 1
@PT_READ_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fetch_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  store i64 0, i64* @errno, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @regmap(i32 %13, i32* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @PT_READ_FPR, align 4
  %19 = load i32, i32* @inferior_ptid, align 4
  %20 = call i32 @PIDGET(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @rs6000_ptrace32(i32 %18, i32 %20, i32* %12, i32 %21, i32 0)
  br label %64

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @NUM_REGS, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @gdb_stderr, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @fprintf_unfiltered(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  store i32 1, i32* %7, align 4
  br label %73

35:                                               ; preds = %23
  %36 = call i32 (...) @ARCH64()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @PT_READ_GPR, align 4
  %40 = load i32, i32* @inferior_ptid, align 4
  %41 = call i32 @PIDGET(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @rs6000_ptrace32(i32 %39, i32 %41, i32* %44, i32 0, i32 0)
  store i32 %45, i32* %12, align 16
  br label %62

46:                                               ; preds = %35
  %47 = load i32, i32* @PT_READ_GPR, align 4
  %48 = load i32, i32* @inferior_ptid, align 4
  %49 = call i32 @PIDGET(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = bitcast i64* %8 to i32*
  %52 = call i32 @rs6000_ptrace64(i32 %47, i32 %49, i32 %50, i32 0, i32* %51)
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %53)
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 @memcpy(i32* %12, i64* %8, i32 8)
  br label %61

58:                                               ; preds = %46
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 16
  br label %61

61:                                               ; preds = %58, %56
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i64, i64* @errno, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = bitcast i32* %12 to i8*
  %70 = call i32 @supply_register(i32 %68, i8* %69)
  br label %72

71:                                               ; preds = %64
  store i64 0, i64* @errno, align 8
  br label %72

72:                                               ; preds = %71, %67
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %7, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regmap(i32, i32*) #2

declare dso_local i32 @rs6000_ptrace32(i32, i32, i32*, i32, i32) #2

declare dso_local i32 @PIDGET(i32) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #2

declare dso_local i32 @ARCH64(...) #2

declare dso_local i32 @rs6000_ptrace64(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
