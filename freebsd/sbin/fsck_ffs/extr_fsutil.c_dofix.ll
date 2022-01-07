; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_dofix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_dofix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@preen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" (SALVAGED)\0A\00", align 1
@ALTERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"SALVAGE\00", align 1
@EEXIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"UNKNOWN INODESC FIX MODE %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dofix(%struct.inodesc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inodesc*, align 8
  %5 = alloca i8*, align 8
  store %struct.inodesc* %0, %struct.inodesc** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %7 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %45 [
    i32 131, label %9
    i32 130, label %42
    i32 128, label %44
    i32 129, label %44
  ]

9:                                                ; preds = %2
  %10 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %11 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DATA, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %17 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @direrror(i32 %18, i8* %19)
  br label %24

21:                                               ; preds = %9
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @pwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* @preen, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %30 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %29, i32 0, i32 0
  store i32 130, i32* %30, align 4
  %31 = load i32, i32* @ALTERED, align 4
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %24
  %33 = call i32 @reply(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %37 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %52

38:                                               ; preds = %32
  %39 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %40 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %39, i32 0, i32 0
  store i32 130, i32* %40, align 4
  %41 = load i32, i32* @ALTERED, align 4
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %2
  %43 = load i32, i32* @ALTERED, align 4
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %2
  %46 = load i32, i32* @EEXIT, align 4
  %47 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %48 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @errx(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %44, %42, %38, %35, %27
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @direrror(i32, i8*) #1

declare dso_local i32 @pwarn(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @reply(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
