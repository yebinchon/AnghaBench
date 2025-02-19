; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_req.c_hx509_request_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_req.c_hx509_request_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hx509_request_free(%struct.TYPE_5__** %0) #0 {
  %2 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %2, align 8
  %3 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = call i32 @hx509_name_free(i64* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = call i32 @free_SubjectPublicKeyInfo(i32* %16)
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = call i32 @free_ExtKeyUsage(i32* %20)
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @free_GeneralNames(i32* %24)
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32 @memset(%struct.TYPE_5__* %27, i32 0, i32 24)
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @free(%struct.TYPE_5__* %30)
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %32, align 8
  ret void
}

declare dso_local i32 @hx509_name_free(i64*) #1

declare dso_local i32 @free_SubjectPublicKeyInfo(i32*) #1

declare dso_local i32 @free_ExtKeyUsage(i32*) #1

declare dso_local i32 @free_GeneralNames(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
