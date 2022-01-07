; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_free_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_free_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i64, i32, i64, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@X509_NAME_ATTR_NOT_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x509_free_name(%struct.x509_name* %0) #0 {
  %2 = alloca %struct.x509_name*, align 8
  %3 = alloca i64, align 8
  store %struct.x509_name* %0, %struct.x509_name** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %7 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %12 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %11, i32 0, i32 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @os_free(i32* %17)
  %19 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %20 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %19, i32 0, i32 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @X509_NAME_ATTR_NOT_USED, align 4
  %26 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %27 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %26, i32 0, i32 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %25, i32* %31, align 8
  br label %32

32:                                               ; preds = %10
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %4

35:                                               ; preds = %4
  %36 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %37 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %39 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @os_free(i32* %40)
  %42 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %43 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %42, i32 0, i32 7
  store i32* null, i32** %43, align 8
  %44 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %45 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @os_free(i32* %46)
  %48 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %49 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @os_free(i32* %50)
  %52 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %53 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @os_free(i32* %54)
  %56 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %57 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @os_free(i32* %58)
  %60 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %61 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %63 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %62, i32 0, i32 5
  store i32* null, i32** %63, align 8
  %64 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %65 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %64, i32 0, i32 6
  store i32* null, i32** %65, align 8
  %66 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %67 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %69 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.x509_name*, %struct.x509_name** %2, align 8
  %71 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %70, i32 0, i32 1
  %72 = call i32 @os_memset(i32* %71, i32 0, i32 4)
  ret void
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
