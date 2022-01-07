; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_find_linenos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_find_linenos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd = type { i32 }
%struct.bfd_section = type { i32, i64, i32 }
%struct.coff_symfile_info = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd*, %struct.bfd_section*, i8*)* @find_linenos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_linenos(%struct.bfd* %0, %struct.bfd_section* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.coff_symfile_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bfd* %0, %struct.bfd** %4, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %13 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %16 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DEPRECATED_STREQ(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  br label %64

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.bfd*, %struct.bfd** %4, align 8
  %27 = call %struct.TYPE_2__* @coff_data(%struct.bfd* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %25, %29
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.coff_symfile_info*
  store %struct.coff_symfile_info* %32, %struct.coff_symfile_info** %7, align 8
  %33 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %34 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %42 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %24
  %46 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %47 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %24
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %53 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %57 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %63 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %23, %60, %54
  ret void
}

declare dso_local i32 @DEPRECATED_STREQ(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @coff_data(%struct.bfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
