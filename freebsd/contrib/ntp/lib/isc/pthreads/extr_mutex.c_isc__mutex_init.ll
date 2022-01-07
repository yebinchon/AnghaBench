; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/pthreads/extr_mutex.c_isc__mutex_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/pthreads/extr_mutex.c_isc__mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_STRERRORSIZE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@ISC__MUTEX_ATTRS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"isc_mutex_init() failed: %s\00", align 1
@ISC_R_UNEXPECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc__mutex_init(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @ISC_STRERRORSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ISC__MUTEX_ATTRS, align 4
  %20 = call i32 @pthread_mutex_init(i32* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* @errno, align 4
  %31 = trunc i64 %14 to i32
  %32 = call i32 @isc__strerror(i32 %30, i8* %16, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @UNEXPECTED_ERROR(i8* %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  %36 = load i32, i32* @ISC_R_UNEXPECTED, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_init(i32*, i32) #2

declare dso_local i32 @isc__strerror(i32, i8*, i32) #2

declare dso_local i32 @UNEXPECTED_ERROR(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
