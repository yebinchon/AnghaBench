; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/amd64/extr_libpthread_md.c_pt_reg_sstep.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/arch/amd64/extr_libpthread_md.c_pt_reg_sstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_reg_sstep(%struct.reg* %0, i32 %1) #0 {
  %3 = alloca %struct.reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.reg* %0, %struct.reg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.reg*, %struct.reg** %3, align 8
  %7 = getelementptr inbounds %struct.reg, %struct.reg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.reg*, %struct.reg** %3, align 8
  %13 = getelementptr inbounds %struct.reg, %struct.reg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, 256
  store i32 %15, i32* %13, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.reg*, %struct.reg** %3, align 8
  %18 = getelementptr inbounds %struct.reg, %struct.reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -257
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.reg*, %struct.reg** %3, align 8
  %24 = getelementptr inbounds %struct.reg, %struct.reg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
