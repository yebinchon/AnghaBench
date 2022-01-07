; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_mk_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_mk_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i8*, i32, i32*, i32, i32, i8*, i8* }

@pte_nomem = common dso_local global i32 0, align 4
@mtx_plain = common dso_local global i32 0, align 4
@pte_bad_lock = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_mk_section(%struct.pt_section** %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_section**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pt_section*, align 8
  %11 = alloca i32, align 4
  store %struct.pt_section** %0, %struct.pt_section*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call %struct.pt_section* @malloc(i32 48)
  store %struct.pt_section* %12, %struct.pt_section** %10, align 8
  %13 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %14 = icmp ne %struct.pt_section* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @pte_nomem, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %50

18:                                               ; preds = %4
  %19 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %20 = call i32 @memset(%struct.pt_section* %19, i32 0, i32 48)
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %23 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %26 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %29 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %31 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %44, %18
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 8
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %39 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %49 = load %struct.pt_section**, %struct.pt_section*** %6, align 8
  store %struct.pt_section* %48, %struct.pt_section** %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.pt_section* @malloc(i32) #1

declare dso_local i32 @memset(%struct.pt_section*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
