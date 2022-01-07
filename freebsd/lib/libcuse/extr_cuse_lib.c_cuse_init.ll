; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/cuse\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@f_cuse = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"cuse\00", align 1
@CUSE_ERR_NOT_LOADED = common dso_local global i32 0, align 4
@CUSE_ERR_INVALID = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@m_cuse = common dso_local global i32 0, align 4
@h_cuse = common dso_local global i32 0, align 4
@h_cuse_entered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cuse_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @O_RDWR, align 4
  %4 = call i64 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i64 %4, i64* @f_cuse, align 8
  %5 = load i64, i64* @f_cuse, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = call i64 @feature_present(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @CUSE_ERR_NOT_LOADED, align 4
  store i32 %11, i32* %1, align 4
  br label %21

12:                                               ; preds = %7
  %13 = load i32, i32* @CUSE_ERR_INVALID, align 4
  store i32 %13, i32* %1, align 4
  br label %21

14:                                               ; preds = %0
  %15 = call i32 @pthread_mutexattr_init(i32* %2)
  %16 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %17 = call i32 @pthread_mutexattr_settype(i32* %2, i32 %16)
  %18 = call i32 @pthread_mutex_init(i32* @m_cuse, i32* %2)
  %19 = call i32 @TAILQ_INIT(i32* @h_cuse)
  %20 = call i32 @TAILQ_INIT(i32* @h_cuse_entered)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %14, %12, %10
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @feature_present(i8*) #1

declare dso_local i32 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
