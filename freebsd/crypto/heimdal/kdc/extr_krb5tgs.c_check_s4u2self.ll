; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_s4u2self.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_s4u2self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@KRB5KDC_ERR_BADOPTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @check_s4u2self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_s4u2self(i32 %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @krb5_principal_compare(i32 %13, i32 %17, i32 %18)
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %45

23:                                               ; preds = %5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64 (i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)*, i64 (i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)** %25, align 8
  %27 = icmp ne i64 (i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64 (i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)*, i64 (i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 %31(i32 %32, %struct.TYPE_10__* %33, %struct.TYPE_9__* %34, i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i64 0, i64* %6, align 8
  br label %45

40:                                               ; preds = %28
  br label %43

41:                                               ; preds = %23
  %42 = load i64, i64* @KRB5KDC_ERR_BADOPTION, align 8
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %43, %39, %22
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i64 @krb5_principal_compare(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
