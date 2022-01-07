; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_rdp_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_rdp_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ds = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"bbw-S-B\00", align 1
@RDP_STEP = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rdp_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_step() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ds, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  br i1 false, label %7, label %10

7:                                                ; preds = %6
  %8 = load i32, i32* @RDP_STEP, align 4
  %9 = call i32 @send_rdp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8, i32 0, i32 1, i32* %1)
  br label %22

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @ARM_PC_REGNUM, align 4
  %12 = call i32 @read_register(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @arm_get_next_pc(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %17 = call i32 @remote_rdp_insert_breakpoint(i32 %15, i8* %16)
  %18 = call i32 (...) @rdp_execute()
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %21 = call i32 @remote_rdp_remove_breakpoint(i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @send_rdp(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @arm_get_next_pc(i32) #1

declare dso_local i32 @remote_rdp_insert_breakpoint(i32, i8*) #1

declare dso_local i32 @rdp_execute(...) #1

declare dso_local i32 @remote_rdp_remove_breakpoint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
