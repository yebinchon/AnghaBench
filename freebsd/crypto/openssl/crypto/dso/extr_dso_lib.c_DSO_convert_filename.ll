; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_convert_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_convert_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, {}*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

@DSO_F_DSO_CONVERT_FILENAME = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@DSO_R_NO_FILENAME = common dso_local global i32 0, align 4
@DSO_FLAG_NO_NAME_TRANSLATION = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DSO_convert_filename(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @DSO_F_DSO_CONVERT_FILENAME, align 4
  %11 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %12 = call i32 @DSOerr(i32 %10, i32 %11)
  store i8* null, i8** %3, align 8
  br label %83

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @DSO_F_DSO_CONVERT_FILENAME, align 4
  %25 = load i32, i32* @DSO_R_NO_FILENAME, align 4
  %26 = call i32 @DSOerr(i32 %24, i32 %25)
  store i8* null, i8** %3, align 8
  br label %83

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DSO_FLAG_NO_NAME_TRANSLATION, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = bitcast {}** %36 to i8* (%struct.TYPE_7__*, i8*)**
  %38 = load i8* (%struct.TYPE_7__*, i8*)*, i8* (%struct.TYPE_7__*, i8*)** %37, align 8
  %39 = icmp ne i8* (%struct.TYPE_7__*, i8*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = bitcast {}** %42 to i8* (%struct.TYPE_7__*, i8*)**
  %44 = load i8* (%struct.TYPE_7__*, i8*)*, i8* (%struct.TYPE_7__*, i8*)** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* %44(%struct.TYPE_7__* %45, i8* %46)
  store i8* %47, i8** %6, align 8
  br label %67

48:                                               ; preds = %34
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i8* (%struct.TYPE_7__*, i8*)**
  %54 = load i8* (%struct.TYPE_7__*, i8*)*, i8* (%struct.TYPE_7__*, i8*)** %53, align 8
  %55 = icmp ne i8* (%struct.TYPE_7__*, i8*)* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i8* (%struct.TYPE_7__*, i8*)**
  %62 = load i8* (%struct.TYPE_7__*, i8*)*, i8* (%struct.TYPE_7__*, i8*)** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* %62(%struct.TYPE_7__* %63, i8* %64)
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %56, %48
  br label %67

67:                                               ; preds = %66, %40
  br label %68

68:                                               ; preds = %67, %27
  %69 = load i8*, i8** %6, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @OPENSSL_strdup(i8* %72)
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @DSO_F_DSO_CONVERT_FILENAME, align 4
  %78 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %79 = call i32 @DSOerr(i32 %77, i32 %78)
  store i8* null, i8** %3, align 8
  br label %83

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %3, align 8
  br label %83

83:                                               ; preds = %81, %76, %23, %9
  %84 = load i8*, i8** %3, align 8
  ret i8* %84
}

declare dso_local i32 @DSOerr(i32, i32) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
