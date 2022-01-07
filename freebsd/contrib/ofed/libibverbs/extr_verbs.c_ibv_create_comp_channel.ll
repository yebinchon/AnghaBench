; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_create_comp_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_create_comp_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_comp_channel = type { i64, i32, %struct.ibv_context* }
%struct.ibv_context = type { i32 }
%struct.ibv_create_comp_channel = type { i32 }
%struct.ibv_create_comp_channel_resp = type { i32 }

@abi_ver = common dso_local global i32 0, align 4
@CREATE_COMP_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_comp_channel* @ibv_create_comp_channel(%struct.ibv_context* %0) #0 {
  %2 = alloca %struct.ibv_comp_channel*, align 8
  %3 = alloca %struct.ibv_context*, align 8
  %4 = alloca %struct.ibv_comp_channel*, align 8
  %5 = alloca %struct.ibv_create_comp_channel, align 4
  %6 = alloca %struct.ibv_create_comp_channel_resp, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %3, align 8
  %7 = load i32, i32* @abi_ver, align 4
  %8 = icmp sle i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %11 = call %struct.ibv_comp_channel* @ibv_create_comp_channel_v2(%struct.ibv_context* %10)
  store %struct.ibv_comp_channel* %11, %struct.ibv_comp_channel** %2, align 8
  br label %41

12:                                               ; preds = %1
  %13 = call %struct.ibv_comp_channel* @malloc(i32 24)
  store %struct.ibv_comp_channel* %13, %struct.ibv_comp_channel** %4, align 8
  %14 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %4, align 8
  %15 = icmp ne %struct.ibv_comp_channel* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store %struct.ibv_comp_channel* null, %struct.ibv_comp_channel** %2, align 8
  br label %41

17:                                               ; preds = %12
  %18 = load i32, i32* @CREATE_COMP_CHANNEL, align 4
  %19 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_comp_channel* %5, i32 4, i32 %18, %struct.ibv_create_comp_channel_resp* %6, i32 4)
  %20 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %21 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @write(i32 %22, %struct.ibv_create_comp_channel* %5, i32 4)
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %4, align 8
  %28 = call i32 @free(%struct.ibv_comp_channel* %27)
  store %struct.ibv_comp_channel* null, %struct.ibv_comp_channel** %2, align 8
  br label %41

29:                                               ; preds = %17
  %30 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_comp_channel_resp* %6, i32 4)
  %31 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %32 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %32, i32 0, i32 2
  store %struct.ibv_context* %31, %struct.ibv_context** %33, align 8
  %34 = getelementptr inbounds %struct.ibv_create_comp_channel_resp, %struct.ibv_create_comp_channel_resp* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %4, align 8
  %37 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %4, align 8
  %39 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %4, align 8
  store %struct.ibv_comp_channel* %40, %struct.ibv_comp_channel** %2, align 8
  br label %41

41:                                               ; preds = %29, %26, %16, %9
  %42 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %2, align 8
  ret %struct.ibv_comp_channel* %42
}

declare dso_local %struct.ibv_comp_channel* @ibv_create_comp_channel_v2(%struct.ibv_context*) #1

declare dso_local %struct.ibv_comp_channel* @malloc(i32) #1

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_comp_channel*, i32, i32, %struct.ibv_create_comp_channel_resp*, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_create_comp_channel*, i32) #1

declare dso_local i32 @free(%struct.ibv_comp_channel*) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_comp_channel_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
