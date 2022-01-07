; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_globulize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_globulize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8** }

@doglob = common dso_local global i32 0, align 4
@GLOB_BRACE = common dso_local global i32 0, align 4
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@GLOB_TILDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Glob pattern `%s' not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @globulize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @doglob, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @ftp_strdup(i8* %10)
  store i8* %11, i8** %2, align 8
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @GLOB_BRACE, align 4
  %14 = load i32, i32* @GLOB_NOCHECK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @GLOB_TILDE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = call i32 @memset(%struct.TYPE_5__* %4, i32 0, i32 16)
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @glob(i8* %19, i32 %20, i32* null, %struct.TYPE_5__* %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %12
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 @globfree(%struct.TYPE_5__* %4)
  store i8* null, i8** %2, align 8
  br label %39

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @ftp_strdup(i8* %35)
  store i8* %36, i8** %6, align 8
  %37 = call i32 @globfree(%struct.TYPE_5__* %4)
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %31, %27, %9
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i8* @ftp_strdup(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @glob(i8*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @globfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
