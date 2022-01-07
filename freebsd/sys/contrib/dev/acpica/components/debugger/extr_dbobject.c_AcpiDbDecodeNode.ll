; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbobject.c_AcpiDbDecodeNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbobject.c_AcpiDbDecodeNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"<Node>            Name %4.4s\00", align 1
@ANOBJ_METHOD_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" [Method Arg]\00", align 1
@ANOBJ_METHOD_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c" [Method Local]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" Device\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" Thermal Zone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @AcpiDbDecodeNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDbDecodeNode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @AcpiUtGetNodeName(%struct.TYPE_5__* %3)
  %5 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ANOBJ_METHOD_ARG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ANOBJ_METHOD_LOCAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %31 [
    i32 129, label %27
    i32 128, label %29
  ]

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %35

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i32 @AcpiNsGetAttachedObject(%struct.TYPE_5__* %32)
  %34 = call i32 @AcpiDbDecodeInternalObject(i32 %33)
  br label %35

35:                                               ; preds = %31, %29, %27
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiUtGetNodeName(%struct.TYPE_5__*) #1

declare dso_local i32 @AcpiDbDecodeInternalObject(i32) #1

declare dso_local i32 @AcpiNsGetAttachedObject(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
