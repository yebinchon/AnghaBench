; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_pre_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_pre_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@WORK_ERROR = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_FINISHED_WRITING = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_NONE = common dso_local global i32 0, align 4
@WORK_FINISHED_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_pre_work(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
    i32 131, label %13
    i32 132, label %27
    i32 128, label %49
    i32 130, label %64
    i32 129, label %68
  ]

12:                                               ; preds = %2
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i32 @SSL_IS_DTLS(%struct.TYPE_9__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = call i32 @ssl3_init_finished_mac(%struct.TYPE_9__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @WORK_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %13
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = call i32 @SSL_IS_DTLS(%struct.TYPE_9__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = call i32 @SSL_get_wbio(%struct.TYPE_9__* %40)
  %42 = call i32 @BIO_dgram_is_sctp(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = call i32 @dtls_wait_for_dry(%struct.TYPE_9__* %45)
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %27
  br label %72

49:                                               ; preds = %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SSL_EARLY_DATA_FINISHED_WRITING, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SSL_EARLY_DATA_NONE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %49
  %62 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %2, %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @tls_finish_handshake(%struct.TYPE_9__* %65, i32 %66, i32 0, i32 1)
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @tls_finish_handshake(%struct.TYPE_9__* %69, i32 %70, i32 1, i32 1)
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %48, %26, %12
  %73 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %68, %64, %61, %44, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_9__*) #1

declare dso_local i32 @ssl3_init_finished_mac(%struct.TYPE_9__*) #1

declare dso_local i32 @BIO_dgram_is_sctp(i32) #1

declare dso_local i32 @SSL_get_wbio(%struct.TYPE_9__*) #1

declare dso_local i32 @dtls_wait_for_dry(%struct.TYPE_9__*) #1

declare dso_local i32 @tls_finish_handshake(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
