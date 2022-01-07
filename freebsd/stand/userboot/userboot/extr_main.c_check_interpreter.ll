; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_main.c_check_interpreter.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_main.c_check_interpreter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@LOADER_PATH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@INTERP_MARKER = common dso_local global i32 0, align 4
@bootprog_interp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"4th\00", align 1
@swap_interpreter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_interpreter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_interpreter() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* @LOADER_PATH, align 4
  %9 = call i64 @stat(i32 %8, %struct.stat* %1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %66

12:                                               ; preds = %0
  %13 = load i32, i32* @LOADER_PATH, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %66

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %61

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @read(i32 %27, i8* %28, i64 %29)
  %31 = load i64, i64* %3, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %61

34:                                               ; preds = %26
  %35 = load i32, i32* @INTERP_MARKER, align 4
  %36 = call i64 @strlen(i32 %35)
  store i64 %36, i64* %2, align 8
  %37 = load i8*, i8** @bootprog_interp, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* @INTERP_MARKER, align 4
  %43 = load i64, i64* %2, align 8
  %44 = call i8* @memmem(i8* %40, i64 %41, i32 %42, i64 %43)
  store i8* %44, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i64, i64* %2, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %4, align 8
  br label %51

50:                                               ; preds = %34
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @swap_interpreter, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @CALLBACK(i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %33, %25
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %61, %17, %11
  ret void
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @memmem(i8*, i64, i32, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @CALLBACK(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
