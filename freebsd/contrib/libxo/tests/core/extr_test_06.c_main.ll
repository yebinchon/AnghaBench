; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_06.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_06.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.employee = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Terry\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Jones\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Leslie\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Patterson\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Ashley\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Smith\00", align 1
@__const.main.employees = private unnamed_addr constant [4 x %struct.employee] [%struct.employee { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 660 }, %struct.employee { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 341 }, %struct.employee { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 1440 }, %struct.employee zeroinitializer], align 16
@info = common dso_local global i32 0, align 4
@info_count = common dso_local global i32 0, align 4
@XOF_DTRT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"employees\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"employee\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"{:first-name} {:last-name} works in dept #{:department/%u}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4 x %struct.employee], align 16
  %7 = alloca %struct.employee*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = bitcast [4 x %struct.employee]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x %struct.employee]* @__const.main.employees to i8*), i64 96, i1 false)
  %9 = getelementptr inbounds [4 x %struct.employee], [4 x %struct.employee]* %6, i64 0, i64 0
  store %struct.employee* %9, %struct.employee** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @xo_parse_args(i32 %10, i8** %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @info, align 4
  %18 = load i32, i32* @info_count, align 4
  %19 = call i32 @xo_set_info(i32* null, i32 %17, i32 %18)
  %20 = load i32, i32* @XOF_DTRT, align 4
  %21 = call i32 @xo_set_flags(i32* null, i32 %20)
  %22 = call i32 @xo_open_container(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @xo_open_list(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %24

24:                                               ; preds = %42, %16
  %25 = load %struct.employee*, %struct.employee** %7, align 8
  %26 = getelementptr inbounds %struct.employee, %struct.employee* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = call i32 @xo_open_instance(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %31 = load %struct.employee*, %struct.employee** %7, align 8
  %32 = getelementptr inbounds %struct.employee, %struct.employee* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.employee*, %struct.employee** %7, align 8
  %35 = getelementptr inbounds %struct.employee, %struct.employee* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.employee*, %struct.employee** %7, align 8
  %38 = getelementptr inbounds %struct.employee, %struct.employee* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @xo_emit(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i8* %33, i8* %36, i32 %39)
  %41 = call i32 (...) @xo_close_instance_d()
  br label %42

42:                                               ; preds = %29
  %43 = load %struct.employee*, %struct.employee** %7, align 8
  %44 = getelementptr inbounds %struct.employee, %struct.employee* %43, i32 1
  store %struct.employee* %44, %struct.employee** %7, align 8
  br label %24

45:                                               ; preds = %24
  %46 = call i32 (...) @xo_close_list_d()
  %47 = call i32 (...) @xo_close_container_d()
  %48 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #2

declare dso_local i32 @xo_set_info(i32*, i32, i32) #2

declare dso_local i32 @xo_set_flags(i32*, i32) #2

declare dso_local i32 @xo_open_container(i8*) #2

declare dso_local i32 @xo_open_list(i8*) #2

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local i32 @xo_emit(i8*, i8*, i8*, i32) #2

declare dso_local i32 @xo_close_instance_d(...) #2

declare dso_local i32 @xo_close_list_d(...) #2

declare dso_local i32 @xo_close_container_d(...) #2

declare dso_local i32 @xo_finish(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
