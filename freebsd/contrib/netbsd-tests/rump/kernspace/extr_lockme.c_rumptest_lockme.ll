; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_lockme.c_rumptest_lockme.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_lockme.c_rumptest_lockme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.somemem = type { i32 }

@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@IPL_NONE = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rumptest_lockme(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.somemem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @rw_init(i32* %5)
  %7 = load i32, i32* @MUTEX_DEFAULT, align 4
  %8 = load i32, i32* @IPL_NONE, align 4
  %9 = call i32 @mutex_init(i32* %4, i32 %7, i32 %8)
  %10 = load i32, i32* %2, align 4
  switch i32 %10, label %49 [
    i32 131, label %11
    i32 130, label %14
    i32 129, label %19
    i32 128, label %24
    i32 133, label %29
    i32 134, label %33
    i32 135, label %36
    i32 132, label %39
  ]

11:                                               ; preds = %1
  %12 = call i32 @mutex_enter(i32* %4)
  %13 = call i32 @mutex_enter(i32* %4)
  br label %49

14:                                               ; preds = %1
  %15 = load i32, i32* @RW_WRITER, align 4
  %16 = call i32 @rw_enter(i32* %5, i32 %15)
  %17 = load i32, i32* @RW_WRITER, align 4
  %18 = call i32 @rw_enter(i32* %5, i32 %17)
  br label %49

19:                                               ; preds = %1
  %20 = load i32, i32* @RW_READER, align 4
  %21 = call i32 @rw_enter(i32* %5, i32 %20)
  %22 = load i32, i32* @RW_WRITER, align 4
  %23 = call i32 @rw_enter(i32* %5, i32 %22)
  br label %49

24:                                               ; preds = %1
  %25 = load i32, i32* @RW_WRITER, align 4
  %26 = call i32 @rw_enter(i32* %5, i32 %25)
  %27 = load i32, i32* @RW_READER, align 4
  %28 = call i32 @rw_enter(i32* %5, i32 %27)
  br label %49

29:                                               ; preds = %1
  %30 = load i32, i32* @MUTEX_DEFAULT, align 4
  %31 = load i32, i32* @IPL_NONE, align 4
  %32 = call i32 @mutex_init(i32* %4, i32 %30, i32 %31)
  br label %49

33:                                               ; preds = %1
  %34 = call i32 @mutex_destroy(i32* %4)
  %35 = call i32 @mutex_destroy(i32* %4)
  br label %49

36:                                               ; preds = %1
  %37 = call i32 @mutex_enter(i32* %4)
  %38 = call i32 @mutex_destroy(i32* %4)
  br label %49

39:                                               ; preds = %1
  %40 = load i32, i32* @KM_SLEEP, align 4
  %41 = call %struct.somemem* @kmem_alloc(i32 4, i32 %40)
  store %struct.somemem* %41, %struct.somemem** %3, align 8
  %42 = load %struct.somemem*, %struct.somemem** %3, align 8
  %43 = getelementptr inbounds %struct.somemem, %struct.somemem* %42, i32 0, i32 0
  %44 = load i32, i32* @MUTEX_DEFAULT, align 4
  %45 = load i32, i32* @IPL_NONE, align 4
  %46 = call i32 @mutex_init(i32* %43, i32 %44, i32 %45)
  %47 = load %struct.somemem*, %struct.somemem** %3, align 8
  %48 = call i32 @kmem_free(%struct.somemem* %47, i32 4)
  br label %49

49:                                               ; preds = %1, %39, %36, %33, %29, %24, %19, %14, %11
  ret void
}

declare dso_local i32 @rw_init(i32*) #1

declare dso_local i32 @mutex_init(i32*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local %struct.somemem* @kmem_alloc(i32, i32) #1

declare dso_local i32 @kmem_free(%struct.somemem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
