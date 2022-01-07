; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }

@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*, i8*)* @sparc32_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc32_return_value(%struct.gdbarch* %0, %struct.type* %1, %struct.regcache* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.regcache*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store %struct.regcache* %2, %struct.regcache** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.type*, %struct.type** %8, align 8
  %13 = call i64 @sparc_structure_or_union_p(%struct.type* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %5
  %16 = load %struct.type*, %struct.type** %8, align 8
  %17 = call i64 @sparc_floating_p(%struct.type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.type*, %struct.type** %8, align 8
  %21 = call i32 @TYPE_LENGTH(%struct.type* %20)
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %5
  %24 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %24, i32* %6, align 4
  br label %43

25:                                               ; preds = %19, %15
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.type*, %struct.type** %8, align 8
  %30 = load %struct.regcache*, %struct.regcache** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @sparc32_extract_return_value(%struct.type* %29, %struct.regcache* %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.type*, %struct.type** %8, align 8
  %38 = load %struct.regcache*, %struct.regcache** %9, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @sparc32_store_return_value(%struct.type* %37, %struct.regcache* %38, i8* %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %23
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @sparc_structure_or_union_p(%struct.type*) #1

declare dso_local i64 @sparc_floating_p(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @sparc32_extract_return_value(%struct.type*, %struct.regcache*, i8*) #1

declare dso_local i32 @sparc32_store_return_value(%struct.type*, %struct.regcache*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
