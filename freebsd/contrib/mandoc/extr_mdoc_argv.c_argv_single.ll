; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_argv_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_argv_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }
%struct.mdoc_argv = type { i32, i8** }

@ARGSFL_NONE = common dso_local global i32 0, align 4
@ARGS_EOLN = common dso_local global i32 0, align 4
@ARGS_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32, %struct.mdoc_argv*, i32*, i8*)* @argv_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argv_single(%struct.roff_man* %0, i32 %1, %struct.mdoc_argv* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdoc_argv*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mdoc_argv* %2, %struct.mdoc_argv** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i32, i32* @ARGSFL_NONE, align 4
  %18 = call i32 @args(%struct.roff_man* %13, i32 %14, i32* %15, i8* %16, i32 %17, i8** %12)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @ARGS_EOLN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %41

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @ARGS_ALLOC, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %12, align 8
  %29 = call i8* @mandoc_strdup(i8* %28)
  store i8* %29, i8** %12, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %32 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = call i8** @mandoc_malloc(i32 8)
  %34 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %35 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %34, i32 0, i32 1
  store i8** %33, i8*** %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %38 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %30, %22
  ret void
}

declare dso_local i32 @args(%struct.roff_man*, i32, i32*, i8*, i32, i8**) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i8** @mandoc_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
