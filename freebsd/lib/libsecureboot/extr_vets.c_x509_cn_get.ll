; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_x509_cn_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_x509_cn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__**)*, i32 (%struct.TYPE_16__**)*, i32 (%struct.TYPE_16__**, i32, i32)*, i32 (%struct.TYPE_16__**, i32)*, i32 (%struct.TYPE_16__**, i32*)* }
%struct.TYPE_15__ = type { i8*, i8*, i64, i32 }

@br_sha256_vtable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, i8*, i64)* @x509_cn_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @x509_cn_get(%struct.TYPE_14__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %4, align 8
  br label %77

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 3, i8* %17, align 1
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 85, i8* %18, align 1
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 4, i8* %19, align 1
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 3, i8* %20, align 1
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = call i32 @br_x509_minimal_init(%struct.TYPE_13__* %8, i32* @br_sha256_vtable, i32* null, i32 0)
  %31 = call i32 @br_x509_minimal_set_name_elements(%struct.TYPE_13__* %8, %struct.TYPE_15__* %9, i32 1)
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  %35 = load i32 (%struct.TYPE_16__**, i32*)*, i32 (%struct.TYPE_16__**, i32*)** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %37 = call i32 %35(%struct.TYPE_16__** %36, i32* null)
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  %41 = load i32 (%struct.TYPE_16__**, i32)*, i32 (%struct.TYPE_16__**, i32)** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %41(%struct.TYPE_16__** %42, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32 (%struct.TYPE_16__**, i32, i32)*, i32 (%struct.TYPE_16__**, i32, i32)** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %50(%struct.TYPE_16__** %51, i32 %54, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_16__**)*, i32 (%struct.TYPE_16__**)** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %64 = call i32 %62(%struct.TYPE_16__** %63)
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_16__**)*, i32 (%struct.TYPE_16__**)** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %70 = call i32 %68(%struct.TYPE_16__** %69)
  store i32 %70, i32* %11, align 4
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %16
  store i8* null, i8** %6, align 8
  br label %75

75:                                               ; preds = %74, %16
  %76 = load i8*, i8** %6, align 8
  store i8* %76, i8** %4, align 8
  br label %77

77:                                               ; preds = %75, %14
  %78 = load i8*, i8** %4, align 8
  ret i8* %78
}

declare dso_local i32 @br_x509_minimal_init(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32 @br_x509_minimal_set_name_elements(%struct.TYPE_13__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
