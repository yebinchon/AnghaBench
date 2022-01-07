; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c_verbs_init_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c_verbs_init_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32, i32, i64, i64, i8*, %struct.ibv_comp_channel*, %struct.ibv_context* }
%struct.ibv_context = type { i32 }
%struct.ibv_comp_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verbs_init_cq(%struct.ibv_cq* %0, %struct.ibv_context* %1, %struct.ibv_comp_channel* %2, i8* %3) #0 {
  %5 = alloca %struct.ibv_cq*, align 8
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_comp_channel*, align 8
  %8 = alloca i8*, align 8
  store %struct.ibv_cq* %0, %struct.ibv_cq** %5, align 8
  store %struct.ibv_context* %1, %struct.ibv_context** %6, align 8
  store %struct.ibv_comp_channel* %2, %struct.ibv_comp_channel** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %10 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %11 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %10, i32 0, i32 6
  store %struct.ibv_context* %9, %struct.ibv_context** %11, align 8
  %12 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %7, align 8
  %13 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %14 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %13, i32 0, i32 5
  store %struct.ibv_comp_channel* %12, %struct.ibv_comp_channel** %14, align 8
  %15 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %16 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %15, i32 0, i32 5
  %17 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %16, align 8
  %18 = icmp ne %struct.ibv_comp_channel* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %21 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_lock(i32* %21)
  %23 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %24 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %23, i32 0, i32 5
  %25 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %24, align 8
  %26 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %30 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %19, %4
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %35 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %37 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %39 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %41 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %40, i32 0, i32 1
  %42 = call i32 @pthread_mutex_init(i32* %41, i32* null)
  %43 = load %struct.ibv_cq*, %struct.ibv_cq** %5, align 8
  %44 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %43, i32 0, i32 0
  %45 = call i32 @pthread_cond_init(i32* %44, i32* null)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
