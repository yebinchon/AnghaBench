; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_str_to_emit_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_str_to_emit_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_EMIT_JSON_COMPACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"json\00", align 1
@UCL_EMIT_JSON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"json-compact\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"yaml\00", align 1
@UCL_EMIT_YAML = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ucl\00", align 1
@UCL_EMIT_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lua_ucl_str_to_emit_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_str_to_emit_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @UCL_EMIT_JSON_COMPACT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strcasecmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @UCL_EMIT_JSON, align 4
  store i32 %9, i32* %3, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strcasecmp(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @UCL_EMIT_JSON_COMPACT, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @UCL_EMIT_YAML, align 4
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %16
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @UCL_EMIT_CONFIG, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %14
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
