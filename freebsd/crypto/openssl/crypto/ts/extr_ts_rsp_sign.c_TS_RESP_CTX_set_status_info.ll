; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_CTX_set_status_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_CTX_set_status_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@TS_F_TS_RESP_CTX_SET_STATUS_INFO = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_RESP_CTX_set_status_info(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = call %struct.TYPE_7__* (...) @TS_STATUS_INFO_new()
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %64

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ASN1_INTEGER_set(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %64

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = call i32* (...) @ASN1_UTF8STRING_new()
  store i32* %25, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call i32 @ASN1_STRING_set(i32* %28, i8* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %24
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = call i32* (...) @sk_ASN1_UTF8STRING_new_null()
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = icmp eq i32* %41, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %64

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @sk_ASN1_UTF8STRING_push(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %64

54:                                               ; preds = %46
  store i32* null, i32** %8, align 8
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = call i32 @TS_RESP_set_status_info(i32 %58, %struct.TYPE_7__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %45, %34, %20, %12
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @TS_F_TS_RESP_CTX_SET_STATUS_INFO, align 4
  %69 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %70 = call i32 @TSerr(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = call i32 @TS_STATUS_INFO_free(%struct.TYPE_7__* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @ASN1_UTF8STRING_free(i32* %74)
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_7__* @TS_STATUS_INFO_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32* @ASN1_UTF8STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @sk_ASN1_UTF8STRING_new_null(...) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_push(i32*, i32*) #1

declare dso_local i32 @TS_RESP_set_status_info(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @TSerr(i32, i32) #1

declare dso_local i32 @TS_STATUS_INFO_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ASN1_UTF8STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
