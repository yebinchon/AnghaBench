; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }

@PARM_BOUNDARY = common dso_local global i32 0, align 4
@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.value*)* @value_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @value_push(i64 %0, %struct.value* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.value* %1, %struct.value** %4, align 8
  %8 = load %struct.value*, %struct.value** %4, align 8
  %9 = call i32 @VALUE_ENCLOSING_TYPE(%struct.value* %8)
  %10 = call i32 @TYPE_LENGTH(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @PARM_BOUNDARY, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PARM_BOUNDARY, align 4
  %17 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %18 = sdiv i32 %16, %17
  %19 = add nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @PARM_BOUNDARY, align 4
  %22 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %23 = sdiv i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = xor i32 %24, -1
  %26 = and i32 %20, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %14, %2
  %28 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %29 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = call i64 @INNER_THAN(i32 1, i32 2)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %3, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.value*, %struct.value** %4, align 8
  %49 = call i32 @VALUE_CONTENTS_ALL(%struct.value* %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @write_memory(i64 %47, i32 %49, i32 %50)
  br label %65

52:                                               ; preds = %36
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load %struct.value*, %struct.value** %4, align 8
  %58 = call i32 @VALUE_CONTENTS_ALL(%struct.value* %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @write_memory(i64 %56, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %3, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %52, %39
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @VALUE_ENCLOSING_TYPE(%struct.value*) #1

declare dso_local i64 @INNER_THAN(i32, i32) #1

declare dso_local i32 @write_memory(i64, i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS_ALL(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
