; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_dyn.c_engine_dynamic.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_dyn.c_engine_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_dynamic_id = common dso_local global i32 0, align 4
@engine_dynamic_name = common dso_local global i32 0, align 4
@dynamic_init = common dso_local global i32 0, align 4
@dynamic_finish = common dso_local global i32 0, align 4
@dynamic_ctrl = common dso_local global i32 0, align 4
@ENGINE_FLAGS_BY_ID_COPY = common dso_local global i32 0, align 4
@dynamic_cmd_defns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @engine_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @engine_dynamic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @ENGINE_new()
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %47

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @engine_dynamic_id, align 4
  %10 = call i32 @ENGINE_set_id(i32* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @engine_dynamic_name, align 4
  %15 = call i32 @ENGINE_set_name(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @dynamic_init, align 4
  %20 = call i32 @ENGINE_set_init_function(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @dynamic_finish, align 4
  %25 = call i32 @ENGINE_set_finish_function(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @dynamic_ctrl, align 4
  %30 = call i32 @ENGINE_set_ctrl_function(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @ENGINE_FLAGS_BY_ID_COPY, align 4
  %35 = call i32 @ENGINE_set_flags(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @dynamic_cmd_defns, align 4
  %40 = call i32 @ENGINE_set_cmd_defns(i32* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37, %32, %27, %22, %17, %12, %7
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @ENGINE_free(i32* %43)
  store i32* null, i32** %1, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load i32*, i32** %2, align 8
  store i32* %46, i32** %1, align 8
  br label %47

47:                                               ; preds = %45, %42, %6
  %48 = load i32*, i32** %1, align 8
  ret i32* %48
}

declare dso_local i32* @ENGINE_new(...) #1

declare dso_local i32 @ENGINE_set_id(i32*, i32) #1

declare dso_local i32 @ENGINE_set_name(i32*, i32) #1

declare dso_local i32 @ENGINE_set_init_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_finish_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_ctrl_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_flags(i32*, i32) #1

declare dso_local i32 @ENGINE_set_cmd_defns(i32*, i32) #1

declare dso_local i32 @ENGINE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
