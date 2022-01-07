; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_copy_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_copy_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }

@EVP_PKEY_NONE = common dso_local global i64 0, align 8
@EVP_F_EVP_PKEY_COPY_PARAMETERS = common dso_local global i32 0, align 4
@EVP_R_DIFFERENT_KEY_TYPES = common dso_local global i32 0, align 4
@EVP_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@EVP_R_DIFFERENT_PARAMETERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_copy_parameters(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EVP_PKEY_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @EVP_PKEY_set_type(%struct.TYPE_12__* %12, i64 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %80

19:                                               ; preds = %11
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @EVP_F_EVP_PKEY_COPY_PARAMETERS, align 4
  %30 = load i32, i32* @EVP_R_DIFFERENT_KEY_TYPES, align 4
  %31 = call i32 @EVPerr(i32 %29, i32 %30)
  br label %79

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = call i64 @EVP_PKEY_missing_parameters(%struct.TYPE_12__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @EVP_F_EVP_PKEY_COPY_PARAMETERS, align 4
  %39 = load i32, i32* @EVP_R_MISSING_PARAMETERS, align 4
  %40 = call i32 @EVPerr(i32 %38, i32 %39)
  br label %79

41:                                               ; preds = %33
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i64 @EVP_PKEY_missing_parameters(%struct.TYPE_12__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = call i32 @EVP_PKEY_cmp_parameters(%struct.TYPE_12__* %46, %struct.TYPE_12__* %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %80

51:                                               ; preds = %45
  %52 = load i32, i32* @EVP_F_EVP_PKEY_COPY_PARAMETERS, align 4
  %53 = load i32, i32* @EVP_R_DIFFERENT_PARAMETERS, align 4
  %54 = call i32 @EVPerr(i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %80

55:                                               ; preds = %41
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i32 (%struct.TYPE_12__*, %struct.TYPE_12__*)**
  %66 = load i32 (%struct.TYPE_12__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_12__*)** %65, align 8
  %67 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_12__*)* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i32 (%struct.TYPE_12__*, %struct.TYPE_12__*)**
  %74 = load i32 (%struct.TYPE_12__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_12__*)** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call i32 %74(%struct.TYPE_12__* %75, %struct.TYPE_12__* %76)
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %60, %55
  br label %79

79:                                               ; preds = %78, %37, %28
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %68, %51, %50, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @EVP_PKEY_set_type(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @EVP_PKEY_missing_parameters(%struct.TYPE_12__*) #1

declare dso_local i32 @EVP_PKEY_cmp_parameters(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
