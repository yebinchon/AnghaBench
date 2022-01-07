; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt.c_kgdb_set_tid_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt.c_kgdb_set_tid_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthr = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"TID or thread address for the new context\00", align 1
@kvm = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid thread address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kgdb_set_tid_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_set_tid_cmd(i8* %0, i32 %1) #0 {
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
  %10 = call i32 @error_no_arg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @parse_and_eval_address(i8* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** @kvm, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @PINKERNEL(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.kthr* @kgdb_thr_lookup_taddr(i64 %21)
  store %struct.kthr* %22, %struct.kthr** %6, align 8
  %23 = load %struct.kthr*, %struct.kthr** %6, align 8
  %24 = icmp eq %struct.kthr* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.kthr*, %struct.kthr** %6, align 8
  %29 = getelementptr inbounds %struct.kthr, %struct.kthr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27, %16, %11
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @kgdb_switch_to_thread(i64 %32)
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i64 @parse_and_eval_address(i8*) #1

declare dso_local i64 @PINKERNEL(i64) #1

declare dso_local %struct.kthr* @kgdb_thr_lookup_taddr(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @kgdb_switch_to_thread(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
