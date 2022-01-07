; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_hex_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_hex_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hex_chars(%struct.ui_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @local_hex_format_prefix()
  %9 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %10 = call i32 @fputs_filtered(i32 %8, %struct.ui_file* %9)
  %11 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %12 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %28, %14
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = icmp ult i8* %17, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @fprintf_filtered(%struct.ui_file* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 zeroext %26)
  br label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  br label %16

31:                                               ; preds = %16
  br label %51

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %47, %32
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp uge i8* %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @fprintf_filtered(%struct.ui_file* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 zeroext %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %7, align 8
  br label %38

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %31
  %52 = call i32 (...) @local_hex_format_suffix()
  %53 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %54 = call i32 @fputs_filtered(i32 %52, %struct.ui_file* %53)
  ret void
}

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @local_hex_format_prefix(...) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8 zeroext) #1

declare dso_local i32 @local_hex_format_suffix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
