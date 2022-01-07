; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camq = type { i32, i32** }

@M_CAMQ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"camq_init: - cannot malloc array!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camq_init(%struct.camq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camq*, align 8
  %5 = alloca i32, align 4
  store %struct.camq* %0, %struct.camq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.camq*, %struct.camq** %4, align 8
  %7 = call i32 @bzero(%struct.camq* %6, i32 16)
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.camq*, %struct.camq** %4, align 8
  %10 = getelementptr inbounds %struct.camq, %struct.camq* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.camq*, %struct.camq** %4, align 8
  %12 = getelementptr inbounds %struct.camq, %struct.camq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @M_CAMQ, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = call i64 @malloc(i32 %19, i32 %20, i32 %21)
  %23 = inttoptr i64 %22 to i32**
  %24 = load %struct.camq*, %struct.camq** %4, align 8
  %25 = getelementptr inbounds %struct.camq, %struct.camq* %24, i32 0, i32 1
  store i32** %23, i32*** %25, align 8
  %26 = load %struct.camq*, %struct.camq** %4, align 8
  %27 = getelementptr inbounds %struct.camq, %struct.camq* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = icmp eq i32** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %38

32:                                               ; preds = %15
  %33 = load %struct.camq*, %struct.camq** %4, align 8
  %34 = getelementptr inbounds %struct.camq, %struct.camq* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i32 -1
  store i32** %36, i32*** %34, align 8
  br label %37

37:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @bzero(%struct.camq*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
