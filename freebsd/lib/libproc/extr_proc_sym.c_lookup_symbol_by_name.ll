; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_lookup_symbol_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_lookup_symbol_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.symtab*, i8*, %struct.TYPE_9__*, %struct.TYPE_8__*)* @lookup_symbol_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_symbol_by_name(i32* %0, %struct.symtab* %1, i8* %2, %struct.TYPE_9__* %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.symtab*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.symtab* %1, %struct.symtab** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.symtab*, %struct.symtab** %8, align 8
  %17 = getelementptr inbounds %struct.symtab, %struct.symtab* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %6, align 4
  br label %62

22:                                               ; preds = %5
  %23 = load %struct.symtab*, %struct.symtab** %8, align 8
  %24 = getelementptr inbounds %struct.symtab, %struct.symtab* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %57, %22
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32* @gelf_getsym(i32* %27, i32 %28, %struct.TYPE_9__* %12)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.symtab*, %struct.symtab** %8, align 8
  %34 = getelementptr inbounds %struct.symtab, %struct.symtab* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @elf_strptr(i32* %32, i32 %35, i32 %37)
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @strcmp(i8* %42, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = call i32 @memcpy(%struct.TYPE_9__* %47, %struct.TYPE_9__* %12, i32 4)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %46
  store i32 0, i32* %6, align 4
  br label %62

56:                                               ; preds = %41, %31
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %55, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32* @gelf_getsym(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
