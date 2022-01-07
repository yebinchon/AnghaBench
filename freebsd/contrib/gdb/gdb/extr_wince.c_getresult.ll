; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_getresult.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_getresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"couldn't read information from wince stub - %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getresult(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i64*, i64** %9, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i64* %10, i64** %9, align 8
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @getlen(i32 %15, i32 %16)
  %18 = load i64*, i64** %9, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i16
  %22 = sext i16 %21 to i32
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i16
  %28 = sext i16 %27 to i32
  %29 = sub nsw i32 0, %28
  %30 = trunc i32 %29 to i16
  %31 = call i32 @SetLastError(i16 signext %30)
  store i32 0, i32* %5, align 4
  br label %46

32:                                               ; preds = %14
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @s, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @sockread(i32 %33, i32 %34, i32 %35, i64 %37)
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @stub_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %32
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @getlen(i32, i32) #1

declare dso_local i32 @SetLastError(i16 signext) #1

declare dso_local i64 @sockread(i32, i32, i32, i64) #1

declare dso_local i32 @stub_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
