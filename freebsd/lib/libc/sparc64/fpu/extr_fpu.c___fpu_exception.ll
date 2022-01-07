; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu.c___fpu_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu.c___fpu_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrapframe = type { i32, i32, i64 }
%struct.fpemu = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"lost FPU trap type\0A\00", align 1
@SIGFPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"FPU sequence error\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"FPU hardware error\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown FPU error\0A\00", align 1
@FSR_FTT_MASK = common dso_local global i32 0, align 4
@IOP_MISC = common dso_local global i64 0, align 8
@INS2_FPop1 = common dso_local global i64 0, align 8
@INS2_FPop2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"bogus FP fault\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fpu_exception(%struct.utrapframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.utrapframe*, align 8
  %4 = alloca %struct.fpemu, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.utrapframe* %0, %struct.utrapframe** %3, align 8
  %9 = load %struct.utrapframe*, %struct.utrapframe** %3, align 8
  %10 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @FSR_GET_FTT(i32 %12)
  switch i32 %13, label %25 [
    i32 131, label %14
    i32 132, label %16
    i32 130, label %18
    i32 133, label %21
    i32 129, label %24
    i32 128, label %24
  ]

14:                                               ; preds = %1
  %15 = call i32 @__utrap_write(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load i32, i32* @SIGFPE, align 4
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = call i32 @__utrap_write(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @SIGFPE, align 4
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = call i32 @__utrap_write(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @SIGFPE, align 4
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %1, %1
  br label %28

25:                                               ; preds = %1
  %26 = call i32 @__utrap_write(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @SIGFPE, align 4
  store i32 %27, i32* %2, align 4
  br label %69

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @FSR_FTT_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.utrapframe*, %struct.utrapframe** %3, align 8
  %35 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @IF_OP(i32 %39)
  %41 = load i64, i64* @IOP_MISC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @IF_F3_OP3(i32 %44)
  %46 = load i64, i64* @INS2_FPop1, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @IF_F3_OP3(i32 %49)
  %51 = load i64, i64* @INS2_FPop2, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %28
  %54 = call i32 @__utrap_panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48, %43
  %56 = load %struct.utrapframe*, %struct.utrapframe** %3, align 8
  %57 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  %59 = load %struct.utrapframe*, %struct.utrapframe** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @__fpu_execute(%struct.utrapframe* %59, %struct.fpemu* %4, i32 %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %4, i32 0, i32 0
  call void asm sideeffect "ldx $0, %fsr", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %68) #2, !srcloc !2
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %25, %21, %18, %16, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @FSR_GET_FTT(i32) #1

declare dso_local i32 @__utrap_write(i8*) #1

declare dso_local i64 @IF_OP(i32) #1

declare dso_local i64 @IF_F3_OP3(i32) #1

declare dso_local i32 @__utrap_panic(i8*) #1

declare dso_local i32 @__fpu_execute(%struct.utrapframe*, %struct.fpemu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1445}
