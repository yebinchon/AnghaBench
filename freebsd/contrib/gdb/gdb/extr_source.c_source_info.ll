; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_source_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_source_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i8*, i8*, i8*, i32, i8*, i64, i32 }

@current_source_symtab = common dso_local global %struct.symtab* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"No current source file.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Current source file is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Compilation directory is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Located in %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Contains %d line%s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Source language is %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Compiled with %s debugging format.\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%s preprocessor macro info.\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Includes\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Does not include\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @source_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @source_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symtab*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.symtab*, %struct.symtab** @current_source_symtab, align 8
  store %struct.symtab* %6, %struct.symtab** %5, align 8
  %7 = load %struct.symtab*, %struct.symtab** %5, align 8
  %8 = icmp ne %struct.symtab* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %68

11:                                               ; preds = %2
  %12 = load %struct.symtab*, %struct.symtab** %5, align 8
  %13 = getelementptr inbounds %struct.symtab, %struct.symtab* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load %struct.symtab*, %struct.symtab** %5, align 8
  %17 = getelementptr inbounds %struct.symtab, %struct.symtab* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.symtab*, %struct.symtab** %5, align 8
  %22 = getelementptr inbounds %struct.symtab, %struct.symtab* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %20, %11
  %26 = load %struct.symtab*, %struct.symtab** %5, align 8
  %27 = getelementptr inbounds %struct.symtab, %struct.symtab* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.symtab*, %struct.symtab** %5, align 8
  %32 = getelementptr inbounds %struct.symtab, %struct.symtab* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.symtab*, %struct.symtab** %5, align 8
  %37 = getelementptr inbounds %struct.symtab, %struct.symtab* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.symtab*, %struct.symtab** %5, align 8
  %42 = getelementptr inbounds %struct.symtab, %struct.symtab* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.symtab*, %struct.symtab** %5, align 8
  %45 = getelementptr inbounds %struct.symtab, %struct.symtab* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %50 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %43, i8* %49)
  br label %51

51:                                               ; preds = %40, %35
  %52 = load %struct.symtab*, %struct.symtab** %5, align 8
  %53 = getelementptr inbounds %struct.symtab, %struct.symtab* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @language_str(i32 %54)
  %56 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %55)
  %57 = load %struct.symtab*, %struct.symtab** %5, align 8
  %58 = getelementptr inbounds %struct.symtab, %struct.symtab* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %59)
  %61 = load %struct.symtab*, %struct.symtab** %5, align 8
  %62 = getelementptr inbounds %struct.symtab, %struct.symtab* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %51, %9
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i8* @language_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
