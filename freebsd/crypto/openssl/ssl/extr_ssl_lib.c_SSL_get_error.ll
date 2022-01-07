; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_get_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_get_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i64 }

@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i64 0, align 8
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@SSL_ERROR_SSL = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@BIO_RR_CONNECT = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_CONNECT = common dso_local global i32 0, align 4
@BIO_RR_ACCEPT = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_ACCEPT = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_X509_LOOKUP = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_ASYNC = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_ASYNC_JOB = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_CLIENT_HELLO_CB = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_AD_CLOSE_NOTIFY = common dso_local global i64 0, align 8
@SSL_ERROR_ZERO_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_get_error(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SSL_ERROR_NONE, align 4
  store i32 %12, i32* %3, align 4
  br label %151

13:                                               ; preds = %2
  %14 = call i64 (...) @ERR_peek_error()
  store i64 %14, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @ERR_GET_LIB(i64 %17)
  %19 = load i64, i64* @ERR_LIB_SYS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  store i32 %22, i32* %3, align 4
  br label %151

23:                                               ; preds = %16
  %24 = load i32, i32* @SSL_ERROR_SSL, align 4
  store i32 %24, i32* %3, align 4
  br label %151

25:                                               ; preds = %13
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i64 @SSL_want_read(%struct.TYPE_12__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i32* @SSL_get_rbio(%struct.TYPE_12__* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @BIO_should_read(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  store i32 %36, i32* %3, align 4
  br label %151

37:                                               ; preds = %29
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @BIO_should_write(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  store i32 %42, i32* %3, align 4
  br label %151

43:                                               ; preds = %37
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @BIO_should_io_special(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @BIO_get_retry_reason(i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BIO_RR_CONNECT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @SSL_ERROR_WANT_CONNECT, align 4
  store i32 %54, i32* %3, align 4
  br label %151

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BIO_RR_ACCEPT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @SSL_ERROR_WANT_ACCEPT, align 4
  store i32 %60, i32* %3, align 4
  br label %151

61:                                               ; preds = %55
  %62 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  store i32 %62, i32* %3, align 4
  br label %151

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %25
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = call i64 @SSL_want_write(%struct.TYPE_12__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i64 @BIO_should_write(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  store i32 %78, i32* %3, align 4
  br label %151

79:                                               ; preds = %70
  %80 = load i32*, i32** %8, align 8
  %81 = call i64 @BIO_should_read(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  store i32 %84, i32* %3, align 4
  br label %151

85:                                               ; preds = %79
  %86 = load i32*, i32** %8, align 8
  %87 = call i64 @BIO_should_io_special(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @BIO_get_retry_reason(i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @BIO_RR_CONNECT, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @SSL_ERROR_WANT_CONNECT, align 4
  store i32 %96, i32* %3, align 4
  br label %151

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @BIO_RR_ACCEPT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @SSL_ERROR_WANT_ACCEPT, align 4
  store i32 %102, i32* %3, align 4
  br label %151

103:                                              ; preds = %97
  %104 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  store i32 %104, i32* %3, align 4
  br label %151

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %66
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = call i64 @SSL_want_x509_lookup(%struct.TYPE_12__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @SSL_ERROR_WANT_X509_LOOKUP, align 4
  store i32 %113, i32* %3, align 4
  br label %151

114:                                              ; preds = %108
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = call i64 @SSL_want_async(%struct.TYPE_12__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @SSL_ERROR_WANT_ASYNC, align 4
  store i32 %119, i32* %3, align 4
  br label %151

120:                                              ; preds = %114
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = call i64 @SSL_want_async_job(%struct.TYPE_12__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @SSL_ERROR_WANT_ASYNC_JOB, align 4
  store i32 %125, i32* %3, align 4
  br label %151

126:                                              ; preds = %120
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = call i64 @SSL_want_client_hello_cb(%struct.TYPE_12__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @SSL_ERROR_WANT_CLIENT_HELLO_CB, align 4
  store i32 %131, i32* %3, align 4
  br label %151

132:                                              ; preds = %126
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %132
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SSL_AD_CLOSE_NOTIFY, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* @SSL_ERROR_ZERO_RETURN, align 4
  store i32 %148, i32* %3, align 4
  br label %151

149:                                              ; preds = %139, %132
  %150 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %147, %130, %124, %118, %112, %103, %101, %95, %83, %77, %61, %59, %53, %41, %35, %23, %21, %11
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i64 @SSL_want_read(%struct.TYPE_12__*) #1

declare dso_local i32* @SSL_get_rbio(%struct.TYPE_12__*) #1

declare dso_local i64 @BIO_should_read(i32*) #1

declare dso_local i64 @BIO_should_write(i32*) #1

declare dso_local i64 @BIO_should_io_special(i32*) #1

declare dso_local i32 @BIO_get_retry_reason(i32*) #1

declare dso_local i64 @SSL_want_write(%struct.TYPE_12__*) #1

declare dso_local i64 @SSL_want_x509_lookup(%struct.TYPE_12__*) #1

declare dso_local i64 @SSL_want_async(%struct.TYPE_12__*) #1

declare dso_local i64 @SSL_want_async_job(%struct.TYPE_12__*) #1

declare dso_local i64 @SSL_want_client_hello_cb(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
