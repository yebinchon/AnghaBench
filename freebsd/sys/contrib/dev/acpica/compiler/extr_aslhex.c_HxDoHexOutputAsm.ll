; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslhex.c_HxDoHexOutputAsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslhex.c_HxDoHexOutputAsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX_TABLE_LINE_SIZE = common dso_local global i32 0, align 4
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@ASL_FILE_HEX_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"; Assembly code source output\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"; AML code block contains 0x%X bytes\0A;\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"  db  \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0%2.2Xh\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"  ; %8.8X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @HxDoHexOutputAsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HxDoHexOutputAsm() #0 {
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
  %16 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %68, %0
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %20
  %25 = call i64 @HxReadAmlOutputFile(i32* %10)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %80

29:                                               ; preds = %24
  %30 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %31 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %50, %29
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %10, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  %44 = load i64, i64* %3, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %48 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %32

53:                                               ; preds = %32
  %54 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %55 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i64, i64* %3, align 8
  %57 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %62 = load i32, i32* @HEX_TABLE_LINE_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %3, align 8
  %65 = sub i64 %63, %64
  %66 = mul i64 5, %65
  %67 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %60, %53
  %69 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %70 = load i64, i64* %4, align 8
  %71 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @LsDumpAsciiInComment(i32 %72, i64 %73, i32* %10)
  %75 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %76 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %4, align 8
  br label %20

80:                                               ; preds = %28, %20
  %81 = load i32, i32* @ASL_FILE_HEX_OUTPUT, align 4
  %82 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %83 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %83)
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
