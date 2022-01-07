; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtGetInterface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtGetInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

@AcpiGbl_SupportedInterfaces = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @AcpiUtGetInterface(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_SupportedInterfaces, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcmp(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %2, align 8
  br label %23

18:                                               ; preds = %9
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %4, align 8
  br label %6

22:                                               ; preds = %6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %24
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
