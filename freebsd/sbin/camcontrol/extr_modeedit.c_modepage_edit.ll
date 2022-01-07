; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_modepage_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_modepage_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@DEFAULT_EDITOR = common dso_local global i8* null, align 8
@edit_path = common dso_local global i8* null, align 8
@EX_CANTCREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"mkstemp failed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@edit_file = common dso_local global i32* null, align 8
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"no editable entries\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"could not invoke %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @modepage_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modepage_edit() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @stdin, align 8
  %6 = call i32 @fileno(i32* %5)
  %7 = call i32 @isatty(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32*, i32** @stdin, align 8
  %11 = call i32 @modepage_read(i32* %10)
  br label %82

12:                                               ; preds = %0
  %13 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %1, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i8*, i8** @DEFAULT_EDITOR, align 8
  store i8* %16, i8** %1, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i8*, i8** @edit_path, align 8
  %19 = call i32 @mkstemp(i8* %18)
  store i32 %19, i32* %3, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EX_CANTCREAT, align 4
  %23 = call i32 @errx(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %17
  %25 = call i32 @atexit(i32 (...)* @cleanup_editfile)
  %26 = load i32, i32* %3, align 4
  %27 = call i32* @fdopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** @edit_file, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @EX_NOINPUT, align 4
  %31 = load i8*, i8** @edit_path, align 8
  %32 = call i32 (i32, i8*, ...) @err(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32*, i32** @edit_file, align 8
  %35 = call i32 @modepage_write(i32* %34, i32 1)
  store i32 %35, i32* %4, align 4
  %36 = load i32*, i32** @edit_file, align 8
  %37 = call i32 @fclose(i32* %36)
  store i32* null, i32** @edit_file, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 (...) @cleanup_editfile()
  br label %82

43:                                               ; preds = %33
  %44 = load i8*, i8** %1, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = load i8*, i8** @edit_path, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %45, %47
  %49 = add nsw i64 %48, 2
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %2, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EX_OSERR, align 4
  %55 = call i32 (i32, i8*, ...) @err(i32 %54, i8* null)
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i8*, i8** %2, align 8
  %58 = load i8*, i8** %1, align 8
  %59 = load i8*, i8** @edit_path, align 8
  %60 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @system(i8* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @EX_UNAVAILABLE, align 4
  %66 = load i8*, i8** %1, align 8
  %67 = call i32 (i32, i8*, ...) @err(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** @edit_path, align 8
  %72 = call i32* @fopen(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %72, i32** @edit_file, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @EX_NOINPUT, align 4
  %76 = load i8*, i8** @edit_path, align 8
  %77 = call i32 (i32, i8*, ...) @err(i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32*, i32** @edit_file, align 8
  %80 = call i32 @modepage_read(i32* %79)
  %81 = call i32 (...) @cleanup_editfile()
  br label %82

82:                                               ; preds = %78, %40, %9
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @modepage_read(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @atexit(i32 (...)*) #1

declare dso_local i32 @cleanup_editfile(...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @modepage_write(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
