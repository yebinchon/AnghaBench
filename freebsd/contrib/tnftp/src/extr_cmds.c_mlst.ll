; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mlst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mlst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"usage: %s [remote-path]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@features = common dso_local global i32* null, align 8
@FEAT_MLST = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"MLST is not supported by the remote server.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MLST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlst(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @verbose, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %2
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @UPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 -1, i32* @code, align 4
  br label %31

17:                                               ; preds = %9
  %18 = load i32*, i32** @features, align 8
  %19 = load i64, i64* @FEAT_MLST, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ttyout, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %31

26:                                               ; preds = %17
  store i32 1, i32* @verbose, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = call i32 @COMMAND_1ARG(i32 %27, i8** %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* @verbose, align 4
  br label %31

31:                                               ; preds = %26, %23, %12
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @COMMAND_1ARG(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
