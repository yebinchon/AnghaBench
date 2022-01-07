; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_prefix.c_ficlCompilePrefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_prefix.c_ficlCompilePrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }

@list_name = common dso_local global i8* null, align 8
@constantParen = common dso_local global i32 0, align 4
@FW_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"__tempbase\00", align 1
@fTempBase = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@prefixHex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"0d\00", align 1
@prefixTen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ficlCompilePrefix(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %3, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = call %struct.TYPE_15__* @dictCreateWordlist(%struct.TYPE_16__* %12, i32 1)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %4, align 8
  %14 = load i8*, i8** @list_name, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = load i8*, i8** @list_name, align 8
  %19 = load i32, i32* @constantParen, align 4
  %20 = load i32, i32* @FW_DEFAULT, align 4
  %21 = call i32 @dictAppendWord(%struct.TYPE_16__* %17, i8* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = call i32 @LVALUEtoCELL(%struct.TYPE_15__* %23)
  %25 = call i32 @dictAppendCell(%struct.TYPE_16__* %22, i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = load i32, i32* @fTempBase, align 4
  %28 = load i32, i32* @FW_DEFAULT, align 4
  %29 = call i32 @dictAppendWord(%struct.TYPE_16__* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = load i32, i32* @prefixHex, align 4
  %35 = load i32, i32* @FW_DEFAULT, align 4
  %36 = call i32 @dictAppendWord(%struct.TYPE_16__* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = load i32, i32* @prefixTen, align 4
  %39 = load i32, i32* @FW_DEFAULT, align 4
  %40 = call i32 @dictAppendWord(%struct.TYPE_16__* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %43, align 8
  ret void
}

declare dso_local %struct.TYPE_15__* @dictCreateWordlist(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @dictAppendWord(%struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @dictAppendCell(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @LVALUEtoCELL(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
