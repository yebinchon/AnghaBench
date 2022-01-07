; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslhex.c_HxDoHexOutputC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslhex.c_HxDoHexOutputC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@HEX_TABLE_LINE_SIZE = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_HEX_OUTPUT = common dso_local global i64 0, align 8
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c" * C source code output\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" * AML code block contains 0x%X bytes\0A *\0A */\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"#ifndef __%s_HEX__\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"#define __%s_HEX__\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unsigned char %s_aml_code[] =\0A{\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%2.2X\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"  /* %8.8X\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%*s*/\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @HxDoHexOutputC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HxDoHexOutputC() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %13 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @FlGetFileBasename(i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %19 = call i64 @FlGetFileSize(i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %21 = call i32 @FlSeekFile(i32 %20, i32 0)
  %22 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %23 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @AcpiUtStrlwr(i8* %33)
  %35 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %89, %0
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = call i64 @HxReadAmlOutputFile(i32* %11)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %106

47:                                               ; preds = %42
  %48 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %49 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %73, %47
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %3, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %11, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %60, %61
  %63 = add i64 %62, 1
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %68 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %72

69:                                               ; preds = %54
  %70 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %71 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %50

76:                                               ; preds = %50
  %77 = load i64, i64* %3, align 8
  %78 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %83 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %3, align 8
  %86 = sub i64 %84, %85
  %87 = mul i64 5, %86
  %88 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @LsDumpAsciiInComment(i64 %93, i64 %94, i32* %11)
  %96 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %97 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %3, align 8
  %100 = sub i64 %98, %99
  %101 = add i64 %100, 1
  %102 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* %4, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %4, align 8
  br label %38

106:                                              ; preds = %46, %38
  %107 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %108 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %109 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %110 = call i32 (i64, i8*, ...) @FlPrintFile(i64 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %111 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %111)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @FlGetFileBasename(i32) #2

declare dso_local i64 @FlGetFileSize(i32) #2

declare dso_local i32 @FlSeekFile(i32, i32) #2

declare dso_local i32 @FlPrintFile(i64, i8*, ...) #2

declare dso_local i32 @AcpiUtStrlwr(i8*) #2

declare dso_local i64 @HxReadAmlOutputFile(i32*) #2

declare dso_local i32 @LsDumpAsciiInComment(i64, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
