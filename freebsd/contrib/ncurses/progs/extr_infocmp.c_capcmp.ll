; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_infocmp.c_capcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_infocmp.c_capcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acs_chars_index = common dso_local global i64 0, align 8
@ignorepads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*)* @capcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capcmp(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @VALID_STRING(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @VALID_STRING(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %11, %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @VALID_STRING(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @VALID_STRING(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %20
  store i32 1, i32* %4, align 4
  br label %45

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @acs_chars_index, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ignorepads, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strcmp(i8* %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @_nc_capcmp(i8* %42, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %37, %28, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @VALID_STRING(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @_nc_capcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
