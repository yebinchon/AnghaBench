; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_write_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_write_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_opt = type { i8*, i32, i32 }
%struct.cleanup = type { i32 }

@mi_cmd_data_write_memory.opts = internal global [2 x %struct.mi_opt] [%struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 1 }, %struct.mi_opt zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"mi_cmd_data_write_memory\00", align 1
@mi_error_message = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"mi_cmd_data_write_memory: Usage: [-o COLUMN_OFFSET] ADDR FORMAT WORD-SIZE VALUE.\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_data_write_memory(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %3, %30
  %19 = load i32, i32* %7, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = call i32 @mi_getopt(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8** %20, %struct.mi_opt* getelementptr inbounds ([2 x %struct.mi_opt], [2 x %struct.mi_opt]* @mi_cmd_data_write_memory.opts, i64 0, i64 0), i32* %15, i8** %16)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %17, align 4
  switch i32 %26, label %30 [
    i32 0, label %27
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** %16, align 8
  %29 = call i64 @atol(i8* %28)
  store i64 %29, i64* %14, align 8
  br label %30

30:                                               ; preds = %25, %27
  br label %18

31:                                               ; preds = %24
  %32 = load i32, i32* %15, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8** %35, i8*** %6, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %84

44:                                               ; preds = %31
  %45 = load i8**, i8*** %6, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @parse_and_eval_address(i8* %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %9, align 1
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @atol(i8* %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %10, align 8
  %61 = mul nsw i64 %59, %60
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @parse_and_eval_address(i8* %66)
  store i8* %67, i8** %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i8* @xmalloc(i64 %68)
  store i8* %69, i8** %12, align 8
  %70 = load i32, i32* @xfree, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = call %struct.cleanup* @make_cleanup(i32 %70, i8* %71)
  store %struct.cleanup* %72, %struct.cleanup** %13, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @store_signed_integer(i8* %73, i64 %74, i8* %75)
  %77 = load i64, i64* %8, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @write_memory(i64 %77, i8* %78, i64 %79)
  %81 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %82 = call i32 @do_cleanups(%struct.cleanup* %81)
  %83 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %44, %41
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @mi_getopt(i8*, i32, i8**, %struct.mi_opt*, i32*, i8**) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @xasprintf(i32*, i8*) #1

declare dso_local i8* @parse_and_eval_address(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @store_signed_integer(i8*, i64, i8*) #1

declare dso_local i32 @write_memory(i64, i8*, i64) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
