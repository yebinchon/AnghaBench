; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_misc.c__krb5_einval.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_misc.c__krb5_einval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"programmer error: invalid argument to %s argument %lu\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"function:line\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"invalid argument to function %s argument %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_einval(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = call i32 @N_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @krb5_set_error_message(i32 %7, i32 %8, i32 %9, i8* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @_krb5_have_debug(i32 %13, i32 10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @_krb5_debug(i32 %17, i32 10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @_krb5_debug_backtrace(i32 %21)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @EINVAL, align 4
  ret i32 %24
}

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @_krb5_have_debug(i32, i32) #1

declare dso_local i32 @_krb5_debug(i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @_krb5_debug_backtrace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
