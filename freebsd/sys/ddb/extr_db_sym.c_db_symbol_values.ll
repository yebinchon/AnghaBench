; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_symbol_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_symbol_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@DB_SYM_NULL = common dso_local global i64 0, align 8
@db_last_symtab = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_symbol_values(i64 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @DB_SYM_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i8**, i8*** %5, align 8
  store i8* null, i8** %12, align 8
  br label %34

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @db_last_symtab, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @X_db_symbol_values(%struct.TYPE_3__* %14, i64 %15, i8** %16, i32* %7)
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @db_symbol_is_ambiguous(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @db_last_symtab, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @db_qualify(i64 %22, i32 %25)
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  br label %28

28:                                               ; preds = %21, %13
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %11, %31, %28
  ret void
}

declare dso_local i32 @X_db_symbol_values(%struct.TYPE_3__*, i64, i8**, i32*) #1

declare dso_local i64 @db_symbol_is_ambiguous(i64) #1

declare dso_local i8* @db_qualify(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
