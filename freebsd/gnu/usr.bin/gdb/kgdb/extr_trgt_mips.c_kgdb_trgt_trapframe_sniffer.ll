; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt_mips.c_kgdb_trgt_trapframe_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt_mips.c_kgdb_trgt_trapframe_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_unwind = type { i32 }
%struct.frame_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"MipsKernIntr\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MipsKernGenException\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"MipsUserIntr\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"MipsUserGenException\00", align 1
@kgdb_trgt_trapframe_unwind = common dso_local global %struct.frame_unwind zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_unwind* @kgdb_trgt_trapframe_sniffer(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_unwind*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %7 = call i32 @frame_pc_unwind(%struct.frame_info* %6)
  store i32 %7, i32* %5, align 4
  store i8* null, i8** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @find_pc_partial_function(i32 %8, i8** %4, i32* null, i32* null)
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17, %13
  store %struct.frame_unwind* @kgdb_trgt_trapframe_unwind, %struct.frame_unwind** %2, align 8
  br label %31

30:                                               ; preds = %25
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %31

31:                                               ; preds = %30, %29, %12
  %32 = load %struct.frame_unwind*, %struct.frame_unwind** %2, align 8
  ret %struct.frame_unwind* %32
}

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i32 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
