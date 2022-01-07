; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtCompileBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtfield.c_DtCompileBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Found %u values, must match expected count: %u\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_BUFFER_LIST = common dso_local global i32 0, align 4
@ASL_MSG_BUFFER_ELEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtCompileBuffer(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @DtNormalizeBuffer(i8* %13, i32* %11)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* @ASL_ERROR, align 4
  %25 = load i32, i32* @ASL_MSG_BUFFER_LIST, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %28 = call i32 @DtError(i32 %24, i32 %25, i32* %26, i8* %27)
  br label %75

29:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 32
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @ASL_ERROR, align 4
  %48 = load i32, i32* @ASL_MSG_BUFFER_ELEMENT, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @DtError(i32 %47, i32 %48, i32* %49, i8* %50)
  br label %75

52:                                               ; preds = %40, %34
  %53 = load i8*, i8** %9, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @AcpiUtAsciiToHexByte(i8* %53, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* @ASL_ERROR, align 4
  %64 = load i32, i32* @ASL_MSG_BUFFER_ELEMENT, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @DtError(i32 %63, i32 %64, i32* %65, i8* %66)
  br label %75

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8* %73, i8** %9, align 8
  br label %30

74:                                               ; preds = %30
  br label %75

75:                                               ; preds = %74, %62, %46, %19
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @ACPI_FREE(i8* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %78, %79
  ret i32 %80
}

declare dso_local i8* @DtNormalizeBuffer(i8*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @DtError(i32, i32, i32*, i8*) #1

declare dso_local i32 @AcpiUtAsciiToHexByte(i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
