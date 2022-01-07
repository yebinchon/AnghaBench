; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c__hx509_ks_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c__hx509_ks_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_keyset_ops = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.hx509_keyset_ops** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hx509_keyset_ops* (%struct.TYPE_3__*, i8*)* @_hx509_ks_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hx509_keyset_ops* @_hx509_ks_type(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.hx509_keyset_ops*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.hx509_keyset_ops**, %struct.hx509_keyset_ops*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hx509_keyset_ops*, %struct.hx509_keyset_ops** %17, i64 %19
  %21 = load %struct.hx509_keyset_ops*, %struct.hx509_keyset_ops** %20, align 8
  %22 = getelementptr inbounds %struct.hx509_keyset_ops, %struct.hx509_keyset_ops* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcasecmp(i8* %14, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.hx509_keyset_ops**, %struct.hx509_keyset_ops*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hx509_keyset_ops*, %struct.hx509_keyset_ops** %29, i64 %31
  %33 = load %struct.hx509_keyset_ops*, %struct.hx509_keyset_ops** %32, align 8
  store %struct.hx509_keyset_ops* %33, %struct.hx509_keyset_ops** %3, align 8
  br label %39

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  store %struct.hx509_keyset_ops* null, %struct.hx509_keyset_ops** %3, align 8
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.hx509_keyset_ops*, %struct.hx509_keyset_ops** %3, align 8
  ret %struct.hx509_keyset_ops* %40
}

declare dso_local i64 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
