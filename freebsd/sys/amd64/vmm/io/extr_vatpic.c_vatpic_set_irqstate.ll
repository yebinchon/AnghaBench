; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_set_irqstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_set_irqstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vatpic = type { %struct.atpic* }
%struct.atpic = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vatpic_set_irqstate: invalid irqstate %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32)* @vatpic_set_irqstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vatpic_set_irqstate(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vatpic*, align 8
  %9 = alloca %struct.atpic*, align 8
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 15
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %12
  %18 = load %struct.vm*, %struct.vm** %5, align 8
  %19 = call %struct.vatpic* @vm_atpic(%struct.vm* %18)
  store %struct.vatpic* %19, %struct.vatpic** %8, align 8
  %20 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %21 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %20, i32 0, i32 0
  %22 = load %struct.atpic*, %struct.atpic** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.atpic, %struct.atpic* %22, i64 %25
  store %struct.atpic* %26, %struct.atpic** %9, align 8
  %27 = load %struct.atpic*, %struct.atpic** %9, align 8
  %28 = getelementptr inbounds %struct.atpic, %struct.atpic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %57

32:                                               ; preds = %17
  %33 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %34 = call i32 @VATPIC_LOCK(%struct.vatpic* %33)
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %51 [
    i32 130, label %36
    i32 129, label %40
    i32 128, label %44
  ]

36:                                               ; preds = %32
  %37 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @vatpic_set_pinstate(%struct.vatpic* %37, i32 %38, i32 1)
  br label %54

40:                                               ; preds = %32
  %41 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @vatpic_set_pinstate(%struct.vatpic* %41, i32 %42, i32 0)
  br label %54

44:                                               ; preds = %32
  %45 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @vatpic_set_pinstate(%struct.vatpic* %45, i32 %46, i32 1)
  %48 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @vatpic_set_pinstate(%struct.vatpic* %48, i32 %49, i32 0)
  br label %54

51:                                               ; preds = %32
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %44, %40, %36
  %55 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %56 = call i32 @VATPIC_UNLOCK(%struct.vatpic* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %31, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.vatpic* @vm_atpic(%struct.vm*) #1

declare dso_local i32 @VATPIC_LOCK(%struct.vatpic*) #1

declare dso_local i32 @vatpic_set_pinstate(%struct.vatpic*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @VATPIC_UNLOCK(%struct.vatpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
