; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_file.c_optionFileCheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_file.c_optionFileCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@OPTPROC_EMIT_LIMIT = common dso_local global i32* null, align 8
@OPTPROC_EMIT_USAGE = common dso_local global i32* null, align 8
@FTYPE_MODE_EXIST_MASK = common dso_local global i32 0, align 4
@zFileCannotExist = common dso_local global i64 0, align 8
@tab_skip_ct = common dso_local global i64 0, align 8
@option_usage_fp = common dso_local global i32 0, align 4
@zFileMustExist = common dso_local global i64 0, align 8
@OPTST_RESET = common dso_local global i32 0, align 4
@FTYPE_MODE_OPEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionFileCheck(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** @OPTPROC_EMIT_LIMIT, align 8
  %11 = icmp ule i32* %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** @OPTPROC_EMIT_USAGE, align 8
  %15 = icmp ne i32* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %72

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @FTYPE_MODE_EXIST_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %33 [
    i32 130, label %21
    i32 131, label %27
  ]

21:                                               ; preds = %17
  %22 = load i64, i64* @zFileCannotExist, align 8
  %23 = load i64, i64* @tab_skip_ct, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @option_usage_fp, align 4
  %26 = call i32 @fputs(i64 %24, i32 %25)
  br label %33

27:                                               ; preds = %17
  %28 = load i64, i64* @zFileMustExist, align 8
  %29 = load i64, i64* @tab_skip_ct, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @option_usage_fp, align 4
  %32 = call i32 @fputs(i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %17, %27, %21
  br label %72

34:                                               ; preds = %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @OPTST_RESET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @AGFREE(i32* %49)
  br label %51

51:                                               ; preds = %46, %41
  br label %72

52:                                               ; preds = %34
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = call i32 @check_existence(i32 %53, i32* %54, %struct.TYPE_6__* %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FTYPE_MODE_OPEN_MASK, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %60 [
    i32 129, label %61
    i32 128, label %62
    i32 132, label %67
  ]

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %52, %60
  br label %72

62:                                               ; preds = %52
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @open_file_fd(i32* %63, %struct.TYPE_6__* %64, i32 %65)
  br label %72

67:                                               ; preds = %52
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @fopen_file_fp(i32* %68, %struct.TYPE_6__* %69, i32 %70)
  br label %72

72:                                               ; preds = %16, %33, %51, %67, %62, %61
  ret void
}

declare dso_local i32 @fputs(i64, i32) #1

declare dso_local i32 @AGFREE(i32*) #1

declare dso_local i32 @check_existence(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @open_file_fd(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fopen_file_fp(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
