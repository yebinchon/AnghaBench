; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_find_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c_find_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.TYPE_4__*, i64, i32)* @find_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @find_iv(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %4, align 8
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  br label %9

29:                                               ; preds = %9
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
