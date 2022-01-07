; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_write_checkpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_moduli.c_write_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s.XXXXXXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"write_checkpoint: temp pathname too long\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"mkstemp(%s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"write_checkpoint: fdopen: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"wrote checkpoint line %lu to '%s'\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"failed to write to checkpoint file '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @write_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_checkpoint(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = trunc i64 %11 to i32
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %66

25:                                               ; preds = %19
  %26 = call i32 @mkstemp(i8* %13)
  store i32 %26, i32* %8, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %30)
  store i32 1, i32* %9, align 4
  br label %66

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = call i32* @fdopen(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %34, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = call i32 @unlink(i8* %13)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @close(i32 %41)
  store i32 1, i32* %9, align 4
  br label %66

43:                                               ; preds = %32
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @fprintf(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @fclose(i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @rename(i8* %13, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @debug3(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %57, i8* %58)
  br label %65

60:                                               ; preds = %52, %48, %43
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i32 (i8*, ...) @logit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %36, %28, %23
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %9, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66
  ret void

70:                                               ; preds = %66
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @logit(i8*, ...) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @fprintf(i32*, i8*, i64) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @debug3(i8*, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
