; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_vmspace_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_vmspace_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@PT_X86 = common dso_local global i64 0, align 8
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_PKU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_vmspace_copy(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PT_X86, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @cpu_stdext_feature2, align 4
  %22 = load i32, i32* @CPUID_STDEXT2_PKU, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %14, %2
  store i32 0, i32* %3, align 4
  br label %64

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %60, %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = icmp ult %struct.TYPE_9__* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = call i32 @PMAP_LOCK(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call i32 @PMAP_LOCK(%struct.TYPE_9__* %34)
  br label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = call i32 @PMAP_LOCK(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @PMAP_LOCK(%struct.TYPE_9__* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = call i32 @pmap_pkru_copy(%struct.TYPE_9__* %42, %struct.TYPE_9__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i32 @pmap_pkru_deassign_all(%struct.TYPE_9__* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = call i32 @PMAP_UNLOCK(%struct.TYPE_9__* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = call i32 @PMAP_UNLOCK(%struct.TYPE_9__* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %62

60:                                               ; preds = %51
  %61 = call i32 @vm_wait(i32* null)
  br label %27

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @pmap_pkru_copy(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @pmap_pkru_deassign_all(%struct.TYPE_9__*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
