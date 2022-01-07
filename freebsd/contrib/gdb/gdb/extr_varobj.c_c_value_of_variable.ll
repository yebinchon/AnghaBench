; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_value_of_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_value_of_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i64, i32*, i32 }
%struct.ui_file = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"{...}\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@format_code = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.varobj*)* @c_value_of_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @c_value_of_variable(%struct.varobj* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i8*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  %9 = load %struct.varobj*, %struct.varobj** %3, align 8
  %10 = call i32 @get_type(%struct.varobj* %9)
  %11 = call i32 @TYPE_CODE(i32 %10)
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 128, label %12
    i32 130, label %14
  ]

12:                                               ; preds = %1, %1
  %13 = call i8* @xstrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.varobj*, %struct.varobj** %3, align 8
  %16 = getelementptr inbounds %struct.varobj, %struct.varobj* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @xasprintf(i8** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %2, align 8
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.varobj*, %struct.varobj** %3, align 8
  %22 = getelementptr inbounds %struct.varobj, %struct.varobj* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %59

26:                                               ; preds = %20
  %27 = call %struct.ui_file* (...) @mem_fileopen()
  store %struct.ui_file* %27, %struct.ui_file** %6, align 8
  %28 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %29 = call %struct.cleanup* @make_cleanup_ui_file_delete(%struct.ui_file* %28)
  store %struct.cleanup* %29, %struct.cleanup** %7, align 8
  %30 = load %struct.varobj*, %struct.varobj** %3, align 8
  %31 = getelementptr inbounds %struct.varobj, %struct.varobj* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @VALUE_LAZY(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.varobj*, %struct.varobj** %3, align 8
  %37 = getelementptr inbounds %struct.varobj, %struct.varobj* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @gdb_value_fetch_lazy(i32* %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.varobj*, %struct.varobj** %3, align 8
  %42 = getelementptr inbounds %struct.varobj, %struct.varobj* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %45 = load i32*, i32** @format_code, align 8
  %46 = load %struct.varobj*, %struct.varobj** %3, align 8
  %47 = getelementptr inbounds %struct.varobj, %struct.varobj* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @common_val_print(i32* %43, %struct.ui_file* %44, i32 %52, i32 1, i32 0, i32 0)
  %54 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %55 = call i8* @ui_file_xstrdup(%struct.ui_file* %54, i64* %5)
  store i8* %55, i8** %8, align 8
  %56 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %57 = call i32 @do_cleanups(%struct.cleanup* %56)
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %2, align 8
  br label %59

59:                                               ; preds = %40, %25, %14, %12
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local i32 @TYPE_CODE(i32) #1

declare dso_local i32 @get_type(%struct.varobj*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local %struct.ui_file* @mem_fileopen(...) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_file_delete(%struct.ui_file*) #1

declare dso_local i32 @VALUE_LAZY(i32*) #1

declare dso_local i32 @gdb_value_fetch_lazy(i32*) #1

declare dso_local i32 @common_val_print(i32*, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i8* @ui_file_xstrdup(%struct.ui_file*, i64*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
