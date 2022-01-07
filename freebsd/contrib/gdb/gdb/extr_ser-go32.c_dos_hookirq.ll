; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_hookirq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_hookirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intrupt = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@NINTR = common dso_local global i32 0, align 4
@intrupts = common dso_local global %struct.intrupt* null, align 8
@isrs = common dso_local global i64* null, align 8
@ICU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intrupt* (i32)* @dos_hookirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intrupt* @dos_hookirq(i32 %0) #0 {
  %2 = alloca %struct.intrupt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.intrupt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NINTR, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.intrupt* null, %struct.intrupt** %2, align 8
  br label %93

11:                                               ; preds = %1
  %12 = load %struct.intrupt*, %struct.intrupt** @intrupts, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %12, i64 %14
  store %struct.intrupt* %15, %struct.intrupt** %4, align 8
  %16 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %17 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store %struct.intrupt* null, %struct.intrupt** %2, align 8
  br label %93

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add i32 8, %22
  store i32 %23, i32* %5, align 4
  %24 = load i64*, i64** @isrs, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %31 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %30, i32 0, i32 5
  %32 = call i32 @_go32_dpmi_get_real_mode_interrupt_vector(i32 %29, i32* %31)
  %33 = call i8* (...) @_go32_my_cs()
  %34 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %35 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %40 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %43 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %42, i32 0, i32 3
  %44 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %45 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %44, i32 0, i32 4
  %46 = call i64 @_go32_dpmi_allocate_real_mode_callback_iret(%struct.TYPE_5__* %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %21
  store %struct.intrupt* null, %struct.intrupt** %2, align 8
  br label %93

49:                                               ; preds = %21
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %52 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %51, i32 0, i32 3
  %53 = call i64 @_go32_dpmi_set_real_mode_interrupt_vector(i32 %50, %struct.TYPE_5__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store %struct.intrupt* null, %struct.intrupt** %2, align 8
  br label %93

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %59 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %58, i32 0, i32 2
  %60 = call i32 @_go32_dpmi_get_protected_mode_interrupt_vector(i32 %57, i32* %59)
  %61 = call i8* (...) @_go32_my_cs()
  %62 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %63 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %68 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %71 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %70, i32 0, i32 1
  %72 = call i32 @_go32_dpmi_allocate_iret_wrapper(%struct.TYPE_6__* %71)
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %75 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %74, i32 0, i32 1
  %76 = call i64 @_go32_dpmi_set_protected_mode_interrupt_vector(i32 %73, %struct.TYPE_6__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %56
  store %struct.intrupt* null, %struct.intrupt** %2, align 8
  br label %93

79:                                               ; preds = %56
  %80 = call i32 (...) @disable()
  %81 = load i32, i32* @ICU_MASK, align 4
  %82 = load i32, i32* @ICU_MASK, align 4
  %83 = call i32 @inportb(i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = shl i32 1, %84
  %86 = xor i32 %85, -1
  %87 = and i32 %83, %86
  %88 = call i32 @outportb(i32 %81, i32 %87)
  %89 = call i32 (...) @enable()
  %90 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  %91 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.intrupt*, %struct.intrupt** %4, align 8
  store %struct.intrupt* %92, %struct.intrupt** %2, align 8
  br label %93

93:                                               ; preds = %79, %78, %55, %48, %20, %10
  %94 = load %struct.intrupt*, %struct.intrupt** %2, align 8
  ret %struct.intrupt* %94
}

declare dso_local i32 @_go32_dpmi_get_real_mode_interrupt_vector(i32, i32*) #1

declare dso_local i8* @_go32_my_cs(...) #1

declare dso_local i64 @_go32_dpmi_allocate_real_mode_callback_iret(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @_go32_dpmi_set_real_mode_interrupt_vector(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @_go32_dpmi_get_protected_mode_interrupt_vector(i32, i32*) #1

declare dso_local i32 @_go32_dpmi_allocate_iret_wrapper(%struct.TYPE_6__*) #1

declare dso_local i64 @_go32_dpmi_set_protected_mode_interrupt_vector(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @disable(...) #1

declare dso_local i32 @outportb(i32, i32) #1

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
