; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_set_cloned_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_set_cloned_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, %struct.pcb* }
%struct.TYPE_2__ = type { i32 }
%struct.pcb = type { i64 }
%struct.user_segment_descriptor = type { i32 }
%struct.l_user_desc = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"set_cloned_tls copyin info failed!\00", align 1
@GUGS32_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"set_cloned_tls copyout info failed!\00", align 1
@SEL_UPL = common dso_local global i32 0, align 4
@PCB_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_set_cloned_tls(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.user_segment_descriptor, align 4
  %6 = alloca %struct.l_user_desc, align 8
  %7 = alloca %struct.pcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @copyin(i8* %10, %struct.l_user_desc* %6, i32 16)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = call i32 @linux_msg(%struct.thread* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %51

17:                                               ; preds = %2
  %18 = load i32, i32* @GUGS32_SEL, align 4
  %19 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @copyout(%struct.l_user_desc* %6, i8* %20, i32 16)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = call i32 @linux_msg(%struct.thread* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  %28 = call i32 @LINUX_LDT_entry_a(%struct.l_user_desc* %6)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = call i32 @LINUX_LDT_entry_b(%struct.l_user_desc* %6)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = bitcast [2 x i32]* %9 to i32**
  %33 = call i32 @memcpy(%struct.user_segment_descriptor* %5, i32** %32, i32 8)
  %34 = load %struct.thread*, %struct.thread** %3, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 1
  %36 = load %struct.pcb*, %struct.pcb** %35, align 8
  store %struct.pcb* %36, %struct.pcb** %7, align 8
  %37 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pcb*, %struct.pcb** %7, align 8
  %40 = getelementptr inbounds %struct.pcb, %struct.pcb* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @GUGS32_SEL, align 4
  %42 = load i32, i32* @SEL_UPL, align 4
  %43 = call i32 @GSEL(i32 %41, i32 %42)
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.pcb*, %struct.pcb** %7, align 8
  %49 = load i32, i32* @PCB_32BIT, align 4
  %50 = call i32 @set_pcb_flags(%struct.pcb* %48, i32 %49)
  br label %51

51:                                               ; preds = %27, %14
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @copyin(i8*, %struct.l_user_desc*, i32) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*) #1

declare dso_local i32 @copyout(%struct.l_user_desc*, i8*, i32) #1

declare dso_local i32 @LINUX_LDT_entry_a(%struct.l_user_desc*) #1

declare dso_local i32 @LINUX_LDT_entry_b(%struct.l_user_desc*) #1

declare dso_local i32 @memcpy(%struct.user_segment_descriptor*, i32**, i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
