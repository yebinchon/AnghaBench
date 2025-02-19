; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbGenerateGpe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbGenerateGpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Invalid GPE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbGenerateGpe(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strtoul(i8* %8, i32* null, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strtoul(i8* %13, i32* null, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %12
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ACPI_TO_POINTER(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32* @AcpiEvGetGpeEventInfo(i32 %21, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %32

28:                                               ; preds = %19
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @AcpiEvGpeDispatch(i32* null, i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %26
  ret void
}

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32* @AcpiEvGetGpeEventInfo(i32, i32) #1

declare dso_local i32 @ACPI_TO_POINTER(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @AcpiEvGpeDispatch(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
