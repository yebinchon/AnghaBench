; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_regsets_store_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_regsets_store_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regset_info = type { i64, i32, i32 (i8*)* }

@target_regsets = common dso_local global %struct.regset_info* null, align 8
@inferior_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Warning: ptrace(regsets_store_inferior_registers)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @regsets_store_inferior_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regsets_store_inferior_registers() #0 {
  %1 = alloca %struct.regset_info*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.regset_info*, %struct.regset_info** @target_regsets, align 8
  store %struct.regset_info* %4, %struct.regset_info** %1, align 8
  br label %5

5:                                                ; preds = %39, %15, %0
  %6 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %7 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %5
  %11 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %12 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %17 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %16, i32 1
  store %struct.regset_info* %17, %struct.regset_info** %1, align 8
  br label %5

18:                                               ; preds = %10
  %19 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %20 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %2, align 8
  %23 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %24 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %23, i32 0, i32 2
  %25 = load i32 (i8*)*, i32 (i8*)** %24, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 %25(i8* %26)
  %28 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %29 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @inferior_pid, align 4
  %32 = load i8*, i8** %2, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = call i32 @ptrace(i32 %30, i32 %31, i32 %33, i32 0)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %18
  %38 = call i32 @perror(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %18
  %40 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %41 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %40, i32 1
  store %struct.regset_info* %41, %struct.regset_info** %1, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @free(i8* %42)
  br label %5

44:                                               ; preds = %5
  ret i32 0
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
