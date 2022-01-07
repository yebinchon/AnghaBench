; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_sigtramp_frame_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_sigtramp_frame_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_unwind = type { i32 }
%struct.frame_info = type { i32 }

@s390_sigtramp_frame_unwind = common dso_local global %struct.frame_unwind zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame_unwind* (%struct.frame_info*)* @s390_sigtramp_frame_sniffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame_unwind* @s390_sigtramp_frame_sniffer(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_unwind*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %7 = call i32 @frame_pc_unwind(%struct.frame_info* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %10 = call i64 @read_memory_nobpt(i32 %8, i32* %9, i32 2)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 119
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 173
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %28

27:                                               ; preds = %22, %18
  store %struct.frame_unwind* @s390_sigtramp_frame_unwind, %struct.frame_unwind** %2, align 8
  br label %28

28:                                               ; preds = %27, %26, %17, %12
  %29 = load %struct.frame_unwind*, %struct.frame_unwind** %2, align 8
  ret %struct.frame_unwind* %29
}

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i64 @read_memory_nobpt(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
