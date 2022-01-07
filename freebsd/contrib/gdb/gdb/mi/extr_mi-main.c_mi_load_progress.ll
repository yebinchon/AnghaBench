; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_load_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_load_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.cleanup = type { i32 }

@mi_load_progress.last_update = internal global %struct.timeval zeroinitializer, align 8
@mi_load_progress.previous_sect_name = internal global i8* null, align 8
@INTERP_MI = common dso_local global i32 0, align 4
@INTERP_MI1 = common dso_local global i32 0, align 4
@last_async_command = common dso_local global i8* null, align 8
@raw_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"+download\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"section-size\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"total-size\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"section-sent\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"total-sent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mi_load_progress(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cleanup*, align 8
  %16 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* @INTERP_MI, align 4
  %18 = call i32 @current_interp_named_p(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @INTERP_MI1, align 4
  %22 = call i32 @current_interp_named_p(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %147

25:                                               ; preds = %20, %5
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 500000, i32* %27, align 8
  %28 = call i32 @gettimeofday(%struct.timeval* %11, i32* null)
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @mi_load_progress.last_update, i32 0, i32 1), align 8
  %32 = sub nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @mi_load_progress.last_update, i32 0, i32 0), align 8
  %37 = sub nsw i64 %35, %36
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1000000
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %25
  %50 = load i8*, i8** @mi_load_progress.previous_sect_name, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** @mi_load_progress.previous_sect_name, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcmp(i8* %53, i8* %54)
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ 1, %56 ]
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %57
  %62 = load i8*, i8** @mi_load_progress.previous_sect_name, align 8
  %63 = call i32 @xfree(i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @xstrdup(i8* %64)
  store i8* %65, i8** @mi_load_progress.previous_sect_name, align 8
  %66 = load i8*, i8** @last_async_command, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i8*, i8** @last_async_command, align 8
  %70 = load i32, i32* @raw_stdout, align 4
  %71 = call i32 @fputs_unfiltered(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32, i32* @raw_stdout, align 4
  %74 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @uiout, align 4
  %76 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %75, i32* null)
  store %struct.cleanup* %76, %struct.cleanup** %15, align 8
  %77 = load i32, i32* @uiout, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @ui_out_field_string(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @uiout, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @ui_out_field_int(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @uiout, align 4
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @ui_out_field_int(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load %struct.cleanup*, %struct.cleanup** %15, align 8
  %87 = call i32 @do_cleanups(%struct.cleanup* %86)
  %88 = load i32, i32* @uiout, align 4
  %89 = load i32, i32* @raw_stdout, align 4
  %90 = call i32 @mi_out_put(i32 %88, i32 %89)
  %91 = load i32, i32* @raw_stdout, align 4
  %92 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @raw_stdout, align 4
  %94 = call i32 @gdb_flush(i32 %93)
  br label %95

95:                                               ; preds = %72, %57
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %97, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %103, %105
  br i1 %106, label %107, label %147

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @mi_load_progress.last_update, i32 0, i32 0), align 8
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @mi_load_progress.last_update, i32 0, i32 1), align 8
  %112 = load i8*, i8** @last_async_command, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i8*, i8** @last_async_command, align 8
  %116 = load i32, i32* @raw_stdout, align 4
  %117 = call i32 @fputs_unfiltered(i8* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i32, i32* @raw_stdout, align 4
  %120 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @uiout, align 4
  %122 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %121, i32* null)
  store %struct.cleanup* %122, %struct.cleanup** %16, align 8
  %123 = load i32, i32* @uiout, align 4
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @ui_out_field_string(i32 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* @uiout, align 4
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @ui_out_field_int(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* @uiout, align 4
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @ui_out_field_int(i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* @uiout, align 4
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @ui_out_field_int(i32 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %133)
  %135 = load i32, i32* @uiout, align 4
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @ui_out_field_int(i32 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  %138 = load %struct.cleanup*, %struct.cleanup** %16, align 8
  %139 = call i32 @do_cleanups(%struct.cleanup* %138)
  %140 = load i32, i32* @uiout, align 4
  %141 = load i32, i32* @raw_stdout, align 4
  %142 = call i32 @mi_out_put(i32 %140, i32 %141)
  %143 = load i32, i32* @raw_stdout, align 4
  %144 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @raw_stdout, align 4
  %146 = call i32 @gdb_flush(i32 %145)
  br label %147

147:                                              ; preds = %24, %118, %101, %95
  ret void
}

declare dso_local i32 @current_interp_named_p(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i32*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i64) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @mi_out_put(i32, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
