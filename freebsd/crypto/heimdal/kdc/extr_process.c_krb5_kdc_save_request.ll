; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_krb5_kdc_save_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_krb5_kdc_save_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr = type { i32 }

@_kdc_now = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Failed to open: %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Storage failed to open fd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_kdc_save_request(i32 %0, i8* %1, i8* %2, i64 %3, %struct.TYPE_5__* %4, %struct.sockaddr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %13, align 8
  %24 = call i32 @memset(i32* %15, i32 0, i32 4)
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @rk_UNCONST(i8* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_kdc_now, i32 0, i32 0), align 4
  store i32 %30, i32* %18, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @O_WRONLY, align 4
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @O_APPEND, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @open(i8* %31, i32 %36, i32 384)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %6
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %42, i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %7, align 4
  br label %111

47:                                               ; preds = %6
  %48 = load i32, i32* %16, align 4
  %49 = call i32* @krb5_storage_from_fd(i32 %48)
  store i32* %49, i32** %14, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32*, i32** %14, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 (i32, i32, i8*, ...) @krb5_set_error_message(i32 %55, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %7, align 4
  br label %111

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %62 = call i32 @krb5_sockaddr2address(i32 %60, %struct.sockaddr* %61, i32* %15)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %108

66:                                               ; preds = %59
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @krb5_store_uint32(i32* %67, i32 1)
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @krb5_store_uint32(i32* %69, i32 %70)
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @krb5_store_address(i32* %72, i32 %73)
  %75 = load i32*, i32** %14, align 8
  %76 = bitcast %struct.TYPE_5__* %19 to { i64, i32 }*
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @krb5_store_data(i32* %75, i64 %78, i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @der_get_tag(i32 %84, i64 %87, i32* %21, i32* %22, i32* %23, i32* null)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %66
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @krb5_store_uint32(i32* %92, i32 -1)
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @krb5_store_uint32(i32* %94, i32 -1)
  br label %105

96:                                               ; preds = %66
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @MAKE_TAG(i32 %98, i32 %99, i32 0)
  %101 = call i32 @krb5_store_uint32(i32* %97, i32 %100)
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %23, align 4
  %104 = call i32 @krb5_store_uint32(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %91
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @krb5_free_address(i32 %106, i32* %15)
  br label %108

108:                                              ; preds = %105, %65
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @krb5_storage_free(i32* %109)
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %54, %40
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, ...) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @krb5_sockaddr2address(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @krb5_store_uint32(i32*, i32) #1

declare dso_local i32 @krb5_store_address(i32*, i32) #1

declare dso_local i32 @krb5_store_data(i32*, i64, i32) #1

declare dso_local i32 @der_get_tag(i32, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @MAKE_TAG(i32, i32, i32) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
