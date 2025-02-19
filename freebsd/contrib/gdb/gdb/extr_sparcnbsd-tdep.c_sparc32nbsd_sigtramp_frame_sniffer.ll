; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparcnbsd-tdep.c_sparc32nbsd_sigtramp_frame_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparcnbsd-tdep.c_sparc32nbsd_sigtramp_frame_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_unwind = type { i32 }
%struct.frame_info = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"__sigtramp_sigcontext\00", align 1
@sparc32nbsd_sigcontext_frame_unwind = common dso_local global %struct.frame_unwind zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame_unwind* (%struct.frame_info*)* @sparc32nbsd_sigtramp_frame_sniffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame_unwind* @sparc32nbsd_sigtramp_frame_sniffer(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_unwind*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %7 = call i32 @frame_pc_unwind(%struct.frame_info* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @find_pc_partial_function(i32 %8, i8** %5, i32* null, i32* null)
  %10 = load i32, i32* %4, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @sparc32nbsd_pc_in_sigtramp(i32 %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 21)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  store %struct.frame_unwind* @sparc32nbsd_sigcontext_frame_unwind, %struct.frame_unwind** %2, align 8
  br label %24

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %1
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %24

24:                                               ; preds = %23, %21
  %25 = load %struct.frame_unwind*, %struct.frame_unwind** %2, align 8
  ret %struct.frame_unwind* %25
}

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i32 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i64 @sparc32nbsd_pc_in_sigtramp(i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
