; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellModuleSchema.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellModuleSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/* %s */\00", align 1
@sqlite3_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @shellModuleSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shellModuleSchema(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %9 = load i32**, i32*** %6, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @sqlite3_value_text(i32* %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @sqlite3_context_db_handle(i32* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @shellFakeSchema(i32 %15, i32 0, i8* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @UNUSED_PARAMETER(i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @sqlite3_free, align 4
  %27 = call i32 @sqlite3_result_text(i32* %23, i32 %25, i32 -1, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @free(i8* %28)
  br label %30

30:                                               ; preds = %22, %3
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @shellFakeSchema(i32, i32, i8*) #1

declare dso_local i32 @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
