; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_get_debug_link_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_get_debug_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c".gnu_debuglink\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.objfile*, i64*)* @get_debug_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_debug_link_info(%struct.objfile* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.objfile*, %struct.objfile** %4, align 8
  %13 = getelementptr inbounds %struct.objfile, %struct.objfile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @bfd_get_section_by_name(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.objfile*, %struct.objfile** %4, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @bfd_section_size(i32 %22, i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @xmalloc(i64 %25)
  store i8* %26, i8** %9, align 8
  %27 = load %struct.objfile*, %struct.objfile** %4, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @bfd_get_section_contents(i32 %29, i32* %30, i8* %31, i32 0, i64 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 3
  %39 = and i32 %38, -4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.objfile*, %struct.objfile** %4, align 8
  %41 = getelementptr inbounds %struct.objfile, %struct.objfile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = bitcast i8* %46 to i32*
  %48 = call i64 @bfd_get_32(i32 %42, i32* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i8*, i8** %9, align 8
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %19, %18
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i64 @bfd_section_size(i32, i32*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @bfd_get_section_contents(i32, i32*, i8*, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @bfd_get_32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
