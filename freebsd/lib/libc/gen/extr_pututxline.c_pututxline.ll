; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_pututxline.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_pututxline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32 }
%struct.futx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.utmpx* @pututxline(%struct.utmpx* %0) #0 {
  %2 = alloca %struct.utmpx*, align 8
  %3 = alloca %struct.utmpx*, align 8
  %4 = alloca %struct.futx, align 4
  %5 = alloca i32, align 4
  store %struct.utmpx* %0, %struct.utmpx** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %7 = call i32 @utx_to_futx(%struct.utmpx* %6, %struct.futx* %4)
  %8 = getelementptr inbounds %struct.futx, %struct.futx* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %28 [
    i32 135, label %10
    i32 129, label %13
    i32 130, label %15
    i32 131, label %15
    i32 128, label %16
    i32 134, label %23
  ]

10:                                               ; preds = %1
  %11 = call i32 @utx_active_init(%struct.futx* %4)
  %12 = call i32 (...) @utx_lastlogin_upgrade()
  br label %30

13:                                               ; preds = %1
  %14 = call i32 (...) @utx_active_purge()
  br label %30

15:                                               ; preds = %1, %1
  br label %30

16:                                               ; preds = %1
  %17 = call i32 @utx_active_add(%struct.futx* %4)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = call i32 @utx_lastlogin_add(%struct.futx* %4)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %30

23:                                               ; preds = %1
  %24 = call i32 @utx_active_remove(%struct.futx* %4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %struct.utmpx* null, %struct.utmpx** %2, align 8
  br label %41

27:                                               ; preds = %23
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store %struct.utmpx* null, %struct.utmpx** %2, align 8
  br label %41

30:                                               ; preds = %27, %16, %15, %13, %10
  %31 = call i32 @utx_log_add(%struct.futx* %4)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %39

37:                                               ; preds = %30
  %38 = call %struct.utmpx* @futx_to_utx(%struct.futx* %4)
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi %struct.utmpx* [ null, %36 ], [ %38, %37 ]
  store %struct.utmpx* %40, %struct.utmpx** %2, align 8
  br label %41

41:                                               ; preds = %39, %28, %26
  %42 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  ret %struct.utmpx* %42
}

declare dso_local i32 @utx_to_futx(%struct.utmpx*, %struct.futx*) #1

declare dso_local i32 @utx_active_init(%struct.futx*) #1

declare dso_local i32 @utx_lastlogin_upgrade(...) #1

declare dso_local i32 @utx_active_purge(...) #1

declare dso_local i32 @utx_active_add(%struct.futx*) #1

declare dso_local i32 @utx_lastlogin_add(%struct.futx*) #1

declare dso_local i32 @utx_active_remove(%struct.futx*) #1

declare dso_local i32 @utx_log_add(%struct.futx*) #1

declare dso_local %struct.utmpx* @futx_to_utx(%struct.futx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
