; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_dll_code_sections_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_dll_code_sections_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.target_ops* }

@.str = private unnamed_addr constant [9 x i8] c"pei-i386\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@map_single_dll_code_section = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.target_ops*)* @dll_code_sections_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dll_code_sections_add(i8* %0, i32 %1, %struct.target_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.target_ops* %2, %struct.target_ops** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %16 = icmp eq %struct.target_ops* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %51

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @xstrdup(i8* %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32* @bfd_openr(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @bfd_object, align 4
  %29 = call i64 @bfd_check_format(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @bfd_get_section_by_name(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %51

37:                                               ; preds = %31
  %38 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.target_ops* %38, %struct.target_ops** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @bfd_section_vma(i32* %42, i32* %43)
  %45 = sub nsw i64 %41, %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = bitcast %struct.TYPE_2__* %9 to i8*
  %49 = call i32 @bfd_map_over_sections(i32* %47, i32* @map_single_dll_code_section, i8* %48)
  br label %50

50:                                               ; preds = %37, %26
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %36, %25, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i64 @bfd_section_vma(i32*, i32*) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
