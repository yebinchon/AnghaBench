; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmGetCompoundSymbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmGetCompoundSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" += \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" -= \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" *= \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" /= \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %= \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" <<= \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" >>= \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" &= \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" |= \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" ^= \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @AcpiDmGetCompoundSymbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @AcpiDmGetCompoundSymbol(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %16 [
    i32 137, label %6
    i32 128, label %7
    i32 131, label %8
    i32 133, label %9
    i32 132, label %10
    i32 130, label %11
    i32 129, label %12
    i32 136, label %13
    i32 135, label %14
    i32 134, label %15
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %17

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %17

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %17

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %17

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %17

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %17

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %17

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %17

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %17

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %19

17:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
