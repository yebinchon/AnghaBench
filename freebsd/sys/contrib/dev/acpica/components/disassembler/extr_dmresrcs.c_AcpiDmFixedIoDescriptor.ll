; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmresrcs.c_AcpiDmFixedIoDescriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmresrcs.c_AcpiDmFixedIoDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"FixedIO (\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmFixedIoDescriptor(i32* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @AcpiDmIndent(i64 %9)
  %11 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %8, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @AcpiDmIndent(i64 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AcpiDmDumpInteger16(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @AcpiDmIndent(i64 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AcpiDmDumpInteger8(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @AcpiDmIndent(i64 %29)
  %31 = call i32 (...) @AcpiDmDescriptorName()
  %32 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @AcpiDmIndent(i64) #1

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @AcpiDmDumpInteger16(i32, i8*) #1

declare dso_local i32 @AcpiDmDumpInteger8(i32, i8*) #1

declare dso_local i32 @AcpiDmDescriptorName(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
