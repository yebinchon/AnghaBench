; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_append_delims.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_append_delims.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TOKEN_NONE = common dso_local global i32 0, align 4
@ARGS_EOLN = common dso_local global i32 0, align 4
@DELIM_MAX = common dso_local global i32 0, align 4
@NODE_EOS = common dso_local global i32 0, align 4
@ARGS_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32, i32*, i8*)* @append_delims to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_delims(%struct.roff_man* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.roff_man*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %63

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %62, %21
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @TOKEN_NONE, align 4
  %30 = call i32 @mdoc_args(%struct.roff_man* %25, i32 %26, i32* %27, i8* %28, i32 %29, i8** %9)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @ARGS_EOLN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %63

35:                                               ; preds = %22
  %36 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @DELIM_MAX, align 4
  %41 = call i32 @dword(%struct.roff_man* %36, i32 %37, i32 %38, i8* %39, i32 %40, i32 1)
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i64 @mandoc_eos(i8* %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load i32, i32* @NODE_EOS, align 4
  %49 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %50 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %35
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ARGS_ALLOC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %22

63:                                               ; preds = %20, %34
  ret void
}

declare dso_local i32 @mdoc_args(%struct.roff_man*, i32, i32*, i8*, i32, i8**) #1

declare dso_local i32 @dword(%struct.roff_man*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @mandoc_eos(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
