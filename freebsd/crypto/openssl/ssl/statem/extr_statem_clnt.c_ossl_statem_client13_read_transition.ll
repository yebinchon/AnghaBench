; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client13_read_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client13_read_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SSL3_MT_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL3_MT_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_CR_FINISHED = common dso_local global i8* null, align 8
@SSL3_MT_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@SSL3_MT_NEWSESSION_TICKET = common dso_local global i32 0, align 4
@TLS_ST_CR_SESSION_TICKET = common dso_local global i32 0, align 4
@SSL3_MT_KEY_UPDATE = common dso_local global i32 0, align 4
@TLS_ST_CR_KEY_UPDATE = common dso_local global i32 0, align 4
@SSL_PHA_EXT_SENT = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @ossl_statem_client13_read_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ossl_statem_client13_read_transition(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
    i32 129, label %13
    i32 130, label %21
    i32 131, label %29
    i32 133, label %60
    i32 134, label %68
    i32 132, label %76
    i32 128, label %86
  ]

12:                                               ; preds = %2
  br label %129

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 130, i32* %19, align 4
  store i32 1, i32* %3, align 4
  br label %130

20:                                               ; preds = %13
  br label %129

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SSL3_MT_ENCRYPTED_EXTENSIONS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 131, i32* %27, align 4
  store i32 1, i32* %3, align 4
  br label %130

28:                                               ; preds = %21
  br label %129

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** @TLS_ST_CR_FINISHED, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 1, i32* %3, align 4
  br label %130

43:                                               ; preds = %34
  br label %59

44:                                               ; preds = %29
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SSL3_MT_CERTIFICATE_REQUEST, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 133, i32* %50, align 4
  store i32 1, i32* %3, align 4
  br label %130

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 134, i32* %57, align 4
  store i32 1, i32* %3, align 4
  br label %130

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %43
  br label %129

60:                                               ; preds = %2
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 134, i32* %66, align 4
  store i32 1, i32* %3, align 4
  br label %130

67:                                               ; preds = %60
  br label %129

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SSL3_MT_CERTIFICATE_VERIFY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 132, i32* %74, align 4
  store i32 1, i32* %3, align 4
  br label %130

75:                                               ; preds = %68
  br label %129

76:                                               ; preds = %2
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i8*, i8** @TLS_ST_CR_FINISHED, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  store i32 1, i32* %3, align 4
  br label %130

85:                                               ; preds = %76
  br label %129

86:                                               ; preds = %2
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SSL3_MT_NEWSESSION_TICKET, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @TLS_ST_CR_SESSION_TICKET, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  store i32 1, i32* %3, align 4
  br label %130

94:                                               ; preds = %86
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SSL3_MT_KEY_UPDATE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @TLS_ST_CR_KEY_UPDATE, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  store i32 1, i32* %3, align 4
  br label %130

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @SSL3_MT_CERTIFICATE_REQUEST, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = call i32 @SSL_IS_DTLS(%struct.TYPE_6__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %127, label %110

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SSL_PHA_EXT_SENT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %110
  %117 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = call i32 @tls13_restore_handshake_digest_for_pha(%struct.TYPE_6__* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %130

124:                                              ; preds = %116
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 133, i32* %126, align 4
  store i32 1, i32* %3, align 4
  br label %130

127:                                              ; preds = %110, %106
  br label %128

128:                                              ; preds = %127, %102
  br label %129

129:                                              ; preds = %128, %85, %75, %67, %59, %28, %20, %12
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %124, %123, %98, %90, %80, %72, %64, %55, %48, %38, %25, %17
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_6__*) #1

declare dso_local i32 @tls13_restore_handshake_digest_for_pha(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
