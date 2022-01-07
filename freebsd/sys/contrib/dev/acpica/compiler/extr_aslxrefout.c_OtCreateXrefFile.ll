; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslxrefout.c_OtCreateXrefFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslxrefout.c_OtCreateXrefFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@AslGbl_CrossReferenceOutput = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Part 2: Method Reference Map (Invocations of each user-defined control method)\00", align 1
@AslGbl_ParseTreeRoot = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_DOWNWARD = common dso_local global i32 0, align 4
@OtXrefWalkPart2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Part 3: Full Object Reference Map (Methods that reference each object in namespace\00", align 1
@OtXrefWalkPart3 = common dso_local global i32 0, align 4
@ASL_FILE_XREF_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"\0A\0AObject Summary\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\0ATotal methods:                   %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Total predefined methods:        %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\0ATotal user methods:              %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Total unreferenced user methods  %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\0ATotal defined objects:           %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Total unreferenced objects:      %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OtCreateXrefFile() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i32, i32* @AslGbl_CrossReferenceOutput, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %46

5:                                                ; preds = %0
  %6 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 40)
  %7 = call i32 @OtPrintHeaders(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @AslGbl_ParseTreeRoot, align 4
  %9 = load i32, i32* @ASL_WALK_VISIT_DOWNWARD, align 4
  %10 = load i32, i32* @OtXrefWalkPart2, align 4
  %11 = call i32 @TrWalkParseTree(i32 %8, i32 %9, i32 %10, i32* null, %struct.TYPE_4__* %1)
  %12 = call i32 @OtPrintHeaders(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @AslGbl_ParseTreeRoot, align 4
  %14 = load i32, i32* @ASL_WALK_VISIT_DOWNWARD, align 4
  %15 = load i32, i32* @OtXrefWalkPart3, align 4
  %16 = call i32 @TrWalkParseTree(i32 %13, i32 %14, i32 %15, i32* null, %struct.TYPE_4__* %1)
  %17 = load i32, i32* @ASL_FILE_XREF_OUTPUT, align 4
  %18 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @ASL_FILE_XREF_OUTPUT, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %21, %23
  %25 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @ASL_FILE_XREF_OUTPUT, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @ASL_FILE_XREF_OUTPUT, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @ASL_FILE_XREF_OUTPUT, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @ASL_FILE_XREF_OUTPUT, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @ASL_FILE_XREF_OUTPUT, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @OtPrintHeaders(i8*) #1

declare dso_local i32 @TrWalkParseTree(i32, i32, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
