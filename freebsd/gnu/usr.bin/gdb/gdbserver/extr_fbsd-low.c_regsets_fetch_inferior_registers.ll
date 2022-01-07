; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_regsets_fetch_inferior_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_regsets_fetch_inferior_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regset_info = type { i64, i32 (i8*)*, i32 }

@target_regsets = common dso_local global %struct.regset_info* null, align 8
@inferior_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ptrace(regsets_fetch_inferior_registers) PID=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @regsets_fetch_inferior_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regsets_fetch_inferior_registers() #0 {
  %1 = alloca %struct.regset_info*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = load %struct.regset_info*, %struct.regset_info** @target_regsets, align 8
  store %struct.regset_info* %5, %struct.regset_info** %1, align 8
  br label %6

6:                                                ; preds = %39, %16, %0
  %7 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %8 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %6
  %12 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %13 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %18 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %17, i32 1
  store %struct.regset_info* %18, %struct.regset_info** %1, align 8
  br label %6

19:                                               ; preds = %11
  %20 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %21 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** %2, align 8
  %24 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %25 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @inferior_pid, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = call i32 @ptrace(i32 %26, i32 %27, i32 %29, i32 0)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %35 = load i32, i32* @inferior_pid, align 4
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %38 = call i32 @perror(i8* %37)
  br label %39

39:                                               ; preds = %33, %19
  %40 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %41 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %40, i32 0, i32 1
  %42 = load i32 (i8*)*, i32 (i8*)** %41, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 %42(i8* %43)
  %45 = load %struct.regset_info*, %struct.regset_info** %1, align 8
  %46 = getelementptr inbounds %struct.regset_info, %struct.regset_info* %45, i32 1
  store %struct.regset_info* %46, %struct.regset_info** %1, align 8
  br label %6

47:                                               ; preds = %6
  ret i32 0
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
