; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_alloc_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_ib_cm_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.ib_cm_device* }
%struct.ib_cm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cm_id_private* (%struct.ib_cm_device*, i8*)* @ib_cm_alloc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cm_id_private* @ib_cm_alloc_id(%struct.ib_cm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.cm_id_private*, align 8
  %4 = alloca %struct.ib_cm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cm_id_private*, align 8
  store %struct.ib_cm_device* %0, %struct.ib_cm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.cm_id_private* @malloc(i32 24)
  store %struct.cm_id_private* %7, %struct.cm_id_private** %6, align 8
  %8 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %9 = icmp ne %struct.cm_id_private* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.cm_id_private* null, %struct.cm_id_private** %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %13 = call i32 @memset(%struct.cm_id_private* %12, i32 0, i32 24)
  %14 = load %struct.ib_cm_device*, %struct.ib_cm_device** %4, align 8
  %15 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %16 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.ib_cm_device* %14, %struct.ib_cm_device** %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %20 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %23 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %22, i32 0, i32 1
  %24 = call i32 @pthread_mutex_init(i32* %23, i32* null)
  %25 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %26 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %25, i32 0, i32 0
  %27 = call i64 @pthread_cond_init(i32* %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  br label %32

30:                                               ; preds = %11
  %31 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  store %struct.cm_id_private* %31, %struct.cm_id_private** %3, align 8
  br label %35

32:                                               ; preds = %29
  %33 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %34 = call i32 @ib_cm_free_id(%struct.cm_id_private* %33)
  store %struct.cm_id_private* null, %struct.cm_id_private** %3, align 8
  br label %35

35:                                               ; preds = %32, %30, %10
  %36 = load %struct.cm_id_private*, %struct.cm_id_private** %3, align 8
  ret %struct.cm_id_private* %36
}

declare dso_local %struct.cm_id_private* @malloc(i32) #1

declare dso_local i32 @memset(%struct.cm_id_private*, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @ib_cm_free_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
