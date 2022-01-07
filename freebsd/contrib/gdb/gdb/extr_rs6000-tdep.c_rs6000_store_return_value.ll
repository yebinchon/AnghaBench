; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_store_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_store_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.gdbarch_tdep = type { i64, i64 }

@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@FP0_REGNUM = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*)* @rs6000_store_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_store_return_value(%struct.type* %0, i8* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @current_gdbarch, align 4
  %7 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %6)
  store %struct.gdbarch_tdep* %7, %struct.gdbarch_tdep** %5, align 8
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i64 @TYPE_CODE(%struct.type* %8)
  %10 = load i64, i64* @TYPE_CODE_FLT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, i64* @FP0_REGNUM, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @DEPRECATED_REGISTER_BYTE(i64 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i32 @TYPE_LENGTH(%struct.type* %17)
  %19 = call i32 @deprecated_write_register_bytes(i32 %15, i8* %16, i32 %18)
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call i64 @TYPE_CODE(%struct.type* %21)
  %23 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.type*, %struct.type** %3, align 8
  %27 = call i32 @TYPE_LENGTH(%struct.type* %26)
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.type*, %struct.type** %3, align 8
  %31 = call i64 @TYPE_VECTOR(%struct.type* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %35 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  %38 = call i32 @DEPRECATED_REGISTER_BYTE(i64 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.type*, %struct.type** %3, align 8
  %41 = call i32 @TYPE_LENGTH(%struct.type* %40)
  %42 = call i32 @deprecated_write_register_bytes(i32 %38, i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %33, %29, %25
  br label %55

44:                                               ; preds = %20
  %45 = load i32, i32* @current_gdbarch, align 4
  %46 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %45)
  %47 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 3
  %50 = call i32 @DEPRECATED_REGISTER_BYTE(i64 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.type*, %struct.type** %3, align 8
  %53 = call i32 @TYPE_LENGTH(%struct.type* %52)
  %54 = call i32 @deprecated_write_register_bytes(i32 %50, i8* %51, i32 %53)
  br label %55

55:                                               ; preds = %44, %43
  br label %56

56:                                               ; preds = %55, %12
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @deprecated_write_register_bytes(i32, i8*, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_BYTE(i64) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @TYPE_VECTOR(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
