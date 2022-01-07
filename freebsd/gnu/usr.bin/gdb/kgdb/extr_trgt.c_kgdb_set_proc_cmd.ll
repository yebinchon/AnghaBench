; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt.c_kgdb_set_proc_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt.c_kgdb_set_proc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthr = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"proc address for the new context\00", align 1
@kvm = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"only supported for core file target\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"invalid pid\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid proc address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kgdb_set_proc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_set_proc_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.kthr*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @error_no_arg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32*, i32** @kvm, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @parse_and_eval_address(i8* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @PINKERNEL(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = call %struct.kthr* @kgdb_thr_lookup_pid(i32 %24)
  store %struct.kthr* %25, %struct.kthr** %6, align 8
  %26 = load %struct.kthr*, %struct.kthr** %6, align 8
  %27 = icmp eq %struct.kthr* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  br label %39

31:                                               ; preds = %16
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.kthr* @kgdb_thr_lookup_paddr(i64 %32)
  store %struct.kthr* %33, %struct.kthr** %6, align 8
  %34 = load %struct.kthr*, %struct.kthr** %6, align 8
  %35 = icmp eq %struct.kthr* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  br label %39

39:                                               ; preds = %38, %30
  %40 = load %struct.kthr*, %struct.kthr** %6, align 8
  %41 = getelementptr inbounds %struct.kthr, %struct.kthr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kgdb_switch_to_thread(i32 %42)
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @parse_and_eval_address(i8*) #1

declare dso_local i32 @PINKERNEL(i64) #1

declare dso_local %struct.kthr* @kgdb_thr_lookup_pid(i32) #1

declare dso_local %struct.kthr* @kgdb_thr_lookup_paddr(i64) #1

declare dso_local i32 @kgdb_switch_to_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
