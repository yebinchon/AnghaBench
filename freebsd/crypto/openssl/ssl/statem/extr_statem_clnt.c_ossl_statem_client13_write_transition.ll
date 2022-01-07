; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client13_write_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client13_write_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_CLIENT13_WRITE_TRANSITION = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@WRITE_TRAN_ERROR = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i32 0, align 4
@WRITE_TRAN_CONTINUE = common dso_local global i32 0, align 4
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_WRITE_RETRY = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_FINISHED_WRITING = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_NONE = common dso_local global i32 0, align 4
@WRITE_TRAN_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ossl_statem_client13_write_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ossl_statem_client13_write_transition(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %10 [
    i32 139, label %17
    i32 138, label %48
    i32 128, label %94
    i32 132, label %106
    i32 133, label %106
    i32 135, label %119
    i32 134, label %132
    i32 137, label %136
    i32 130, label %136
    i32 136, label %136
    i32 131, label %136
    i32 129, label %140
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %13 = load i32, i32* @SSL_F_OSSL_STATEM_CLIENT13_WRITE_TRANSITION, align 4
  %14 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %15 = call i32 @SSLfatal(%struct.TYPE_11__* %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %152

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 135, i32* %25, align 4
  %26 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %26, i32* %2, align 4
  br label %152

27:                                               ; preds = %17
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ossl_assert(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %40 = load i32, i32* @SSL_F_OSSL_STATEM_CLIENT13_WRITE_TRANSITION, align 4
  %41 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %42 = call i32 @SSLfatal(%struct.TYPE_11__* %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @WRITE_TRAN_ERROR, align 4
  store i32 %43, i32* %2, align 4
  br label %152

44:                                               ; preds = %27
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 129, i32* %46, align 4
  %47 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %47, i32* %2, align 4
  br label %152

48:                                               ; preds = %1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SSL_EARLY_DATA_WRITE_RETRY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SSL_EARLY_DATA_FINISHED_WRITING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %48
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 128, i32* %62, align 4
  br label %92

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SSL_HRR_NONE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 133, i32* %78, align 4
  br label %91

79:                                               ; preds = %70, %63
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 135, i32 131
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %79, %76
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %93, i32* %2, align 4
  br label %152

94:                                               ; preds = %1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 132, i32* %103, align 4
  %104 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %104, i32* %2, align 4
  br label %152

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %1, %1, %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 135, i32 131
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %118, i32* %2, align 4
  br label %152

119:                                              ; preds = %1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 1
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 134, i32 131
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %131, i32* %2, align 4
  br label %152

132:                                              ; preds = %1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 131, i32* %134, align 4
  %135 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %135, i32* %2, align 4
  br label %152

136:                                              ; preds = %1, %1, %1, %1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 129, i32* %138, align 4
  %139 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %139, i32* %2, align 4
  br label %152

140:                                              ; preds = %1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SSL_KEY_UPDATE_NONE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  store i32 130, i32* %148, align 4
  %149 = load i32, i32* @WRITE_TRAN_CONTINUE, align 4
  store i32 %149, i32* %2, align 4
  br label %152

150:                                              ; preds = %140
  %151 = load i32, i32* @WRITE_TRAN_FINISHED, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %146, %136, %132, %119, %106, %101, %92, %44, %37, %23, %10
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @ossl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
