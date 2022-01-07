; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_symbol_file_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_symbol_file_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@OBJF_USERLOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"-readnow\00", align 1
@OBJF_READNOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown option `%s'\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"no symbol file name was specified\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol_file_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %6, align 8
  %9 = load i32, i32* @OBJF_USERLOADED, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @dont_repeat()
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @symbol_file_clear(i32 %14)
  br label %67

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i8** @buildargv(i8* %17)
  store i8** %18, i8*** %5, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @nomem(i32 0)
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i8**, i8*** %5, align 8
  %24 = call %struct.cleanup* @make_cleanup_freeargv(i8** %23)
  store %struct.cleanup* %24, %struct.cleanup** %7, align 8
  br label %25

25:                                               ; preds = %56, %22
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @OBJF_READNOW, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %56

38:                                               ; preds = %29
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %55

48:                                               ; preds = %38
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @symbol_file_add_main_1(i8* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  br label %25

59:                                               ; preds = %25
  %60 = load i8*, i8** %6, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %66 = call i32 @do_cleanups(%struct.cleanup* %65)
  br label %67

67:                                               ; preds = %64, %13
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @symbol_file_clear(i32) #1

declare dso_local i8** @buildargv(i8*) #1

declare dso_local i32 @nomem(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_freeargv(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @symbol_file_add_main_1(i8*, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
