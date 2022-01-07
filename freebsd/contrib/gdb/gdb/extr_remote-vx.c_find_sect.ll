; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_find_sect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_find_sect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_sect_args = type { i8*, i8*, i8* }

@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @find_sect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_sect(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.find_sect_args*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.find_sect_args*
  store %struct.find_sect_args* %9, %struct.find_sect_args** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @bfd_get_section_flags(i32* %10, i32* %11)
  %13 = load i32, i32* @SEC_CODE, align 4
  %14 = load i32, i32* @SEC_READONLY, align 4
  %15 = and i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @bfd_get_section_vma(i32* %19, i32* %20)
  %22 = load %struct.find_sect_args*, %struct.find_sect_args** %7, align 8
  %23 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  br label %60

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @bfd_get_section_flags(i32* %25, i32* %26)
  %28 = load i32, i32* @SEC_ALLOC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @bfd_get_section_flags(i32* %32, i32* %33)
  %35 = load i32, i32* @SEC_LOAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @bfd_get_section_flags(i32* %39, i32* %40)
  %42 = load i32, i32* @SEC_DATA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @bfd_get_section_vma(i32* %46, i32* %47)
  %49 = load %struct.find_sect_args*, %struct.find_sect_args** %7, align 8
  %50 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %45, %38
  br label %58

52:                                               ; preds = %31
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @bfd_get_section_vma(i32* %53, i32* %54)
  %56 = load %struct.find_sect_args*, %struct.find_sect_args** %7, align 8
  %57 = getelementptr inbounds %struct.find_sect_args, %struct.find_sect_args* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %52, %51
  br label %59

59:                                               ; preds = %58, %24
  br label %60

60:                                               ; preds = %59, %18
  ret void
}

declare dso_local i32 @bfd_get_section_flags(i32*, i32*) #1

declare dso_local i8* @bfd_get_section_vma(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
