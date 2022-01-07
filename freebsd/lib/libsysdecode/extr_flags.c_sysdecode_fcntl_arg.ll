; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_flags.c_sysdecode_fcntl_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_flags.c_sysdecode_fcntl_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fcntl_fd_arg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"|%#x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysdecode_fcntl_arg(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %50 [
    i32 131, label %11
    i32 130, label %23
    i32 132, label %45
    i32 129, label %45
    i32 128, label %45
  ]

11:                                               ; preds = %4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @fcntl_fd_arg, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @print_value(i32* %12, i32 %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @print_integer(i32* %18, i64 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  br label %55

23:                                               ; preds = %4
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @sysdecode_fcntl_fileflags(i32* %24, i64 %25, i32* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %44

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @fprintf(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43, %28
  br label %55

45:                                               ; preds = %4, %4, %4
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @fprintf(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %55

50:                                               ; preds = %4
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @print_integer(i32* %51, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45, %44, %22
  ret void
}

declare dso_local i32 @print_value(i32*, i32, i64) #1

declare dso_local i32 @print_integer(i32*, i64, i32) #1

declare dso_local i32 @sysdecode_fcntl_fileflags(i32*, i64, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
