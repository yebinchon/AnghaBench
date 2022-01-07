; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_purp.c_X509_PURPOSE_get_by_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_purp.c_X509_PURPOSE_get_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@X509_PURPOSE_MIN = common dso_local global i32 0, align 4
@X509_PURPOSE_MAX = common dso_local global i32 0, align 4
@xptable = common dso_local global i32* null, align 8
@X509_PURPOSE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_PURPOSE_get_by_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @X509_PURPOSE_MIN, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @X509_PURPOSE_MAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @X509_PURPOSE_MIN, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %9, %1
  %18 = load i32*, i32** @xptable, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @xptable, align 8
  %25 = call i32 @sk_X509_PURPOSE_find(i32* %24, %struct.TYPE_3__* %4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @X509_PURPOSE_COUNT, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %28, %20, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @sk_X509_PURPOSE_find(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
