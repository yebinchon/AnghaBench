; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_fd_append_character.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_fd_append_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i64, i8*)* @ucl_fd_append_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_fd_append_character(i8 zeroext %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @write(i32 %16, i8* %5, i64 1)
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %6, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @write(i32 %29, i8* %5, i64 1)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %53

33:                                               ; preds = %28
  br label %24

34:                                               ; preds = %24
  br label %51

35:                                               ; preds = %18
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %5, align 1
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @memset(i8* %36, i8 zeroext %37, i64 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @write(i32 %40, i8* %41, i64 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %4, align 4
  br label %53

48:                                               ; preds = %35
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %48, %34
  br label %52

52:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %45, %32, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 zeroext, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
