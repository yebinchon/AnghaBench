; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_markdown.c_md_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@md_stack.stack = internal global i8* null, align 8
@md_stack.sz = internal global i64 0, align 8
@md_stack.cur = internal global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @md_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @md_stack(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  switch i32 %4, label %13 [
    i32 0, label %5
    i32 -1, label %6
  ]

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load i64, i64* @md_stack.cur, align 8
  %8 = call i32 @assert(i64 %7)
  %9 = load i8*, i8** @md_stack.stack, align 8
  %10 = load i64, i64* @md_stack.cur, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* @md_stack.cur, align 8
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8 0, i8* %12, align 1
  br label %33

13:                                               ; preds = %1
  %14 = load i64, i64* @md_stack.cur, align 8
  %15 = add i64 %14, 1
  %16 = load i64, i64* @md_stack.sz, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* @md_stack.sz, align 8
  %20 = add i64 %19, 8
  store i64 %20, i64* @md_stack.sz, align 8
  %21 = load i8*, i8** @md_stack.stack, align 8
  %22 = load i64, i64* @md_stack.sz, align 8
  %23 = call i8* @mandoc_realloc(i8* %21, i64 %22)
  store i8* %23, i8** @md_stack.stack, align 8
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i8, i8* %2, align 1
  %26 = load i8*, i8** @md_stack.stack, align 8
  %27 = load i64, i64* @md_stack.cur, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %28, align 1
  %29 = load i8*, i8** @md_stack.stack, align 8
  %30 = load i64, i64* @md_stack.cur, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* @md_stack.cur, align 8
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %24, %6, %5
  %34 = load i8*, i8** @md_stack.stack, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** @md_stack.stack, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %36 ], [ %38, %37 ]
  ret i8* %40
}

declare dso_local i32 @assert(i64) #1

declare dso_local i8* @mandoc_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
