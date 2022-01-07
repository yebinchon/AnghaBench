; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_lu.c_X509_STORE_CTX_get_by_subject.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_lu.c_X509_STORE_CTX_get_by_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32* }

@X509_LU_NONE = common dso_local global i32 0, align 4
@X509_LU_CRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_STORE_CTX_get_by_subject(%struct.TYPE_13__* %0, i32 %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %91

22:                                               ; preds = %4
  %23 = load i32, i32* @X509_LU_NONE, align 4
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = call i32 @X509_STORE_lock(%struct.TYPE_14__* %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call %struct.TYPE_15__* @X509_OBJECT_retrieve_by_subject(i32 %31, i32 %32, i32* %33)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %13, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = call i32 @X509_STORE_unlock(%struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %38 = icmp eq %struct.TYPE_15__* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @X509_LU_CRL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39, %22
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sk_X509_LOOKUP_num(i32 %48)
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32* @sk_X509_LOOKUP_value(i32 %54, i32 %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @X509_LOOKUP_by_subject(i32* %57, i32 %58, i32* %59, %struct.TYPE_15__* %12)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %13, align 8
  br label %68

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %44

68:                                               ; preds = %63, %44
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %70 = icmp eq %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %91

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %39
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %75 = call i32 @X509_OBJECT_up_ref_count(%struct.TYPE_15__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %91

78:                                               ; preds = %73
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32* %87, i32** %90, align 8
  store i32 1, i32* %5, align 4
  br label %91

91:                                               ; preds = %78, %77, %71, %21
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @X509_STORE_lock(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @X509_OBJECT_retrieve_by_subject(i32, i32, i32*) #1

declare dso_local i32 @X509_STORE_unlock(%struct.TYPE_14__*) #1

declare dso_local i32 @sk_X509_LOOKUP_num(i32) #1

declare dso_local i32* @sk_X509_LOOKUP_value(i32, i32) #1

declare dso_local i32 @X509_LOOKUP_by_subject(i32*, i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @X509_OBJECT_up_ref_count(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
