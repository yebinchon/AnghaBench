; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.padlock_session = type { i32*, i32*, %struct.TYPE_10__*, i32 }
%struct.cryptoini = type { i32, i32, i32*, i32 }

@auth_hash_null = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@auth_hash_hmac_md5 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@via_feature_xcrypt = common dso_local global i32 0, align 4
@VIA_HAS_SHA = common dso_local global i32 0, align 4
@padlock_hmac_sha1 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@auth_hash_hmac_sha1 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@auth_hash_hmac_ripemd_160 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@padlock_hmac_sha256 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@auth_hash_hmac_sha2_256 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@auth_hash_hmac_sha2_384 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@auth_hash_hmac_sha2_512 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@M_PADLOCK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @padlock_hash_setup(%struct.padlock_session* %0, %struct.cryptoini* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padlock_session*, align 8
  %5 = alloca %struct.cryptoini*, align 8
  store %struct.padlock_session* %0, %struct.padlock_session** %4, align 8
  store %struct.cryptoini* %1, %struct.cryptoini** %5, align 8
  %6 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %7 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %10 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %12 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %53 [
    i32 133, label %14
    i32 134, label %17
    i32 131, label %20
    i32 132, label %32
    i32 130, label %35
    i32 129, label %47
    i32 128, label %50
  ]

14:                                               ; preds = %2
  %15 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %16 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %15, i32 0, i32 2
  store %struct.TYPE_10__* @auth_hash_null, %struct.TYPE_10__** %16, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %19 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %18, i32 0, i32 2
  store %struct.TYPE_10__* @auth_hash_hmac_md5, %struct.TYPE_10__** %19, align 8
  br label %53

20:                                               ; preds = %2
  %21 = load i32, i32* @via_feature_xcrypt, align 4
  %22 = load i32, i32* @VIA_HAS_SHA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %27 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %26, i32 0, i32 2
  store %struct.TYPE_10__* @padlock_hmac_sha1, %struct.TYPE_10__** %27, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %30 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %29, i32 0, i32 2
  store %struct.TYPE_10__* @auth_hash_hmac_sha1, %struct.TYPE_10__** %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %34 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %33, i32 0, i32 2
  store %struct.TYPE_10__* @auth_hash_hmac_ripemd_160, %struct.TYPE_10__** %34, align 8
  br label %53

35:                                               ; preds = %2
  %36 = load i32, i32* @via_feature_xcrypt, align 4
  %37 = load i32, i32* @VIA_HAS_SHA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %42 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %41, i32 0, i32 2
  store %struct.TYPE_10__* @padlock_hmac_sha256, %struct.TYPE_10__** %42, align 8
  br label %46

43:                                               ; preds = %35
  %44 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %45 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %44, i32 0, i32 2
  store %struct.TYPE_10__* @auth_hash_hmac_sha2_256, %struct.TYPE_10__** %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %49 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %48, i32 0, i32 2
  store %struct.TYPE_10__* @auth_hash_hmac_sha2_384, %struct.TYPE_10__** %49, align 8
  br label %53

50:                                               ; preds = %2
  %51 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %52 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %51, i32 0, i32 2
  store %struct.TYPE_10__* @auth_hash_hmac_sha2_512, %struct.TYPE_10__** %52, align 8
  br label %53

53:                                               ; preds = %2, %50, %47, %46, %32, %31, %17, %14
  %54 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %55 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @M_PADLOCK, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @malloc(i32 %58, i32 %59, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %66 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %68 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @M_PADLOCK, align 4
  %73 = load i32, i32* @M_ZERO, align 4
  %74 = load i32, i32* @M_NOWAIT, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @malloc(i32 %71, i32 %72, i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %79 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %81 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %53
  %85 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %86 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %53
  %90 = load i32, i32* @ENOMEM, align 4
  store i32 %90, i32* %3, align 4
  br label %106

91:                                               ; preds = %84
  %92 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %93 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %98 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %99 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %102 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @padlock_hash_key_setup(%struct.padlock_session* %97, i32* %100, i32 %103)
  br label %105

105:                                              ; preds = %96, %91
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @padlock_hash_key_setup(%struct.padlock_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
