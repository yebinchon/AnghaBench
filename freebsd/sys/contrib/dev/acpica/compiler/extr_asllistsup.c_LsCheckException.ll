; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsCheckException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsCheckException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }

@AslGbl_NextError = common dso_local global %struct.TYPE_3__* null, align 8
@ASL_FILE_LISTING_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"\0A[****iasl****]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LsCheckException(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_NextError, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_NextError, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %2
  br label %40

14:                                               ; preds = %7
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @ASL_FILE_LISTING_OUTPUT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %30, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_NextError, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_NextError, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_NextError, align 8
  %33 = call i32 @AePrintException(i64 %31, %struct.TYPE_3__* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_NextError, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** @AslGbl_NextError, align 8
  br label %19

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @FlPrintFile(i64 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %13, %37, %14
  ret void
}

declare dso_local i32 @AePrintException(i64, %struct.TYPE_3__*, i8*) #1

declare dso_local i32 @FlPrintFile(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
