; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_prf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@ESTABLISHED = common dso_local global i64 0, align 8
@TLS_MASTER_SECRET_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_prf(%struct.tlsv1_client* %0, i8* %1, i32* %2, i64 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tlsv1_client*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %18, align 8
  %23 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %24 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ESTABLISHED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %122

29:                                               ; preds = %7
  %30 = load i64, i64* %12, align 8
  %31 = icmp ugt i64 %30, 65535
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  br label %122

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = add i64 2, %37
  %39 = load i64, i64* %18, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %18, align 8
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i64, i64* %18, align 8
  %43 = call i32* @os_malloc(i64 %42)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 -1, i32* %8, align 4
  br label %122

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %53 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @os_memcpy(i32* %51, i32* %54, i64 %56)
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %63 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 @os_memcpy(i32* %61, i32* %64, i64 %66)
  br label %86

68:                                               ; preds = %47
  %69 = load i32*, i32** %16, align 8
  %70 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %71 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 @os_memcpy(i32* %69, i32* %72, i64 %74)
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %81 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 @os_memcpy(i32* %79, i32* %82, i64 %84)
  br label %86

86:                                               ; preds = %68, %50
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %92 = mul nsw i32 2, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32* %94, i32** %17, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @WPA_PUT_BE16(i32* %95, i64 %96)
  %98 = load i32*, i32** %17, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32* %99, i32** %17, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @os_memcpy(i32* %100, i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %89, %86
  %105 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %106 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.tlsv1_client*, %struct.tlsv1_client** %9, align 8
  %110 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TLS_MASTER_SECRET_LEN, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @tls_prf(i32 %108, i32 %111, i32 %112, i8* %113, i32* %114, i64 %115, i32* %116, i64 %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @os_free(i32* %119)
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %104, %46, %32, %28
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @tls_prf(i32, i32, i32, i8*, i32*, i64, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
