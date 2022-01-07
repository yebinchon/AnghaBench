; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_argv_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_argv_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }
%struct.mdoc_argv = type { i32, i8** }

@ARGSFL_NONE = common dso_local global i32 0, align 4
@ARGS_EOLN = common dso_local global i32 0, align 4
@MULTI_STEP = common dso_local global i32 0, align 4
@ARGS_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32, %struct.mdoc_argv*, i32*, i8*)* @argv_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argv_multi(%struct.roff_man* %0, i32 %1, %struct.mdoc_argv* %2, i32* %3, i8* %4) #0 {
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
  %13 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %14 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  br label %15

15:                                               ; preds = %72, %5
  %16 = load i8*, i8** %10, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %77

25:                                               ; preds = %15
  %26 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @ARGSFL_NONE, align 4
  %31 = call i32 @args(%struct.roff_man* %26, i32 %27, i32* %28, i8* %29, i32 %30, i8** %12)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ARGS_EOLN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %77

36:                                               ; preds = %25
  %37 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %38 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MULTI_STEP, align 4
  %41 = srem i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %45 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %48 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MULTI_STEP, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i8** @mandoc_reallocarray(i8** %46, i32 %51, i32 8)
  %53 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %54 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %53, i32 0, i32 1
  store i8** %52, i8*** %54, align 8
  br label %55

55:                                               ; preds = %43, %36
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ARGS_ALLOC, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %12, align 8
  %61 = call i8* @mandoc_strdup(i8* %60)
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %65 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %68 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %66, i64 %70
  store i8* %63, i8** %71, align 8
  br label %72

72:                                               ; preds = %62
  %73 = load %struct.mdoc_argv*, %struct.mdoc_argv** %8, align 8
  %74 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %15

77:                                               ; preds = %35, %24
  ret void
}

declare dso_local i32 @args(%struct.roff_man*, i32, i32*, i8*, i32, i8**) #1

declare dso_local i8** @mandoc_reallocarray(i8**, i32, i32) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
