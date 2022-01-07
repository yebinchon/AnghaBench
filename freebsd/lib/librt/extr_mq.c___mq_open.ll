; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__mq = type { i32, i32* }
%struct.mq_attr = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.__mq* @__mq_open(i8* %0, i32 %1, i32 %2, %struct.mq_attr* %3) #0 {
  %5 = alloca %struct.__mq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mq_attr*, align 8
  %10 = alloca %struct.__mq*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mq_attr* %3, %struct.mq_attr** %9, align 8
  %12 = call %struct.__mq* @malloc(i32 16)
  store %struct.__mq* %12, %struct.__mq** %10, align 8
  %13 = load %struct.__mq*, %struct.__mq** %10, align 8
  %14 = icmp eq %struct.__mq* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.__mq* null, %struct.__mq** %5, align 8
  br label %37

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.mq_attr*, %struct.mq_attr** %9, align 8
  %21 = call i32 @__sys_kmq_open(i8* %17, i32 %18, i32 %19, %struct.mq_attr* %20)
  %22 = load %struct.__mq*, %struct.__mq** %10, align 8
  %23 = getelementptr inbounds %struct.__mq, %struct.__mq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.__mq*, %struct.__mq** %10, align 8
  %25 = getelementptr inbounds %struct.__mq, %struct.__mq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.__mq*, %struct.__mq** %10, align 8
  %30 = getelementptr inbounds %struct.__mq, %struct.__mq* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.__mq*, %struct.__mq** %10, align 8
  store %struct.__mq* %31, %struct.__mq** %5, align 8
  br label %37

32:                                               ; preds = %16
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.__mq*, %struct.__mq** %10, align 8
  %35 = call i32 @free(%struct.__mq* %34)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* @errno, align 4
  store %struct.__mq* inttoptr (i64 -1 to %struct.__mq*), %struct.__mq** %5, align 8
  br label %37

37:                                               ; preds = %32, %28, %15
  %38 = load %struct.__mq*, %struct.__mq** %5, align 8
  ret %struct.__mq* %38
}

declare dso_local %struct.__mq* @malloc(i32) #1

declare dso_local i32 @__sys_kmq_open(i8*, i32, i32, %struct.mq_attr*) #1

declare dso_local i32 @free(%struct.__mq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
