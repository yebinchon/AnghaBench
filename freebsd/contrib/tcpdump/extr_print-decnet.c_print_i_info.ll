; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_i_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_i_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@II_TYPEMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"reserved-ntype? \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"l2rout \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"l1rout \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"endnode \00", align 1
@II_VERIF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"verif \00", align 1
@II_NOMCAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"nomcast \00", align 1
@II_BLOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"blo \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_i_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_i_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @II_TYPEMASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %22 [
    i32 0, label %10
    i32 128, label %13
    i32 129, label %16
    i32 130, label %19
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str to i32*))
  br label %22

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.1 to i32*))
  br label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.2 to i32*))
  br label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  br label %22

22:                                               ; preds = %2, %19, %16, %13, %10
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @II_VERIF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.4 to i32*))
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @II_NOMCAST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.5 to i32*))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @II_BLOCK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.6 to i32*))
  br label %46

46:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
