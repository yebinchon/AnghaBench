; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MDOC_PHRASEQF = common dso_local global i32 0, align 4
@TOKEN_NONE = common dso_local global i32 0, align 4
@MDOC_PARSED = common dso_local global i32 0, align 4
@MDOC_CALLABLE = common dso_local global i32 0, align 4
@MANDOCERR_MACRO_CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i32, i32, i8*)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup(%struct.roff_man* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.roff_man*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %14 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MDOC_PHRASEQF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i32, i32* @MDOC_PHRASEQF, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %23 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @TOKEN_NONE, align 4
  store i32 %26, i32* %6, align 4
  br label %67

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TOKEN_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.TYPE_2__* @mdoc_macro(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MDOC_PARSED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %31, %27
  %40 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %41 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @roffhash_find(i32 %42, i8* %43, i32 0)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @TOKEN_NONE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  %50 = call %struct.TYPE_2__* @mdoc_macro(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MDOC_CALLABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %67

58:                                               ; preds = %48
  %59 = load i32, i32* @MANDOCERR_MACRO_CALL, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @mandoc_msg(i32 %59, i32 %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %58, %39
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* @TOKEN_NONE, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %56, %19
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_2__* @mdoc_macro(i32) #1

declare dso_local i32 @roffhash_find(i32, i8*, i32) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
