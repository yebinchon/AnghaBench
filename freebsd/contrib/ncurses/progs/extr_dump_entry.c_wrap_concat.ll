; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_wrap_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_wrap_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@separator = common dso_local global i8* null, align 8
@column = common dso_local global i64 0, align 8
@INDENT = common dso_local global i64 0, align 8
@width = common dso_local global i64 0, align 8
@outbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wrap_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_concat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i8*, i8** @separator, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @column, align 8
  %12 = load i64, i64* @INDENT, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i64, i64* @column, align 8
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = load i64, i64* @width, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (...) @force_wrap()
  br label %24

24:                                               ; preds = %22, %14, %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strcpy_DYN(i32* @outbuf, i8* %25)
  %27 = load i8*, i8** @separator, align 8
  %28 = call i32 @strcpy_DYN(i32* @outbuf, i8* %27)
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @column, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* @column, align 8
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @force_wrap(...) #1

declare dso_local i32 @strcpy_DYN(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
