; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_ctrl.c_ENGINE_cmd_is_executable.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_ctrl.c_ENGINE_cmd_is_executable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENGINE_CTRL_GET_CMD_FLAGS = common dso_local global i32 0, align 4
@ENGINE_F_ENGINE_CMD_IS_EXECUTABLE = common dso_local global i32 0, align 4
@ENGINE_R_INVALID_CMD_NUMBER = common dso_local global i32 0, align 4
@ENGINE_CMD_FLAG_NO_INPUT = common dso_local global i32 0, align 4
@ENGINE_CMD_FLAG_NUMERIC = common dso_local global i32 0, align 4
@ENGINE_CMD_FLAG_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ENGINE_cmd_is_executable(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @ENGINE_CTRL_GET_CMD_FLAGS, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ENGINE_ctrl(i32* %7, i32 %8, i32 %9, i32* null, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @ENGINE_F_ENGINE_CMD_IS_EXECUTABLE, align 4
  %14 = load i32, i32* @ENGINE_R_INVALID_CMD_NUMBER, align 4
  %15 = call i32 @ENGINEerr(i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENGINE_CMD_FLAG_NO_INPUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ENGINE_CMD_FLAG_NUMERIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ENGINE_CMD_FLAG_STRING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %26, %21, %16
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ENGINE_ctrl(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
