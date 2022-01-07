; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"R\0D\00", align 1
@TARGET_ARCHITECTURE = common dso_local global %struct.TYPE_2__* null, align 8
@bfd_arch_sh = common dso_local global i64 0, align 8
@want_sh = common dso_local global i8* null, align 8
@want_sh3 = common dso_local global i8* null, align 8
@bfd_arch_h8300 = common dso_local global i64 0, align 8
@want_h8300h = common dso_local global i8* null, align 8
@want_h8300s = common dso_local global i8* null, align 8
@gch = common dso_local global i32 0, align 4
@NUM_REALREGS = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @e7000_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7000_fetch_registers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  %4 = call i32 @puts_e7000debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @bfd_arch_sh, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  %11 = load i8*, i8** @want_sh, align 8
  store i8* %11, i8** %2, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %17 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %10, %10, %10
  %16 = load i8*, i8** @want_sh3, align 8
  store i8* %16, i8** %2, align 8
  br label %17

17:                                               ; preds = %15, %10
  br label %18

18:                                               ; preds = %17, %0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @bfd_arch_h8300, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i8*, i8** @want_h8300h, align 8
  store i8* %25, i8** %2, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %31 [
    i32 134, label %29
    i32 133, label %29
    i32 132, label %29
    i32 131, label %29
  ]

29:                                               ; preds = %24, %24, %24, %24
  %30 = load i8*, i8** @want_h8300s, align 8
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* @gch, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @fetch_regs_from_dump(i32 %33, i8* %34)
  %36 = load i32, i32* @NUM_REALREGS, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %45, %32
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @NUM_REGS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = bitcast i32* %3 to i8*
  %44 = call i32 @supply_register(i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %37

48:                                               ; preds = %37
  ret void
}

declare dso_local i32 @puts_e7000debug(i8*) #1

declare dso_local i32 @fetch_regs_from_dump(i32, i8*) #1

declare dso_local i32 @supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
