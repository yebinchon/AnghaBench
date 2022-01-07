; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getutxent.c_getutxline.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getutxent.c_getutxline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32 }
%struct.futx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.utmpx* @getutxline(%struct.utmpx* %0) #0 {
  %2 = alloca %struct.utmpx*, align 8
  %3 = alloca %struct.utmpx*, align 8
  %4 = alloca %struct.futx, align 4
  store %struct.utmpx* %0, %struct.utmpx** %3, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = call i64 @getfutxent(%struct.futx* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store %struct.utmpx* null, %struct.utmpx** %2, align 8
  br label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.futx, %struct.futx* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %23 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct.futx, %struct.futx* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MIN(i32 4, i32 4)
  %19 = call i32 @strncmp(i32 %14, i32 %17, i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %9, %22
  br label %5

24:                                               ; preds = %21
  %25 = call %struct.utmpx* @futx_to_utx(%struct.futx* %4)
  store %struct.utmpx* %25, %struct.utmpx** %2, align 8
  br label %26

26:                                               ; preds = %24, %8
  %27 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  ret %struct.utmpx* %27
}

declare dso_local i64 @getfutxent(%struct.futx*) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.utmpx* @futx_to_utx(%struct.futx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
