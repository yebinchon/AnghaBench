; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_rewrite_macro2len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_rewrite_macro2len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"Ds\00", align 1
@TOKEN_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%zun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i8**)* @rewrite_macro2len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite_macro2len(%struct.roff_man* %0, i8** %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %39

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i64 6, i64* %5, align 8
  br label %31

17:                                               ; preds = %11
  %18 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %19 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @roffhash_find(i32 %20, i8* %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @TOKEN_NONE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %39

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @macro2len(i32 %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8**, i8*** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @mandoc_asprintf(i8** %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %32, %26, %10
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @roffhash_find(i32, i8*, i32) #1

declare dso_local i64 @macro2len(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
