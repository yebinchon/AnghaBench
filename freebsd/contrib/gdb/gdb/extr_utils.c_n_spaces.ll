; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_n_spaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_n_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_spaces.spaces = internal global i8* null, align 8
@n_spaces.max_spaces = internal global i32 -1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @n_spaces(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @n_spaces.max_spaces, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load i8*, i8** @n_spaces.spaces, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i8*, i8** @n_spaces.spaces, align 8
  %12 = call i32 @xfree(i8* %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i64 @xmalloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @n_spaces.spaces, align 8
  %18 = load i8*, i8** @n_spaces.spaces, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %26, %13
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** @n_spaces.spaces, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %3, align 8
  store i8 32, i8* %28, align 1
  br label %22

29:                                               ; preds = %22
  %30 = load i8*, i8** @n_spaces.spaces, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* @n_spaces.max_spaces, align 4
  br label %35

35:                                               ; preds = %29, %1
  %36 = load i8*, i8** @n_spaces.spaces, align 8
  %37 = load i32, i32* @n_spaces.max_spaces, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  ret i8* %43
}

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
