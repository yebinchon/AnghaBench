; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnGenerateAmlOperands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnGenerateAmlOperands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }

@AML_RAW_DATA_BYTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OpnGenerateAmlOperands(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AML_RAW_DATA_BYTE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %46 [
    i32 139, label %15
    i32 135, label %18
    i32 133, label %21
    i32 138, label %24
    i32 137, label %27
    i32 141, label %30
    i32 140, label %33
    i32 136, label %36
    i32 130, label %39
    i32 129, label %42
    i32 132, label %45
    i32 131, label %45
    i32 134, label %45
    i32 128, label %45
  ]

15:                                               ; preds = %10
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = call i32 @OpnDoDefinitionBlock(%struct.TYPE_16__* %16)
  br label %47

18:                                               ; preds = %10
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = call i32 @OpnDoMethod(%struct.TYPE_16__* %19)
  br label %47

21:                                               ; preds = %10
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = call i32 @OpnDoMutex(%struct.TYPE_16__* %22)
  br label %47

24:                                               ; preds = %10
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = call i32 @OpnDoField(%struct.TYPE_16__* %25)
  br label %47

27:                                               ; preds = %10
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = call i32 @OpnDoIndexField(%struct.TYPE_16__* %28)
  br label %47

30:                                               ; preds = %10
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = call i32 @OpnDoBankField(%struct.TYPE_16__* %31)
  br label %47

33:                                               ; preds = %10
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = call i32 @OpnDoBuffer(%struct.TYPE_16__* %34)
  br label %47

36:                                               ; preds = %10
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = call i32 @OpnDoLoadTable(%struct.TYPE_16__* %37)
  br label %47

39:                                               ; preds = %10
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = call i32 @OpnDoRegion(%struct.TYPE_16__* %40)
  br label %47

42:                                               ; preds = %10
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = call i32 @RsDoResourceTemplate(%struct.TYPE_16__* %43)
  br label %47

45:                                               ; preds = %10, %10, %10, %10
  br label %46

46:                                               ; preds = %10, %45
  br label %47

47:                                               ; preds = %46, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = call i32 @OpnAttachNameToNode(%struct.TYPE_16__* %48)
  br label %50

50:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @OpnDoDefinitionBlock(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoMethod(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoMutex(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoField(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoIndexField(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoBankField(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoBuffer(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoLoadTable(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnDoRegion(%struct.TYPE_16__*) #1

declare dso_local i32 @RsDoResourceTemplate(%struct.TYPE_16__*) #1

declare dso_local i32 @OpnAttachNameToNode(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
