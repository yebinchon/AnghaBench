; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_identify_source_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_identify_source_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i64, i32, i32* }

@current_source_line = common dso_local global i32 0, align 4
@first_line_listed = common dso_local global i32 0, align 4
@last_line_listed = common dso_local global i32 0, align 4
@current_source_symtab = common dso_local global %struct.symtab* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @identify_source_line(%struct.symtab* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symtab*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.symtab* %0, %struct.symtab** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.symtab*, %struct.symtab** %6, align 8
  %11 = getelementptr inbounds %struct.symtab, %struct.symtab* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.symtab*, %struct.symtab** %6, align 8
  %16 = call i32 @get_filename_and_charpos(%struct.symtab* %15, i8** null)
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.symtab*, %struct.symtab** %6, align 8
  %19 = getelementptr inbounds %struct.symtab, %struct.symtab* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %50

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.symtab*, %struct.symtab** %6, align 8
  %26 = getelementptr inbounds %struct.symtab, %struct.symtab* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load %struct.symtab*, %struct.symtab** %6, align 8
  %32 = getelementptr inbounds %struct.symtab, %struct.symtab* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.symtab*, %struct.symtab** %6, align 8
  %36 = getelementptr inbounds %struct.symtab, %struct.symtab* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @annotate_source(i64 %33, i32 %34, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* @current_source_line, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* @first_line_listed, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* @last_line_listed, align 4
  %49 = load %struct.symtab*, %struct.symtab** %6, align 8
  store %struct.symtab* %49, %struct.symtab** @current_source_symtab, align 8
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %30, %29, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @get_filename_and_charpos(%struct.symtab*, i8**) #1

declare dso_local i32 @annotate_source(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
