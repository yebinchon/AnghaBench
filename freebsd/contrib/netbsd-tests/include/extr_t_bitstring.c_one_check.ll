; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/include/extr_t_bitstring.c_one_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/include/extr_t_bitstring.c_one_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"diff -u %s/d_bitstring_%d.out out\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1
@EXIT_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Test failed; see output for details\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @one_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [1024 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32* @fopen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ATF_REQUIRE(i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @calculate_data(i32* %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @fclose(i32* %14)
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @atf_tc_get_config_var(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @snprintf(i8* %16, i32 1024, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32 %19)
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %22 = call i64 @system(i8* %21)
  %23 = load i64, i64* @EXIT_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @calculate_data(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @atf_tc_get_config_var(i32*, i8*) #1

declare dso_local i64 @system(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
