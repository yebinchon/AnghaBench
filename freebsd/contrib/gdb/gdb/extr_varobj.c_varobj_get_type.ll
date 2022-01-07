; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_get_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.value = type { i32 }
%struct.cleanup = type { i32 }
%struct.ui_file = type { i32 }

@not_lval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @varobj_get_type(%struct.varobj* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  %9 = load %struct.varobj*, %struct.varobj** %3, align 8
  %10 = call i64 @CPLUS_FAKE_CHILD(%struct.varobj* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = call %struct.ui_file* (...) @mem_fileopen()
  store %struct.ui_file* %14, %struct.ui_file** %6, align 8
  %15 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %16 = call %struct.cleanup* @make_cleanup_ui_file_delete(%struct.ui_file* %15)
  store %struct.cleanup* %16, %struct.cleanup** %5, align 8
  %17 = load %struct.varobj*, %struct.varobj** %3, align 8
  %18 = getelementptr inbounds %struct.varobj, %struct.varobj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @not_lval, align 4
  %21 = call %struct.value* @value_zero(i32 %19, i32 %20)
  store %struct.value* %21, %struct.value** %4, align 8
  %22 = load %struct.value*, %struct.value** %4, align 8
  %23 = call i32 @VALUE_TYPE(%struct.value* %22)
  %24 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %25 = call i32 @type_print(i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %24, i32 -1)
  %26 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %27 = call i8* @ui_file_xstrdup(%struct.ui_file* %26, i64* %8)
  store i8* %27, i8** %7, align 8
  %28 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %29 = call i32 @do_cleanups(%struct.cleanup* %28)
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %13, %12
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i64 @CPLUS_FAKE_CHILD(%struct.varobj*) #1

declare dso_local %struct.ui_file* @mem_fileopen(...) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_file_delete(%struct.ui_file*) #1

declare dso_local %struct.value* @value_zero(i32, i32) #1

declare dso_local i32 @type_print(i32, i8*, %struct.ui_file*, i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i8* @ui_file_xstrdup(%struct.ui_file*, i64*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
