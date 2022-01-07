; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_catcher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_catcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.cleanup = type { i32 }

@error_pre_print = common dso_local global i8* null, align 8
@quit_pre_print = common dso_local global i8* null, align 8
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4
@RETURN_MASK_QUIT = common dso_local global i32 0, align 4
@uiout = common dso_local global %struct.ui_out* null, align 8
@catch_return = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.ui_out*, i8*)**, %struct.ui_out*, i8*, i32*, i32*, i8*, i8**, i32)* @catcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catcher(i32 (%struct.ui_out*, i8*)** %0, %struct.ui_out* %1, i8* %2, i32* %3, i32* %4, i8* %5, i8** %6, i32 %7) #0 {
  %9 = alloca i32 (%struct.ui_out*, i8*)**, align 8
  %10 = alloca %struct.ui_out*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.cleanup*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.ui_out*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 (%struct.ui_out*, i8*)** %0, i32 (%struct.ui_out*, i8*)*** %9, align 8
  store %struct.ui_out* %1, %struct.ui_out** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load i8*, i8** @error_pre_print, align 8
  store i8* %25, i8** %20, align 8
  %26 = load i8*, i8** @quit_pre_print, align 8
  store i8* %26, i8** %21, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i8*, i8** %14, align 8
  store i8* %32, i8** @error_pre_print, align 8
  br label %33

33:                                               ; preds = %31, %8
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @RETURN_MASK_QUIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** %14, align 8
  store i8* %39, i8** @quit_pre_print, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.ui_out*, %struct.ui_out** @uiout, align 8
  store %struct.ui_out* %41, %struct.ui_out** %22, align 8
  %42 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  store %struct.ui_out* %42, %struct.ui_out** @uiout, align 8
  %43 = call %struct.cleanup* (...) @save_cleanups()
  store %struct.cleanup* %43, %struct.cleanup** %19, align 8
  %44 = load i32*, i32** @catch_return, align 8
  store i32* %44, i32** %17, align 8
  store i32* %18, i32** @catch_return, align 8
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @SIGSETJMP(i32 %45)
  store i32 %46, i32* %23, align 4
  %47 = load i32, i32* %23, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = load i32 (%struct.ui_out*, i8*)**, i32 (%struct.ui_out*, i8*)*** %9, align 8
  %51 = load i32 (%struct.ui_out*, i8*)*, i32 (%struct.ui_out*, i8*)** %50, align 8
  %52 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 %51(%struct.ui_out* %52, i8* %53)
  store i32 %54, i32* %24, align 4
  br label %62

55:                                               ; preds = %40
  store i32 0, i32* %24, align 4
  %56 = load i8**, i8*** %15, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = call i8* (...) @error_last_message()
  %60 = load i8**, i8*** %15, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32*, i32** %17, align 8
  store i32* %63, i32** @catch_return, align 8
  %64 = load %struct.cleanup*, %struct.cleanup** %19, align 8
  %65 = call i32 @restore_cleanups(%struct.cleanup* %64)
  %66 = load %struct.ui_out*, %struct.ui_out** %22, align 8
  store %struct.ui_out* %66, %struct.ui_out** @uiout, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @RETURN_MASK_QUIT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i8*, i8** %21, align 8
  store i8* %72, i8** @quit_pre_print, align 8
  br label %73

73:                                               ; preds = %71, %62
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i8*, i8** %20, align 8
  store i8* %79, i8** @error_pre_print, align 8
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* %23, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %23, align 4
  %86 = call i32 @RETURN_MASK(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %80
  %90 = load i32, i32* %24, align 4
  %91 = load i32*, i32** %12, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  br label %97

94:                                               ; preds = %83
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @throw_exception(i32 %95)
  br label %97

97:                                               ; preds = %94, %89
  ret void
}

declare dso_local %struct.cleanup* @save_cleanups(...) #1

declare dso_local i32 @SIGSETJMP(i32) #1

declare dso_local i8* @error_last_message(...) #1

declare dso_local i32 @restore_cleanups(%struct.cleanup*) #1

declare dso_local i32 @RETURN_MASK(i32) #1

declare dso_local i32 @throw_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
