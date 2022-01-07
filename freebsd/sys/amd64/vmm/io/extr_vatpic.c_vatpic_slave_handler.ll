; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_slave_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_slave_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vatpic = type { %struct.atpic* }
%struct.atpic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vatpic_slave_handler(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vatpic*, align 8
  %15 = alloca %struct.atpic*, align 8
  store %struct.vm* %0, %struct.vm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.vm*, %struct.vm** %8, align 8
  %17 = call %struct.vatpic* @vm_atpic(%struct.vm* %16)
  store %struct.vatpic* %17, %struct.vatpic** %14, align 8
  %18 = load %struct.vatpic*, %struct.vatpic** %14, align 8
  %19 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %18, i32 0, i32 0
  %20 = load %struct.atpic*, %struct.atpic** %19, align 8
  %21 = getelementptr inbounds %struct.atpic, %struct.atpic* %20, i64 1
  store %struct.atpic* %21, %struct.atpic** %15, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %44

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.vatpic*, %struct.vatpic** %14, align 8
  %30 = load %struct.atpic*, %struct.atpic** %15, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @vatpic_read(%struct.vatpic* %29, %struct.atpic* %30, i32 %31, i32 %32, i32 %33, i32* %34)
  store i32 %35, i32* %7, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load %struct.vatpic*, %struct.vatpic** %14, align 8
  %38 = load %struct.atpic*, %struct.atpic** %15, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @vatpic_write(%struct.vatpic* %37, %struct.atpic* %38, i32 %39, i32 %40, i32 %41, i32* %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %28, %24
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.vatpic* @vm_atpic(%struct.vm*) #1

declare dso_local i32 @vatpic_read(%struct.vatpic*, %struct.atpic*, i32, i32, i32, i32*) #1

declare dso_local i32 @vatpic_write(%struct.vatpic*, %struct.atpic*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
