; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_bio_ssl.c_ssl_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_bio_ssl.c_ssl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32* }

@BIO_RR_SSL_X509_LOOKUP = common dso_local global i32 0, align 4
@BIO_RR_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64*)* @ssl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write(i32* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %116

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.TYPE_3__* @BIO_get_data(i32* %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %14, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @BIO_clear_retry_flags(i32* %25)
  %27 = load i32*, i32** %13, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = call i32 @ssl_write_internal(i32* %27, i8* %28, i64 %29, i64* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @SSL_get_error(i32* %32, i32 %33)
  switch i32 %34, label %110 [
    i32 134, label %35
    i32 129, label %95
    i32 130, label %98
    i32 128, label %101
    i32 131, label %105
    i32 132, label %109
    i32 133, label %109
  ]

35:                                               ; preds = %19
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @SSL_renegotiate(i32* %61)
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %54, %40
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %69
  %73 = call i64 @time(i32* null)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  %82 = icmp ugt i64 %74, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %72
  %84 = load i64, i64* %15, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @SSL_renegotiate(i32* %91)
  br label %93

93:                                               ; preds = %83, %72
  br label %94

94:                                               ; preds = %93, %69, %64
  br label %111

95:                                               ; preds = %19
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @BIO_set_retry_write(i32* %96)
  br label %111

98:                                               ; preds = %19
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @BIO_set_retry_read(i32* %99)
  br label %111

101:                                              ; preds = %19
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @BIO_set_retry_special(i32* %102)
  %104 = load i32, i32* @BIO_RR_SSL_X509_LOOKUP, align 4
  store i32 %104, i32* %12, align 4
  br label %111

105:                                              ; preds = %19
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @BIO_set_retry_special(i32* %106)
  %108 = load i32, i32* @BIO_RR_CONNECT, align 4
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %19, %19, %105
  br label %110

110:                                              ; preds = %19, %109
  br label %111

111:                                              ; preds = %110, %101, %98, %95, %94
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @BIO_set_retry_reason(i32* %112, i32 %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %18
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @ssl_write_internal(i32*, i8*, i64, i64*) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @SSL_renegotiate(i32*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @BIO_set_retry_write(i32*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

declare dso_local i32 @BIO_set_retry_special(i32*) #1

declare dso_local i32 @BIO_set_retry_reason(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
