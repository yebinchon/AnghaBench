; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_set_cred_option.c_no_ci_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_set_cred_option.c_no_ci_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_CF_NO_CI_FLAGS = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64*, i32)* @no_ci_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @no_ci_flags(i64* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64*, i64** %8, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %4
  %19 = load i64*, i64** %6, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %20, i64* %5, align 8
  br label %32

21:                                               ; preds = %13
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %10, align 8
  %25 = load i32, i32* @GSS_CF_NO_CI_FLAGS, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i64*, i64** %6, align 8
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %21, %18
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
