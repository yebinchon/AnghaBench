; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctlfindtrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctlfindtrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_trap = type { i32, %struct.interface*, i32 }
%struct.interface = type { i32 }

@ctl_traps = common dso_local global %struct.ctl_trap* null, align 8
@TRAP_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_trap* (i32*, %struct.interface*)* @ctlfindtrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_trap* @ctlfindtrap(i32* %0, %struct.interface* %1) #0 {
  %3 = alloca %struct.ctl_trap*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.interface*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.interface* %1, %struct.interface** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.ctl_trap*, %struct.ctl_trap** @ctl_traps, align 8
  %10 = call i64 @COUNTOF(%struct.ctl_trap* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %7
  %13 = load %struct.ctl_trap*, %struct.ctl_trap** @ctl_traps, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %13, i64 %14
  %16 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TRAP_INUSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.ctl_trap*, %struct.ctl_trap** @ctl_traps, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %23, i64 %24
  %26 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %25, i32 0, i32 2
  %27 = call i64 @ADDR_PORT_EQ(i32* %22, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load %struct.interface*, %struct.interface** %5, align 8
  %31 = load %struct.ctl_trap*, %struct.ctl_trap** @ctl_traps, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %31, i64 %32
  %34 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %33, i32 0, i32 1
  %35 = load %struct.interface*, %struct.interface** %34, align 8
  %36 = icmp eq %struct.interface* %30, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.ctl_trap*, %struct.ctl_trap** @ctl_traps, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %38, i64 %39
  store %struct.ctl_trap* %40, %struct.ctl_trap** %3, align 8
  br label %46

41:                                               ; preds = %29, %21, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %7

45:                                               ; preds = %7
  store %struct.ctl_trap* null, %struct.ctl_trap** %3, align 8
  br label %46

46:                                               ; preds = %45, %37
  %47 = load %struct.ctl_trap*, %struct.ctl_trap** %3, align 8
  ret %struct.ctl_trap* %47
}

declare dso_local i64 @COUNTOF(%struct.ctl_trap*) #1

declare dso_local i64 @ADDR_PORT_EQ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
