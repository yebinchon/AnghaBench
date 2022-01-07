; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_ctrl.c_ENGINE_ctrl_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_ctrl.c_ENGINE_ctrl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ENGINE_F_ENGINE_CTRL_CMD = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ENGINE_CTRL_GET_CMD_FROM_NAME = common dso_local global i32 0, align 4
@ENGINE_R_INVALID_CMD_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ENGINE_ctrl_cmd(%struct.TYPE_4__* %0, i8* %1, i64 %2, i8* %3, void ()* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void ()*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store void ()* %4, void ()** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %6
  %21 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD, align 4
  %22 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %23 = call i32 @ENGINEerr(i32 %21, i32 %22)
  store i32 0, i32* %7, align 4
  br label %56

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = load i32, i32* @ENGINE_CTRL_GET_CMD_FROM_NAME, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @ENGINE_ctrl(%struct.TYPE_4__* %30, i32 %31, i64 0, i8* %32, void (...)* null)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29, %24
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %7, align 4
  br label %56

41:                                               ; preds = %36
  %42 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD, align 4
  %43 = load i32, i32* @ENGINE_R_INVALID_CMD_NAME, align 4
  %44 = call i32 @ENGINEerr(i32 %42, i32 %43)
  store i32 0, i32* %7, align 4
  br label %56

45:                                               ; preds = %29
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load void ()*, void ()** %12, align 8
  %51 = bitcast void ()* %50 to void (...)*
  %52 = call i64 @ENGINE_ctrl(%struct.TYPE_4__* %46, i32 %47, i64 %48, i8* %49, void (...)* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %56

55:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54, %41, %39, %20
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i64 @ENGINE_ctrl(%struct.TYPE_4__*, i32, i64, i8*, void (...)*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
