; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_binary_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_binary_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@BITS_IN_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_binary_chars(%struct.ui_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 128, i32* %10, align 4
  %11 = call i32 (...) @local_binary_format_prefix()
  %12 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %13 = call i32 @fputs_filtered(i32 %11, %struct.ui_file* %12)
  %14 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %15 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %49, %17
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = icmp ult i8* %20, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %29, 8
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 128, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %41

40:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @fprintf_filtered(%struct.ui_file* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %27

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %19

52:                                               ; preds = %19
  br label %90

53:                                               ; preds = %3
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %86, %53
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp uge i8* %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %66, 8
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 128, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 1, i32* %9, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @fprintf_filtered(%struct.ui_file* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %64

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %7, align 8
  br label %59

89:                                               ; preds = %59
  br label %90

90:                                               ; preds = %89, %52
  %91 = call i32 (...) @local_binary_format_suffix()
  %92 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %93 = call i32 @fputs_filtered(i32 %91, %struct.ui_file* %92)
  ret void
}

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @local_binary_format_prefix(...) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32) #1

declare dso_local i32 @local_binary_format_suffix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
