; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_context_time.c__gsskrb5_lifetime_left.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_context_time.c__gsskrb5_lifetime_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_C_INDEFINITE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5_lifetime_left(i64* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* @GSS_C_INDEFINITE, align 8
  %16 = load i64*, i64** %9, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %17, i64* %5, align 8
  br label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @krb5_timeofday(i32 %19, i64* %10)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %11, align 8
  %25 = load i64*, i64** %6, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %26, i64* %5, align 8
  br label %40

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64*, i64** %9, align 8
  store i64 0, i64* %32, align 8
  br label %38

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %38, %23, %14
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i64 @krb5_timeofday(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
