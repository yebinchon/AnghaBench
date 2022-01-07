; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_proc_test.c_start_prog.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_proc_test.c_start_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }
%struct.atf_tc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1
@target_prog_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to run '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proc_handle* (%struct.atf_tc*, i32)* @start_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proc_handle* @start_prog(%struct.atf_tc* %0, i32 %1) #0 {
  %3 = alloca %struct.atf_tc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8*], align 16
  %6 = alloca %struct.proc_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.atf_tc* %0, %struct.atf_tc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %9 = load %struct.atf_tc*, %struct.atf_tc** %3, align 8
  %10 = call i32 @atf_tc_get_config_var(%struct.atf_tc* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @target_prog_file, align 4
  %12 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %14 = load i8*, i8** %13, align 16
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ATF_REQUIRE(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 2
  store i8* null, i8** %23, align 16
  br label %26

24:                                               ; preds = %2
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 1
  store i8* null, i8** %25, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %28 = load i8*, i8** %27, align 16
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %30 = call i32 @proc_create(i8* %28, i8** %29, i32* null, i32* null, i32* null, %struct.proc_handle** %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @target_prog_file, align 4
  %33 = call i32 @ATF_REQUIRE_EQ_MSG(i32 %31, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  %35 = icmp ne %struct.proc_handle* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ATF_REQUIRE(i32 %36)
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %39 = load i8*, i8** %38, align 16
  %40 = call i32 @free(i8* %39)
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.proc_handle*, %struct.proc_handle** %6, align 8
  ret %struct.proc_handle* %44
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @atf_tc_get_config_var(%struct.atf_tc*, i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @proc_create(i8*, i8**, i32*, i32*, i32*, %struct.proc_handle**) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
