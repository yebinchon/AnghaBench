; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslhex.c_HxDoHexOutputAsl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslhex.c_HxDoHexOutputAsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX_TABLE_LINE_SIZE = common dso_local global i32 0, align 4
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@ASL_FILE_HEX_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c" * ASL source code output\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" * AML code block contains 0x%X bytes\0A *\0A */\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"    Name (BUF1, Buffer()\0A    {\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0x%2.2X\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"  /* %8.8X\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%*s*/\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"    })\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @HxDoHexOutputAsl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HxDoHexOutputAsl() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %11 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %12 = call i64 @FlGetFileSize(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %14 = call i32 @FlSeekFile(i32 %13, i32 0)
  %15 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %16 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %21 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %73, %0
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %90

26:                                               ; preds = %22
  %27 = call i64 @HxReadAmlOutputFile(i32* %10)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %90

31:                                               ; preds = %26
  %32 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %33 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %57, %31
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %10, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %44, %45
  %47 = add i64 %46, 1
  %48 = load i64, i64* %5, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %52 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %56

53:                                               ; preds = %38
  %54 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %55 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %34

60:                                               ; preds = %34
  %61 = load i64, i64* %3, align 8
  %62 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %67 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %3, align 8
  %70 = sub i64 %68, %69
  %71 = mul i64 5, %70
  %72 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %75 = load i64, i64* %4, align 8
  %76 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @LsDumpAsciiInComment(i32 %77, i64 %78, i32* %10)
  %80 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %81 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %3, align 8
  %84 = sub i64 %82, %83
  %85 = add i64 %84, 1
  %86 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* %4, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %4, align 8
  br label %22

90:                                               ; preds = %30, %22
  %91 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %92 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %93 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FlGetFileSize(i32) #2

declare dso_local i32 @FlSeekFile(i32, i32) #2

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #2

declare dso_local i64 @HxReadAmlOutputFile(i32*) #2

declare dso_local i32 @LsDumpAsciiInComment(i32, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
