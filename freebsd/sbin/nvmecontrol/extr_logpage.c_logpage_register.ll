; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_logpage.c_logpage_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_logpage.c_logpage_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logpage_function = type { i32 }

@logpages = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logpage_register(%struct.logpage_function* %0) #0 {
  %2 = alloca %struct.logpage_function*, align 8
  %3 = alloca %struct.logpage_function*, align 8
  %4 = alloca %struct.logpage_function*, align 8
  store %struct.logpage_function* %0, %struct.logpage_function** %2, align 8
  store %struct.logpage_function* null, %struct.logpage_function** %4, align 8
  %5 = call %struct.logpage_function* @SLIST_FIRST(i32* @logpages)
  store %struct.logpage_function* %5, %struct.logpage_function** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.logpage_function*, %struct.logpage_function** %3, align 8
  %8 = icmp ne %struct.logpage_function* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.logpage_function*, %struct.logpage_function** %3, align 8
  %11 = load %struct.logpage_function*, %struct.logpage_function** %2, align 8
  %12 = call i64 @logpage_compare(%struct.logpage_function* %10, %struct.logpage_function* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  %16 = load %struct.logpage_function*, %struct.logpage_function** %3, align 8
  store %struct.logpage_function* %16, %struct.logpage_function** %4, align 8
  %17 = load %struct.logpage_function*, %struct.logpage_function** %3, align 8
  %18 = load i32, i32* @link, align 4
  %19 = call %struct.logpage_function* @SLIST_NEXT(%struct.logpage_function* %17, i32 %18)
  store %struct.logpage_function* %19, %struct.logpage_function** %3, align 8
  br label %6

20:                                               ; preds = %14, %6
  %21 = load %struct.logpage_function*, %struct.logpage_function** %4, align 8
  %22 = icmp eq %struct.logpage_function* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.logpage_function*, %struct.logpage_function** %2, align 8
  %25 = load i32, i32* @link, align 4
  %26 = call i32 @SLIST_INSERT_HEAD(i32* @logpages, %struct.logpage_function* %24, i32 %25)
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.logpage_function*, %struct.logpage_function** %4, align 8
  %29 = load %struct.logpage_function*, %struct.logpage_function** %2, align 8
  %30 = load i32, i32* @link, align 4
  %31 = call i32 @SLIST_INSERT_AFTER(%struct.logpage_function* %28, %struct.logpage_function* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  ret void
}

declare dso_local %struct.logpage_function* @SLIST_FIRST(i32*) #1

declare dso_local i64 @logpage_compare(%struct.logpage_function*, %struct.logpage_function*) #1

declare dso_local %struct.logpage_function* @SLIST_NEXT(%struct.logpage_function*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.logpage_function*, i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct.logpage_function*, %struct.logpage_function*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
