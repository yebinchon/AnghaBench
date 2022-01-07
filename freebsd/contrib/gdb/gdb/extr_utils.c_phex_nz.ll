; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_phex_nz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_phex_nz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thirty_two = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%lx%08lx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @phex_nz(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %44 [
    i32 8, label %8
    i32 4, label %30
    i32 2, label %37
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @thirty_two, align 4
  %11 = ashr i32 %9, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = call i8* (...) @get_cell()
  store i8* %13, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = trunc i64 %19 to i16
  %21 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16 zeroext %20)
  br label %29

22:                                               ; preds = %8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i16
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %25, i64 %27)
  br label %29

29:                                               ; preds = %22, %16
  br label %47

30:                                               ; preds = %2
  %31 = call i8* (...) @get_cell()
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = trunc i64 %34 to i16
  %36 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16 zeroext %35)
  br label %47

37:                                               ; preds = %2
  %38 = call i8* (...) @get_cell()
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 65535
  %42 = trunc i32 %41 to i16
  %43 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %42)
  br label %47

44:                                               ; preds = %2
  %45 = load i32, i32* %3, align 4
  %46 = call i8* @phex_nz(i32 %45, i32 4)
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %44, %37, %30, %29
  %48 = load i8*, i8** %5, align 8
  ret i8* %48
}

declare dso_local i8* @get_cell(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i16 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
