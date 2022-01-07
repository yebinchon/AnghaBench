; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_filter.c_filter_ldisplay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_filter.c_filter_ldisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"filter read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @filter_ldisplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_ldisplay(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_3__* @EXP(i32* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ex_getline(i32* %12, i32* %13, i64* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @INTERRUPTED(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ false, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @FILE2INT5(i32* %24, i32 %27, i32 %30, i64 %31, i32* %32, i64 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @ex_ldisplay(i32* %35, i32* %36, i64 %37, i32 0, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %42

41:                                               ; preds = %23
  br label %11

42:                                               ; preds = %40, %21
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @ferror(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @M_SYSERR, align 4
  %49 = call i32 @msgq(i32* %47, i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @fclose(i32* %51)
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @EXP(i32*) #1

declare dso_local i32 @ex_getline(i32*, i32*, i64*) #1

declare dso_local i32 @INTERRUPTED(i32*) #1

declare dso_local i32 @FILE2INT5(i32*, i32, i32, i64, i32*, i64) #1

declare dso_local i64 @ex_ldisplay(i32*, i32*, i64, i32, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
