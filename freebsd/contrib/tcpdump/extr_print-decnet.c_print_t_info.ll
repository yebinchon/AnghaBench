; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_t_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_t_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"reserved-ntype? \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"l2rout \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"l1rout \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"endnode \00", align 1
@TI_VERIF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"verif \00", align 1
@TI_BLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"blo \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_t_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_t_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 3
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 0, label %9
    i32 128, label %12
    i32 129, label %15
    i32 130, label %18
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str to i32*))
  br label %21

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.1 to i32*))
  br label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.2 to i32*))
  br label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  br label %21

21:                                               ; preds = %2, %18, %15, %12, %9
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TI_VERIF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.4 to i32*))
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TI_BLOCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.5 to i32*))
  br label %37

37:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
