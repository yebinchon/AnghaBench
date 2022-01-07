; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_BIO_nread0.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_BIO_nread0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BIO_F_BIO_NREAD0 = common dso_local global i32 0, align 4
@BIO_R_UNINITIALIZED = common dso_local global i32 0, align 4
@BIO_C_NREAD0 = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_nread0(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @BIO_F_BIO_NREAD0, align 4
  %13 = load i32, i32* @BIO_R_UNINITIALIZED, align 4
  %14 = call i32 @BIOerr(i32 %12, i32 %13)
  store i32 -2, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = load i32, i32* @BIO_C_NREAD0, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i64 @BIO_ctrl(%struct.TYPE_4__* %16, i32 %17, i32 0, i8** %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @INT_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i64, i64* @INT_MAX, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %15
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %23, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i64 @BIO_ctrl(%struct.TYPE_4__*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
