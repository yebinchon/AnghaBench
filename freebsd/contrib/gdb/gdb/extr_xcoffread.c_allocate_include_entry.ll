; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_allocate_include_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_allocate_include_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inclTable = common dso_local global i32* null, align 8
@INITIAL_INCLUDE_TABLE_LENGTH = common dso_local global i32 0, align 4
@inclLength = common dso_local global i32 0, align 4
@inclIndx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @allocate_include_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_include_entry() #0 {
  %1 = load i32*, i32** @inclTable, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load i32, i32* @INITIAL_INCLUDE_TABLE_LENGTH, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 4, %5
  %7 = trunc i64 %6 to i32
  %8 = call i64 @xmalloc(i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @inclTable, align 8
  %10 = load i32*, i32** @inclTable, align 8
  %11 = load i32, i32* @INITIAL_INCLUDE_TABLE_LENGTH, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(i32* %10, i8 signext 0, i32 %14)
  %16 = load i32, i32* @INITIAL_INCLUDE_TABLE_LENGTH, align 4
  store i32 %16, i32* @inclLength, align 4
  store i32 0, i32* @inclIndx, align 4
  br label %46

17:                                               ; preds = %0
  %18 = load i32, i32* @inclIndx, align 4
  %19 = load i32, i32* @inclLength, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load i32, i32* @INITIAL_INCLUDE_TABLE_LENGTH, align 4
  %23 = load i32, i32* @inclLength, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* @inclLength, align 4
  %25 = load i32*, i32** @inclTable, align 8
  %26 = load i32, i32* @inclLength, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @xrealloc(i32* %25, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** @inclTable, align 8
  %32 = load i32*, i32** @inclTable, align 8
  %33 = load i32, i32* @inclLength, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @INITIAL_INCLUDE_TABLE_LENGTH, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* @INITIAL_INCLUDE_TABLE_LENGTH, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i32* %39, i8 signext 0, i32 %43)
  br label %45

45:                                               ; preds = %21, %17
  br label %46

46:                                               ; preds = %45, %3
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i64 @xrealloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
