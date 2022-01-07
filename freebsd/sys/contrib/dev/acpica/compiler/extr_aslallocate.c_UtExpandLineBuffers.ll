; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslallocate.c_UtExpandLineBuffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslallocate.c_UtExpandLineBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_LineBufferSize = common dso_local global i32 0, align 4
@AslGbl_CurrentLineBuffer = common dso_local global i64 0, align 8
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Increasing line buffer size from %u to %u\0A\00", align 1
@AslGbl_MainTokenBuffer = common dso_local global i64 0, align 8
@AslGbl_MacroTokenBuffer = common dso_local global i64 0, align 8
@AslGbl_ExpressionTokenBuffer = common dso_local global i64 0, align 8
@AslGbl_LineBufPtr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UtExpandLineBuffers() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %3 = mul nsw i32 %2, 2
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* @AslGbl_CurrentLineBuffer, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %8 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @DbgPrint(i32 %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %6, %0
  %12 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @UtReallocLineBuffers(i64* @AslGbl_CurrentLineBuffer, i32 %12, i32 %13)
  %15 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @UtReallocLineBuffers(i64* @AslGbl_MainTokenBuffer, i32 %15, i32 %16)
  %18 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @UtReallocLineBuffers(i64* @AslGbl_MacroTokenBuffer, i32 %18, i32 %19)
  %21 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @UtReallocLineBuffers(i64* @AslGbl_ExpressionTokenBuffer, i32 %21, i32 %22)
  %24 = load i64, i64* @AslGbl_CurrentLineBuffer, align 8
  store i64 %24, i64* @AslGbl_LineBufPtr, align 8
  %25 = load i32, i32* %1, align 4
  store i32 %25, i32* @AslGbl_LineBufferSize, align 4
  ret void
}

declare dso_local i32 @DbgPrint(i32, i8*, i32, i32) #1

declare dso_local i32 @UtReallocLineBuffers(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
