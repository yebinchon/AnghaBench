; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmutils.c_AcpiDmDecodeAttribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmutils.c_AcpiDmDecodeAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"AttribQuick\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"AttribSendReceive\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"AttribByte\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"AttribWord\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"AttribBlock\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"AttribBytes\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"AttribProcessCall\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"AttribBlockProcessCall\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"AttribRawBytes\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"AttribRawProcessBytes\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"0x%2.2X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmDecodeAttribute(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %24 [
    i32 132, label %4
    i32 129, label %6
    i32 135, label %8
    i32 128, label %10
    i32 137, label %12
    i32 134, label %14
    i32 133, label %16
    i32 136, label %18
    i32 131, label %20
    i32 130, label %22
  ]

4:                                                ; preds = %1
  %5 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %27

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %27

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %27

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %27

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %27

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %27

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %27

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %27

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %27

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
