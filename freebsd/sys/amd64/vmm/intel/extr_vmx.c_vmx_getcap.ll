; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_getcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_getcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@cap_halt_exit = common dso_local global i32 0, align 4
@cap_pause_exit = common dso_local global i32 0, align 4
@cap_monitor_trap = common dso_local global i32 0, align 4
@cap_unrestricted_guest = common dso_local global i32 0, align 4
@cap_invpcid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @vmx_getcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_getcap(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.vmx*
  store %struct.vmx* %13, %struct.vmx** %9, align 8
  %14 = load i32, i32* @ENOENT, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.vmx*, %struct.vmx** %9, align 8
  %16 = getelementptr inbounds %struct.vmx, %struct.vmx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %49 [
    i32 131, label %24
    i32 129, label %29
    i32 130, label %34
    i32 128, label %39
    i32 132, label %44
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* @cap_halt_exit, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %50

29:                                               ; preds = %4
  %30 = load i32, i32* @cap_pause_exit, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %50

34:                                               ; preds = %4
  %35 = load i32, i32* @cap_monitor_trap, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %34
  br label %50

39:                                               ; preds = %4
  %40 = load i32, i32* @cap_unrestricted_guest, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %50

44:                                               ; preds = %4
  %45 = load i32, i32* @cap_invpcid, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %50

49:                                               ; preds = %4
  br label %50

50:                                               ; preds = %49, %48, %43, %38, %33, %28
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %50
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
