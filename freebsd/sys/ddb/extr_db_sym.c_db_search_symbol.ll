; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_search_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_search_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_DB_SYM_NULL = common dso_local global i32 0, align 4
@db_nsymtab = common dso_local global i32 0, align 4
@db_symtabs = common dso_local global i32* null, align 8
@db_last_symtab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_search_symbol(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @C_DB_SYM_NULL, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %7, align 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %40, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @db_nsymtab, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load i32*, i32** @db_symtabs, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @X_db_search_symbol(i32* %23, i32 %24, i32 %25, i64* %8)
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load i32*, i32** @db_symtabs, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** @db_last_symtab, align 8
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %31, %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32 @X_db_search_symbol(i32*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
