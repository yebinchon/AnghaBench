; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_device_delete_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_device_delete_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Error deleting child!\0A\00", align 1
@dev_link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_delete_child(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @device_detach(%struct.TYPE_10__* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %27, %12
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_10__* @TAILQ_FIRST(i32* %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %6, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = call i32 @device_delete_child(%struct.TYPE_10__* %19, %struct.TYPE_10__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @device_printf(%struct.TYPE_10__* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %46

27:                                               ; preds = %18
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = call i32 @devclass_delete_device(i32 %31, %struct.TYPE_10__* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = load i32, i32* @dev_link, align 4
  %41 = call i32 @TAILQ_REMOVE(i32* %38, %struct.TYPE_10__* %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %28
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(%struct.TYPE_10__* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %24, %11
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @device_detach(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @device_printf(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @devclass_delete_device(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
