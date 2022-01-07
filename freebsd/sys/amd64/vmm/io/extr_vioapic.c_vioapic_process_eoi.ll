; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_process_eoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_process_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vioapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"vioapic_process_eoi: invalid vector %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ioapic processing eoi for vector %d\00", align 1
@REDIR_ENTRIES = common dso_local global i32 0, align 4
@IOART_REM_IRR = common dso_local global i32 0, align 4
@IOART_INTVEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ioapic pin%d: asserted at eoi, acnt %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vioapic_process_eoi(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vioapic*, align 8
  %8 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 256
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  %21 = load %struct.vm*, %struct.vm** %4, align 8
  %22 = call %struct.vioapic* @vm_ioapic(%struct.vm* %21)
  store %struct.vioapic* %22, %struct.vioapic** %7, align 8
  %23 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %27 = call i32 @VIOAPIC_LOCK(%struct.vioapic* %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %96, %14
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @REDIR_ENTRIES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %99

32:                                               ; preds = %28
  %33 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %34 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IOART_REM_IRR, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %96

45:                                               ; preds = %32
  %46 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %47 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IOART_INTVEC, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %96

59:                                               ; preds = %45
  %60 = load i32, i32* @IOART_REM_IRR, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %63 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %61
  store i32 %70, i32* %68, align 8
  %71 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %72 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %59
  %81 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %84 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @VIOAPIC_CTR2(%struct.vioapic* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %82, i64 %90)
  %92 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @vioapic_send_intr(%struct.vioapic* %92, i32 %93)
  br label %95

95:                                               ; preds = %80, %59
  br label %96

96:                                               ; preds = %95, %58, %44
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %28

99:                                               ; preds = %28
  %100 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %101 = call i32 @VIOAPIC_UNLOCK(%struct.vioapic* %100)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vioapic* @vm_ioapic(%struct.vm*) #1

declare dso_local i32 @VIOAPIC_CTR1(%struct.vioapic*, i8*, i32) #1

declare dso_local i32 @VIOAPIC_LOCK(%struct.vioapic*) #1

declare dso_local i32 @VIOAPIC_CTR2(%struct.vioapic*, i8*, i32, i64) #1

declare dso_local i32 @vioapic_send_intr(%struct.vioapic*, i32) #1

declare dso_local i32 @VIOAPIC_UNLOCK(%struct.vioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
