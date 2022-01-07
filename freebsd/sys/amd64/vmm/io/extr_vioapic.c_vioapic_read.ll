; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REDIR_ENTRIES = common dso_local global i32 0, align 4
@MAXREDIRSHIFT = common dso_local global i32 0, align 4
@IOAPIC_REDTBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vioapic*, i32, i32)* @vioapic_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vioapic_read(%struct.vioapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vioapic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vioapic* %0, %struct.vioapic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %28 [
    i32 129, label %14
    i32 128, label %18
    i32 130, label %24
  ]

14:                                               ; preds = %3
  %15 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %16 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load i32, i32* @REDIR_ENTRIES, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @MAXREDIRSHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %22, 17
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %26 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IOAPIC_REDTBL, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IOAPIC_REDTBL, align 4
  %36 = load i32, i32* @REDIR_ENTRIES, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %35, %37
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @IOAPIC_REDTBL, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IOAPIC_REDTBL, align 4
  %47 = sub nsw i32 %45, %46
  %48 = srem i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 32, i32* %10, align 4
  br label %52

51:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %54 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %33, %29
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %52, %24, %18, %14
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
