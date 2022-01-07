; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_ext_password_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_ext_password_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_password_data = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ext_password tests\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ext_password_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_password_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ext_password_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.ext_password_data* @ext_password_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.ext_password_data* %7, %struct.ext_password_data** %2, align 8
  %8 = load %struct.ext_password_data*, %struct.ext_password_data** %2, align 8
  %9 = icmp ne %struct.ext_password_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %35

11:                                               ; preds = %0
  %12 = call %struct.ext_password_data* @ext_password_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* null)
  store %struct.ext_password_data* %12, %struct.ext_password_data** %2, align 8
  %13 = load %struct.ext_password_data*, %struct.ext_password_data** %2, align 8
  %14 = icmp eq %struct.ext_password_data* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 -1, i32* %1, align 4
  br label %35

16:                                               ; preds = %11
  %17 = load %struct.ext_password_data*, %struct.ext_password_data** %2, align 8
  %18 = call %struct.wpabuf* @ext_password_get(%struct.ext_password_data* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* %18, %struct.wpabuf** %4, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %20 = icmp ne %struct.wpabuf* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = call i32 @ext_password_free(%struct.wpabuf* %23)
  %25 = load %struct.ext_password_data*, %struct.ext_password_data** %2, align 8
  %26 = call i32 @ext_password_deinit(%struct.ext_password_data* %25)
  %27 = call %struct.wpabuf* @ext_password_get(%struct.ext_password_data* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* %27, %struct.wpabuf** %4, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = call i32 @ext_password_free(%struct.wpabuf* %32)
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %31, %15, %10
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.ext_password_data* @ext_password_init(i8*, i8*) #1

declare dso_local %struct.wpabuf* @ext_password_get(%struct.ext_password_data*, i8*) #1

declare dso_local i32 @ext_password_free(%struct.wpabuf*) #1

declare dso_local i32 @ext_password_deinit(%struct.ext_password_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
