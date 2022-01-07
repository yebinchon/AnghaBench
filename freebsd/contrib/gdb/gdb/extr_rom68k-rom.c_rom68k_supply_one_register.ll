; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rom68k-rom.c_rom68k_supply_one_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rom68k-rom.c_rom68k_supply_one_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @rom68k_supply_one_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rom68k_supply_one_register(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @is_hex_digit(i8 zeroext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 16
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 @hex_digit_value(i32 %28)
  %30 = add nsw i32 %24, %29
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %17
  br label %33

32:                                               ; preds = %22
  br label %12

33:                                               ; preds = %31, %12
  br label %34

34:                                               ; preds = %39, %33
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @is_whitespace(i8 zeroext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %34

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @store_unsigned_integer(i8* %11, i32 %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @supply_register(i32 %47, i8* %11)
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  ret i8* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_hex_digit(i8 zeroext) #2

declare dso_local i32 @hex_digit_value(i32) #2

declare dso_local i64 @is_whitespace(i8 zeroext) #2

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
