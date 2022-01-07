; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c_addwaster.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c_addwaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typetable = type { i32 }

@T_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typetable*, i8**)* @addwaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addwaster(%struct.typetable* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.typetable*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.typetable* %0, %struct.typetable** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @is_digit(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 10, %17
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @to_digit(i8 signext %20)
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  br label %11

25:                                               ; preds = %11
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 36
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.typetable*, %struct.typetable** %4, align 8
  %32 = getelementptr inbounds %struct.typetable, %struct.typetable* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.typetable*, %struct.typetable** %4, align 8
  %36 = getelementptr inbounds %struct.typetable, %struct.typetable* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.typetable*, %struct.typetable** %4, align 8
  %38 = load i32, i32* @T_INT, align 4
  %39 = call i64 @addtype(%struct.typetable* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %57

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.typetable*, %struct.typetable** %4, align 8
  %45 = getelementptr inbounds %struct.typetable, %struct.typetable* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i8**, i8*** %5, align 8
  store i8* %47, i8** %48, align 8
  br label %56

49:                                               ; preds = %25
  %50 = load %struct.typetable*, %struct.typetable** %4, align 8
  %51 = load i32, i32* @T_INT, align 4
  %52 = call i64 @addtype(%struct.typetable* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %57

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %42
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %54, %41
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @is_digit(i8 signext) #1

declare dso_local i32 @to_digit(i8 signext) #1

declare dso_local i64 @addtype(%struct.typetable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
