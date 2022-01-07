; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmUnresolvedWarning.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmUnresolvedWarning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.AcpiDmUnresolvedWarning.Pad = private unnamed_addr constant [7 x i8] c"     *\00", align 1
@AcpiGbl_NumExternalMethods = common dso_local global i32 0, align 4
@AcpiGbl_ResolvedExternalMethods = common dso_local global i32 0, align 4
@ExternalWarningPart1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [462 x i8] c"%s iASL Warning: There %s %u external control method%s found during\0A%s disassembly, but only %u %s resolved (%u unresolved). Additional\0A%s ACPI tables may be required to properly disassemble the code. This\0A%s resulting disassembler output file may not compile because the\0A%s disassembler did not know how many arguments to assign to the\0A%s unresolved methods. Note: SSDTs can be dynamically loaded at\0A%s runtime and may or may not be available via the host OS.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"were\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"was\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ExternalWarningPart2 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [305 x i8] c"%s To specify the tables needed to resolve external control method\0A%s references, the -e option can be used to specify the filenames.\0A%s Example iASL invocations:\0A%s     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml\0A%s     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml\0A%s     iasl -e ssdt*.aml -d dsdt.aml\0A\00", align 1
@ExternalWarningPart3 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [320 x i8] c"%s In addition, the -fe option can be used to specify a file containing\0A%s control method external declarations with the associated method\0A%s argument counts. Each line of the file must be of the form:\0A%s     External (<method pathname>, MethodObj, <argument count>)\0A%s Invocation:\0A%s     iasl -fe refs.txt -d dsdt.aml\0A\00", align 1
@ExternalWarningPart4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [162 x i8] c"%s The following methods were unresolved and many not compile properly\0A%s because the disassembler had to guess at the number of arguments\0A%s required for each:\0A\00", align 1
@AcpiGbl_ExternalFileList = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"    /*\0A%s     *\0A%s     *\0A%s     *\0A%s     */\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"    /*\0A%s     *\0A%s     *\0A%s     */\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"\0A%s\0A%s\0A%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\0A%s\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmUnresolvedWarning(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [7 x i8], align 1
  %5 = alloca [1 x i8], align 1
  store i64 %0, i64* %2, align 8
  %6 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.AcpiDmUnresolvedWarning.Pad, i32 0, i32 0), i64 7, i1 false)
  %7 = bitcast [1 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 1, i1 false)
  %8 = load i32, i32* @AcpiGbl_NumExternalMethods, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %108

11:                                               ; preds = %1
  %12 = load i32, i32* @AcpiGbl_NumExternalMethods, align 4
  %13 = load i32, i32* @AcpiGbl_ResolvedExternalMethods, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %108

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  br label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i8* [ %20, %19 ], [ %22, %21 ]
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** @ExternalWarningPart1, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @AcpiGbl_NumExternalMethods, align 4
  %28 = icmp ne i32 %27, 1
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* @AcpiGbl_NumExternalMethods, align 4
  %32 = load i32, i32* @AcpiGbl_NumExternalMethods, align 4
  %33 = icmp ne i32 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @AcpiGbl_ResolvedExternalMethods, align 4
  %38 = load i32, i32* @AcpiGbl_ResolvedExternalMethods, align 4
  %39 = icmp ne i32 %38, 1
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* @AcpiGbl_NumExternalMethods, align 4
  %43 = load i32, i32* @AcpiGbl_ResolvedExternalMethods, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([462 x i8], [462 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %30, i32 %31, i8* %35, i8* %36, i32 %37, i8* %41, i32 %44, i8* %45, i8* %46, i8* %47, i8* %48, i8* %49)
  %51 = load i8*, i8** @ExternalWarningPart2, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.5, i64 0, i64 0), i8* %52, i8* %53, i8* %54, i8* %55, i8* %56, i8* %57)
  %59 = load i8*, i8** @ExternalWarningPart3, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([320 x i8], [320 x i8]* @.str.6, i64 0, i64 0), i8* %60, i8* %61, i8* %62, i8* %63, i8* %64, i8* %65)
  %67 = load i32, i32* @ExternalWarningPart4, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load i8*, i8** %3, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.7, i64 0, i64 0), i8* %70, i8* %71, i8* %72)
  %74 = load i64, i64* %2, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %23
  %77 = load i32, i32* @AcpiGbl_ExternalFileList, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** @ExternalWarningPart1, align 8
  %81 = load i8*, i8** @ExternalWarningPart2, align 8
  %82 = load i8*, i8** @ExternalWarningPart3, align 8
  %83 = load i32, i32* @ExternalWarningPart4, align 4
  %84 = call i32 (i8*, i8*, i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %80, i8* %81, i8* %82, i32 %83)
  br label %92

85:                                               ; preds = %76
  %86 = load i8*, i8** @ExternalWarningPart1, align 8
  %87 = load i8*, i8** @ExternalWarningPart3, align 8
  %88 = load i32, i32* @ExternalWarningPart4, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 (i8*, i8*, i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %86, i8* %87, i8* %90)
  br label %92

92:                                               ; preds = %85, %79
  br label %108

93:                                               ; preds = %23
  %94 = load i32, i32* @AcpiGbl_ExternalFileList, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** @ExternalWarningPart1, align 8
  %99 = load i8*, i8** @ExternalWarningPart2, align 8
  %100 = load i8*, i8** @ExternalWarningPart3, align 8
  %101 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %98, i8* %99, i8* %100)
  br label %107

102:                                              ; preds = %93
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** @ExternalWarningPart1, align 8
  %105 = load i8*, i8** @ExternalWarningPart3, align 8
  %106 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %104, i8* %105)
  br label %107

107:                                              ; preds = %102, %96
  br label %108

108:                                              ; preds = %10, %15, %107, %92
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @AcpiOsPrintf(i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
