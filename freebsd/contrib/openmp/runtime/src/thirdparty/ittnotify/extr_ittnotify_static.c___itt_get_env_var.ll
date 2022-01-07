; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openmp/runtime/src/thirdparty/ittnotify/extr_ittnotify_static.c___itt_get_env_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openmp/runtime/src/thirdparty/ittnotify/extr_ittnotify_static.c___itt_get_env_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__itt_get_env_var.env_buff = internal global [4086 x i8] zeroinitializer, align 16
@__itt_get_env_var.env_value = internal global i8* getelementptr inbounds ([4086 x i8], [4086 x i8]* @__itt_get_env_var.env_buff, i32 0, i32 0), align 8
@__itt_error_env_too_long = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_ENVVAR_NOT_FOUND = common dso_local global i64 0, align 8
@__itt_error_cant_read_env = common dso_local global i32 0, align 4
@MAX_ENV_VALUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @__itt_get_env_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__itt_get_env_var(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %61

10:                                               ; preds = %1
  %11 = load i8*, i8** @__itt_get_env_var.env_value, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = sub i64 %12, ptrtoint ([4086 x i8]* @__itt_get_env_var.env_buff to i64)
  %14 = sub i64 4086, %13
  store i64 %14, i64* %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** @__itt_get_env_var.env_value, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @GetEnvironmentVariableA(i8* %15, i8* %16, i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %10
  %23 = load i32, i32* @__itt_error_env_too_long, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, 1
  %27 = load i64, i64* %4, align 8
  %28 = sub i64 %27, 1
  %29 = call i32 (i32, i8*, i64, ...) @__itt_report_error(i32 %23, i8* %24, i64 %26, i64 %28)
  br label %60

30:                                               ; preds = %10
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8*, i8** @__itt_get_env_var.env_value, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  %37 = load i8*, i8** @__itt_get_env_var.env_value, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** @__itt_get_env_var.env_value, align 8
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %2, align 8
  br label %62

40:                                               ; preds = %30
  %41 = call i64 (...) @GetLastError()
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** @__itt_get_env_var.env_value, align 8
  store i8* %46, i8** %2, align 8
  br label %62

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* @__itt_error_cant_read_env, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = call i32 (i32, i8*, i64, ...) @__itt_report_error(i32 %52, i8* %53, i64 %56)
  br label %58

58:                                               ; preds = %51, %47
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %22
  br label %61

61:                                               ; preds = %60, %1
  store i8* null, i8** %2, align 8
  br label %62

62:                                               ; preds = %61, %45, %33
  %63 = load i8*, i8** %2, align 8
  ret i8* %63
}

declare dso_local i64 @GetEnvironmentVariableA(i8*, i8*, i64) #1

declare dso_local i32 @__itt_report_error(i32, i8*, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
