; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c__krb5_xunlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c__krb5_xunlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCK_UN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to unlock file: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@F_SETLKW = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_xunlock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LOCK_UN, align 4
  %9 = call i32 @flock(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %18 [
    i32 0, label %16
    i32 128, label %17
  ]

16:                                               ; preds = %14
  br label %27

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %21 = call i32 @rk_strerror_r(i32 %19, i8* %20, i32 128)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %26 = call i32 @krb5_set_error_message(i32 %22, i32 %23, i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %18, %17, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @rk_strerror_r(i32, i8*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, i8*) #1

declare dso_local i32 @N_(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
