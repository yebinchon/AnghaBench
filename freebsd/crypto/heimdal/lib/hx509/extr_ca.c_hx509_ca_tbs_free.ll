; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ca.c_hx509_ca_tbs_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ca.c_hx509_ca_tbs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hx509_ca_tbs_free(%struct.TYPE_5__** %0) #0 {
  %2 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %2, align 8
  %3 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %4 = icmp eq %struct.TYPE_5__** %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %50

10:                                               ; preds = %5
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  %14 = call i32 @free_SubjectPublicKeyInfo(i32* %13)
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = call i32 @free_GeneralNames(i32* %17)
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = call i32 @free_ExtKeyUsage(i32* %21)
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = call i32 @der_free_heim_integer(i32* %25)
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = call i32 @free_CRLDistributionPoints(i32* %29)
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = call i32 @der_free_bit_string(i32* %33)
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @der_free_bit_string(i32* %37)
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @hx509_name_free(i32* %41)
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @memset(%struct.TYPE_5__* %44, i32 0, i32 32)
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @free(%struct.TYPE_5__* %47)
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %49, align 8
  br label %50

50:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @free_SubjectPublicKeyInfo(i32*) #1

declare dso_local i32 @free_GeneralNames(i32*) #1

declare dso_local i32 @free_ExtKeyUsage(i32*) #1

declare dso_local i32 @der_free_heim_integer(i32*) #1

declare dso_local i32 @free_CRLDistributionPoints(i32*) #1

declare dso_local i32 @der_free_bit_string(i32*) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
