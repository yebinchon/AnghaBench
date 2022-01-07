; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfileio.c_FlWriteFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfileio.c_FlWriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_MSG_WRITE = common dso_local global i32 0, align 4
@ASL_FILE_PREPROCESSOR = common dso_local global i64 0, align 8
@AslGbl_PreprocessorOutputFlag = common dso_local global i64 0, align 8
@ASL_FILE_PREPROCESSOR_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FlWriteFile(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @fwrite(i8* %8, i32 1, i64 %9, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @ASL_MSG_WRITE, align 4
  %22 = call i32 @FlFileError(i64 %20, i32 %21)
  %23 = call i32 (...) @AslAbort()
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @ASL_FILE_PREPROCESSOR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i64, i64* @AslGbl_PreprocessorOutputFlag, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %35 = load i64, i64* @ASL_FILE_PREPROCESSOR_USER, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @fwrite(i8* %32, i32 1, i64 %33, i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @ASL_MSG_WRITE, align 4
  %46 = call i32 @FlFileError(i64 %44, i32 %45)
  %47 = call i32 (...) @AslAbort()
  br label %48

48:                                               ; preds = %43, %31
  br label %49

49:                                               ; preds = %48, %28, %24
  ret void
}

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @FlFileError(i64, i32) #1

declare dso_local i32 @AslAbort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
