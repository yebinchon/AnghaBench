; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_irq_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_ent = type { i32, i32, i32 (i32, i32)* }

@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_irq_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.irq_ent*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @curthread, align 4
  %5 = call i32 @linux_set_current(i32 %4)
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.irq_ent*
  store %struct.irq_ent* %7, %struct.irq_ent** %3, align 8
  %8 = load %struct.irq_ent*, %struct.irq_ent** %3, align 8
  %9 = getelementptr inbounds %struct.irq_ent, %struct.irq_ent* %8, i32 0, i32 2
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load %struct.irq_ent*, %struct.irq_ent** %3, align 8
  %12 = getelementptr inbounds %struct.irq_ent, %struct.irq_ent* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.irq_ent*, %struct.irq_ent** %3, align 8
  %15 = getelementptr inbounds %struct.irq_ent, %struct.irq_ent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %10(i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @linux_set_current(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
