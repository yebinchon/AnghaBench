; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_modify_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_modify_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Value does not fit in %d bits.\00", align 1
@BITS_BIG_ENDIAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modify_field(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 %14, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %23, %26
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %12, %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = icmp ne i32 0, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %42, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %39, %31, %28
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @extract_signed_integer(i8* %48, i32 4)
  store i32 %49, i32* %9, align 4
  %50 = load i64, i64* @BITS_BIG_ENDIAN, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 32, %54
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %55, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %52, %47
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %78

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 -1, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %63
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @store_signed_integer(i8* %84, i32 4, i32 %85)
  ret void
}

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @extract_signed_integer(i8*, i32) #1

declare dso_local i32 @store_signed_integer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
