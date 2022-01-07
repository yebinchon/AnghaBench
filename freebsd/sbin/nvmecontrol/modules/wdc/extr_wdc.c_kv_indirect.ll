; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_kv_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_kv_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subpage_print = type { i64, i32 (i8*, i64, i32, i64)* }

@.str = private unnamed_addr constant [29 x i8] c"No handler for page type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i64, %struct.subpage_print*, i64)* @kv_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_indirect(i8* %0, i64 %1, i32 %2, i64 %3, %struct.subpage_print* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.subpage_print*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.subpage_print* %4, %struct.subpage_print** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %34, %6
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load %struct.subpage_print*, %struct.subpage_print** %11, align 8
  %20 = getelementptr inbounds %struct.subpage_print, %struct.subpage_print* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.subpage_print*, %struct.subpage_print** %11, align 8
  %26 = getelementptr inbounds %struct.subpage_print, %struct.subpage_print* %25, i32 0, i32 1
  %27 = load i32 (i8*, i64, i32, i64)*, i32 (i8*, i64, i32, i64)** %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 %27(i8* %28, i64 %29, i32 %30, i64 %31)
  br label %42

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %13, align 8
  %37 = load %struct.subpage_print*, %struct.subpage_print** %11, align 8
  %38 = getelementptr inbounds %struct.subpage_print, %struct.subpage_print* %37, i32 1
  store %struct.subpage_print* %38, %struct.subpage_print** %11, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %39, %24
  ret void
}

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
