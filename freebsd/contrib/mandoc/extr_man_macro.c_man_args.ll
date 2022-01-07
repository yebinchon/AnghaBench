; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_macro.c_man_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_macro.c_man_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i32*, i8*, i8**)* @man_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @man_args(%struct.roff_man* %0, i32 %1, i32* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.roff_man*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %10, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %12, align 8
  %21 = load i8**, i8*** %11, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 32, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 0, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %42

33:                                               ; preds = %5
  %34 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %35 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i8* @roff_getarg(i32 %36, i8** %37, i32 %38, i32* %39)
  %41 = load i8**, i8*** %11, align 8
  store i8* %40, i8** %41, align 8
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %33, %32
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @roff_getarg(i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
