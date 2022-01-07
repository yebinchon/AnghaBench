; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server13_read_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server13_read_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__, i32, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SSL_HRR_PENDING = common dso_local global i32 0, align 4
@SSL3_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@TLS_ST_SR_CLNT_HELLO = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@SSL3_MT_END_OF_EARLY_DATA = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_SR_FINISHED = common dso_local global i8* null, align 8
@SSL3_MT_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_READING = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i32 0, align 4
@SSL3_MT_KEY_UPDATE = common dso_local global i32 0, align 4
@TLS_ST_SR_KEY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @ossl_statem_server13_read_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ossl_statem_server13_read_transition(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 6
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
    i32 133, label %13
    i32 129, label %45
    i32 128, label %45
    i32 131, label %72
    i32 130, label %98
    i32 132, label %108
  ]

12:                                               ; preds = %2
  br label %137

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SSL_HRR_PENDING, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SSL3_MT_CLIENT_HELLO, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @TLS_ST_SR_CLNT_HELLO, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 1, i32* %3, align 4
  br label %138

27:                                               ; preds = %19
  br label %137

28:                                               ; preds = %13
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SSL3_MT_END_OF_EARLY_DATA, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 129, i32* %41, align 4
  store i32 1, i32* %3, align 4
  br label %138

42:                                               ; preds = %35
  br label %137

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %2, %2, %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 131, i32* %59, align 4
  store i32 1, i32* %3, align 4
  br label %138

60:                                               ; preds = %53
  br label %71

61:                                               ; preds = %45
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  store i32 1, i32* %3, align 4
  br label %138

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %60
  br label %137

72:                                               ; preds = %2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %3, align 4
  br label %138

88:                                               ; preds = %79
  br label %97

89:                                               ; preds = %72
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @SSL3_MT_CERTIFICATE_VERIFY, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 130, i32* %95, align 4
  store i32 1, i32* %3, align 4
  br label %138

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %88
  br label %137

98:                                               ; preds = %2
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  store i32 1, i32* %3, align 4
  br label %138

107:                                              ; preds = %98
  br label %137

108:                                              ; preds = %2
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SSL_EARLY_DATA_READING, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %137

115:                                              ; preds = %108
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  store i32 131, i32* %127, align 4
  store i32 1, i32* %3, align 4
  br label %138

128:                                              ; preds = %119, %115
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @SSL3_MT_KEY_UPDATE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @TLS_ST_SR_KEY_UPDATE, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  store i32 1, i32* %3, align 4
  br label %138

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %114, %107, %97, %71, %42, %27, %12
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %132, %125, %102, %93, %83, %65, %57, %39, %23
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
