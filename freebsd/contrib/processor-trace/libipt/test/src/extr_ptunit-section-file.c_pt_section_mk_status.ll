; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section-file.c_pt_section_mk_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section-file.c_pt_section_mk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_file_status = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@pte_bad_image = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_mk_status(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pt_file_status*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %65

20:                                               ; preds = %14
  %21 = load i8*, i8** %7, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @pte_bad_image, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %65

28:                                               ; preds = %20
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @SEEK_END, align 4
  %31 = call i32 @fseek(i32* %29, i32 0, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @pte_bad_image, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @ftell(i32* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @pte_bad_image, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %61

45:                                               ; preds = %37
  %46 = call %struct.pt_file_status* @malloc(i32 8)
  store %struct.pt_file_status* %46, %struct.pt_file_status** %8, align 8
  %47 = load %struct.pt_file_status*, %struct.pt_file_status** %8, align 8
  %48 = icmp ne %struct.pt_file_status* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @pte_nomem, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %61

52:                                               ; preds = %45
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.pt_file_status*, %struct.pt_file_status** %8, align 8
  %55 = getelementptr inbounds %struct.pt_file_status, %struct.pt_file_status* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.pt_file_status*, %struct.pt_file_status** %8, align 8
  %57 = bitcast %struct.pt_file_status* %56 to i8*
  %58 = load i8**, i8*** %5, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %52, %49, %42, %34
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %25, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local %struct.pt_file_status* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
