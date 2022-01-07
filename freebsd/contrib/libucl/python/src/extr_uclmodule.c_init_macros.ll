; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c_init_macros.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c_init_macros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_EMIT_JSON = common dso_local global i32 0, align 4
@UCL_EMIT_JSON_COMPACT = common dso_local global i32 0, align 4
@UCL_EMIT_CONFIG = common dso_local global i32 0, align 4
@UCL_EMIT_YAML = common dso_local global i32 0, align 4
@UCL_EMIT_MSGPACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ucl.SchemaError\00", align 1
@SchemaError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SchemaError\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_macros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_macros(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @UCL_EMIT_JSON, align 4
  %5 = call i32 @PyModule_AddIntMacro(i32* %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @UCL_EMIT_JSON_COMPACT, align 4
  %8 = call i32 @PyModule_AddIntMacro(i32* %6, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @UCL_EMIT_CONFIG, align 4
  %11 = call i32 @PyModule_AddIntMacro(i32* %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @UCL_EMIT_YAML, align 4
  %14 = call i32 @PyModule_AddIntMacro(i32* %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @UCL_EMIT_MSGPACK, align 4
  %17 = call i32 @PyModule_AddIntMacro(i32* %15, i32 %16)
  %18 = call i32 @PyErr_NewException(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %18, i32* @SchemaError, align 4
  %19 = load i32, i32* @SchemaError, align 4
  %20 = call i32 @Py_INCREF(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @SchemaError, align 4
  %23 = call i32 @PyModule_AddObject(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @PyModule_AddIntMacro(i32*, i32) #1

declare dso_local i32 @PyErr_NewException(i8*, i32*, i32*) #1

declare dso_local i32 @Py_INCREF(i32) #1

declare dso_local i32 @PyModule_AddObject(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
