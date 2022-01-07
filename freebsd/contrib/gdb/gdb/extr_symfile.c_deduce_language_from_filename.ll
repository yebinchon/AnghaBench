; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_deduce_language_from_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_deduce_language_from_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@fl_table_next = common dso_local global i32 0, align 4
@filename_language_table = common dso_local global %struct.TYPE_2__* null, align 8
@language_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deduce_language_from_filename(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strrchr(i8* %9, i8 signext 46)
  store i8* %10, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @fl_table_next, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filename_language_table, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i8* %18, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filename_language_table, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %13

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38, %8
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* @language_unknown, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
