; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_send_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_send_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REDIR_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vioapic_set_pinstate: invalid pin number %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"vioapic_set_pinstate: vioapic is not locked\00", align 1
@IOART_INTMASK = common dso_local global i32 0, align 4
@IOART_INTMSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"ioapic pin%d: masked\00", align 1
@IOART_DESTMOD = common dso_local global i32 0, align 4
@IOART_DESTPHY = common dso_local global i32 0, align 4
@IOART_DELMOD = common dso_local global i32 0, align 4
@IOART_TRGRLVL = common dso_local global i32 0, align 4
@IOART_REM_IRR = common dso_local global i32 0, align 4
@IOART_INTVEC = common dso_local global i32 0, align 4
@APIC_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vioapic*, i32)* @vioapic_send_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vioapic_send_intr(%struct.vioapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vioapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vioapic* %0, %struct.vioapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @REDIR_ENTRIES, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %26 = call i32 @VIOAPIC_LOCKED(%struct.vioapic* %25)
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %29 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %37 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IOART_INTMASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @IOART_INTMSET, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %18
  %51 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %99

54:                                               ; preds = %18
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IOART_DESTMOD, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @IOART_DESTPHY, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IOART_DELMOD, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @IOART_TRGRLVL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %54
  %73 = load i32, i32* @IOART_REM_IRR, align 4
  %74 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %75 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %73
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %72, %54
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @IOART_INTVEC, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @APIC_ID_SHIFT, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %91 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @vlapic_deliver_intr(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %83, %50
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VIOAPIC_LOCKED(%struct.vioapic*) #1

declare dso_local i32 @VIOAPIC_CTR1(%struct.vioapic*, i8*, i32) #1

declare dso_local i32 @vlapic_deliver_intr(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
