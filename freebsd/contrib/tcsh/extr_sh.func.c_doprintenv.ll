; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doprintenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doprintenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@xlate_cr = common dso_local global i32 0, align 4
@xlate_cr_cleanup = common dso_local global i32 0, align 4
@STR_environ = common dso_local global i32** null, align 8
@setintr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%S\0A\00", align 1
@output_raw = common dso_local global i32 0, align 4
@output_raw_restore = common dso_local global i32 0, align 4
@STRstatus = common dso_local global i32 0, align 4
@STR1 = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doprintenv(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %9 = load %struct.command*, %struct.command** %4, align 8
  %10 = call i32 @USE(%struct.command* %9)
  %11 = load i32**, i32*** %3, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i32 1
  store i32** %12, i32*** %3, align 8
  %13 = load i32**, i32*** %3, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  store i32 1, i32* @xlate_cr, align 4
  %17 = load i32, i32* @xlate_cr_cleanup, align 4
  %18 = call i32 @cleanup_push(i32* @xlate_cr, i32 %17)
  %19 = load i32**, i32*** @STR_environ, align 8
  store i32** %19, i32*** %6, align 8
  br label %20

20:                                               ; preds = %34, %16
  %21 = load i32**, i32*** %6, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i64, i64* @setintr, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @pintr_push_enable(i32* %7)
  %29 = call i32 @cleanup_until(i32* %7)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32**, i32*** %6, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i32 1
  store i32** %36, i32*** %6, align 8
  br label %20

37:                                               ; preds = %20
  %38 = call i32 @cleanup_until(i32* @xlate_cr)
  br label %57

39:                                               ; preds = %2
  %40 = load i32**, i32*** %3, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @tgetenv(i32* %41)
  store i32* %42, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @output_raw, align 4
  store i32 %45, i32* %8, align 4
  store i32 1, i32* @output_raw, align 4
  %46 = load i32, i32* @output_raw_restore, align 4
  %47 = call i32 @cleanup_push(i32* %8, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %48)
  %50 = call i32 @cleanup_until(i32* %8)
  br label %56

51:                                               ; preds = %39
  %52 = load i32, i32* @STRstatus, align 4
  %53 = load i32, i32* @STR1, align 4
  %54 = load i32, i32* @VAR_READWRITE, align 4
  %55 = call i32 @setcopy(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %56, %37
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @pintr_push_enable(i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

declare dso_local i32 @xprintf(i8*, i32*) #1

declare dso_local i32* @tgetenv(i32*) #1

declare dso_local i32 @setcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
