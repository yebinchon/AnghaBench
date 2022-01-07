; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_chk_op_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_chk_op_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_TLV_PDAT = common dso_local global i64 0, align 8
@B_KEYIN = common dso_local global i64 0, align 8
@F_TLV_KEYI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Based on flags expected KEYINFO TLV!\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Illegal DATA encoding for type 0x%x programmed %x got %x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64)* @chk_op_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chk_op_type(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @F_TLV_PDAT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @B_KEYIN, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @F_TLV_KEYI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ND_PRINT(i32* bitcast ([38 x i8]* @.str to i32*))
  br label %24

24:                                               ; preds = %21, %17
  br label %38

25:                                               ; preds = %12
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = call i32 @ND_PRINT(i32* %35)
  br label %37

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %24
  br label %39

39:                                               ; preds = %38, %4
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
