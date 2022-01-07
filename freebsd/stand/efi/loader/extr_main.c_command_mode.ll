; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_command_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_command_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i64*, i64*)*, %struct.TYPE_7__*, i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_7__ = type { i32, i32 }

@ST = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Invalid mode\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid mode %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"couldn't set mode %d\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Current mode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Mode %d: %u columns, %u rows\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Select a mode with the command \22mode <number>\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_mode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ST, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %12, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %62

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strtol(i8* %21, i8** %10, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @CMD_ERROR, align 4
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %18
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_8__*, i32, i64*, i64*)*, i32 (%struct.TYPE_8__*, i32, i64*, i64*)** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 %34(%struct.TYPE_8__* %35, i32 %36, i64* %6, i64* %7)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @EFI_ERROR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @CMD_ERROR, align 4
  store i32 %44, i32* %3, align 4
  br label %105

45:                                               ; preds = %31
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 %48(%struct.TYPE_8__* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @EFI_ERROR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @CMD_ERROR, align 4
  store i32 %58, i32* %3, align 4
  br label %105

59:                                               ; preds = %45
  %60 = call i32 (...) @efi_cons_update_mode()
  %61 = load i32, i32* @CMD_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %105

62:                                               ; preds = %2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %95, %62
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %70, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %69
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_8__*, i32, i64*, i64*)*, i32 (%struct.TYPE_8__*, i32, i64*, i64*)** %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 %80(%struct.TYPE_8__* %81, i32 %82, i64* %6, i64* %7)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @EFI_ERROR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %95

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  %90 = load i64, i64* %6, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, i64* %7, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %88, %87
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %69

98:                                               ; preds = %69
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* @CMD_OK, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %59, %55, %41, %28
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @EFI_ERROR(i32) #1

declare dso_local i32 @efi_cons_update_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
