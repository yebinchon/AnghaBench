; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_get_filename_and_charpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_get_filename_and_charpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symtab*, i8**)* @get_filename_and_charpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_filename_and_charpos(%struct.symtab* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symtab*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.symtab* %0, %struct.symtab** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.symtab*, %struct.symtab** %4, align 8
  %9 = call i32 @open_source_file(%struct.symtab* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i8**, i8*** %5, align 8
  store i8* null, i8** %16, align 8
  br label %17

17:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.symtab*, %struct.symtab** %4, align 8
  %23 = getelementptr inbounds %struct.symtab, %struct.symtab* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %5, align 8
  store i8* %24, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %18
  %27 = load %struct.symtab*, %struct.symtab** %4, align 8
  %28 = getelementptr inbounds %struct.symtab, %struct.symtab* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.symtab*, %struct.symtab** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @find_source_lines(%struct.symtab* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @open_source_file(%struct.symtab*) #1

declare dso_local i32 @find_source_lines(%struct.symtab*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
