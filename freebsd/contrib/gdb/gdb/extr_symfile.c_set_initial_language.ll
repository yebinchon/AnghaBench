; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_set_initial_language.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_set_initial_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32* }

@language_unknown = common dso_local global i32 0, align 4
@language_c = common dso_local global i32 0, align 4
@current_language = common dso_local global i32 0, align 4
@expected_language = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_initial_language to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_initial_language() #0 {
  %1 = alloca %struct.partial_symtab*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @language_unknown, align 4
  store i32 %3, i32* %2, align 4
  %4 = call %struct.partial_symtab* (...) @find_main_psymtab()
  store %struct.partial_symtab* %4, %struct.partial_symtab** %1, align 8
  %5 = load %struct.partial_symtab*, %struct.partial_symtab** %1, align 8
  %6 = icmp ne %struct.partial_symtab* %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %0
  %8 = load %struct.partial_symtab*, %struct.partial_symtab** %1, align 8
  %9 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.partial_symtab*, %struct.partial_symtab** %1, align 8
  %14 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @deduce_language_from_filename(i32* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %7
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @language_unknown, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @language_c, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @set_language(i32 %24)
  %26 = load i32, i32* @current_language, align 4
  store i32 %26, i32* @expected_language, align 4
  br label %27

27:                                               ; preds = %23, %0
  ret void
}

declare dso_local %struct.partial_symtab* @find_main_psymtab(...) #1

declare dso_local i32 @deduce_language_from_filename(i32*) #1

declare dso_local i32 @set_language(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
