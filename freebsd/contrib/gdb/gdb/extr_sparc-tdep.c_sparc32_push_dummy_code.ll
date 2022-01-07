; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_push_dummy_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_push_dummy_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gdbarch*, i64, i64, i32, %struct.value**, i32, %struct.type*, i64*, i64*)* @sparc32_push_dummy_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sparc32_push_dummy_code(%struct.gdbarch* %0, i64 %1, i64 %2, i32 %3, %struct.value** %4, i32 %5, %struct.type* %6, i64* %7, i64* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.gdbarch*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.type*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca [4 x i8], align 1
  store %struct.gdbarch* %0, %struct.gdbarch** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.value** %4, %struct.value*** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.type* %6, %struct.type** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = sub nsw i64 %21, 4
  %23 = load i64*, i64** %19, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64*, i64** %18, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.type*, %struct.type** %17, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @using_struct_return(%struct.type* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %9
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %32 = load %struct.type*, %struct.type** %17, align 8
  %33 = call i32 @TYPE_LENGTH(%struct.type* %32)
  %34 = and i32 %33, 8191
  %35 = call i32 @store_unsigned_integer(i8* %31, i32 4, i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = sub nsw i64 %36, 8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %39 = call i32 @write_memory(i64 %37, i8* %38, i32 4)
  %40 = load i64, i64* %12, align 8
  %41 = sub nsw i64 %40, 8
  store i64 %41, i64* %10, align 8
  br label %45

42:                                               ; preds = %9
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %43, 4
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i64, i64* %10, align 8
  ret i64 %46
}

declare dso_local i64 @using_struct_return(%struct.type*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @write_memory(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
