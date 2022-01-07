; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_serial_logchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_serial_logchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@serial_current_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0A%c \00", align 1
@serial_logbase = common dso_local global i64 0, align 8
@logbase_ascii = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"<Timeout: %d seconds>\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"<Error: %s>\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"<Eof>\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<Break>\00", align 1
@logbase_hex = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@logbase_octal = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, i32, i32, i32)* @serial_logchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_logchar(%struct.ui_file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @serial_current_type, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @fprintf_unfiltered(%struct.ui_file* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* @serial_current_type, align 4
  br label %17

17:                                               ; preds = %12, %4
  %18 = load i64, i64* @serial_logbase, align 8
  %19 = load i64, i64* @logbase_ascii, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %23 = call i32 @fputc_unfiltered(i8 signext 32, %struct.ui_file* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %41 [
    i32 128, label %26
    i32 129, label %30
    i32 130, label %35
    i32 131, label %38
  ]

26:                                               ; preds = %24
  %27 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @fprintf_unfiltered(%struct.ui_file* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %95

30:                                               ; preds = %24
  %31 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @safe_strerror(i32 %32)
  %34 = call i32 @fprintf_unfiltered(%struct.ui_file* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %95

35:                                               ; preds = %24
  %36 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %37 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %36)
  br label %95

38:                                               ; preds = %24
  %39 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %40 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %39)
  br label %95

41:                                               ; preds = %24
  %42 = load i64, i64* @serial_logbase, align 8
  %43 = load i64, i64* @logbase_hex, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @fprintf_unfiltered(%struct.ui_file* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  br label %94

50:                                               ; preds = %41
  %51 = load i64, i64* @serial_logbase, align 8
  %52 = load i64, i64* @logbase_octal, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 255
  %58 = call i32 @fprintf_unfiltered(%struct.ui_file* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  br label %93

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %82 [
    i32 92, label %61
    i32 8, label %64
    i32 12, label %67
    i32 10, label %70
    i32 13, label %73
    i32 9, label %76
    i32 11, label %79
  ]

61:                                               ; preds = %59
  %62 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %63 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %62)
  br label %92

64:                                               ; preds = %59
  %65 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %66 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %65)
  br label %92

67:                                               ; preds = %59
  %68 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %69 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %struct.ui_file* %68)
  br label %92

70:                                               ; preds = %59
  %71 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %72 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %71)
  br label %92

73:                                               ; preds = %59
  %74 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %75 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %74)
  br label %92

76:                                               ; preds = %59
  %77 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %78 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), %struct.ui_file* %77)
  br label %92

79:                                               ; preds = %59
  %80 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %81 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %80)
  br label %92

82:                                               ; preds = %59
  %83 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @isprint(i32 %84) #3
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 255
  %91 = call i32 @fprintf_unfiltered(%struct.ui_file* %83, i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61
  br label %93

93:                                               ; preds = %92, %54
  br label %94

94:                                               ; preds = %93, %45
  br label %95

95:                                               ; preds = %26, %30, %35, %38, %94
  ret void
}

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, i32) #1

declare dso_local i32 @fputc_unfiltered(i8 signext, %struct.ui_file*) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @fputs_unfiltered(i8*, %struct.ui_file*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
