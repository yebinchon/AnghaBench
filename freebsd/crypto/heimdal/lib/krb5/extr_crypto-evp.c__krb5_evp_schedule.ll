; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-evp.c__krb5_evp_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-evp.c__krb5_evp_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_key_type = type { i32* (...)* }
%struct._krb5_key_data = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct._krb5_evp_schedule* }
%struct._krb5_evp_schedule = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_krb5_evp_schedule(i32 %0, %struct._krb5_key_type* %1, %struct._krb5_key_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._krb5_key_type*, align 8
  %6 = alloca %struct._krb5_key_data*, align 8
  %7 = alloca %struct._krb5_evp_schedule*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct._krb5_key_type* %1, %struct._krb5_key_type** %5, align 8
  store %struct._krb5_key_data* %2, %struct._krb5_key_data** %6, align 8
  %9 = load %struct._krb5_key_data*, %struct._krb5_key_data** %6, align 8
  %10 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %12, align 8
  store %struct._krb5_evp_schedule* %13, %struct._krb5_evp_schedule** %7, align 8
  %14 = load %struct._krb5_key_type*, %struct._krb5_key_type** %5, align 8
  %15 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %14, i32 0, i32 0
  %16 = load i32* (...)*, i32* (...)** %15, align 8
  %17 = call i32* (...) %16()
  store i32* %17, i32** %8, align 8
  %18 = call i8* (...) @EVP_CIPHER_CTX_new()
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %7, align 8
  %21 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = call i8* (...) @EVP_CIPHER_CTX_new()
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %7, align 8
  %25 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %7, align 8
  %27 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %7, align 8
  %32 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %3
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @krb5_abort(i32 %36, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %7, align 8
  %41 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct._krb5_key_data*, %struct._krb5_key_data** %6, align 8
  %45 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @EVP_CipherInit_ex(i32* %42, i32* %43, i32* null, i32 %49, i32* null, i32 1)
  %51 = load %struct._krb5_evp_schedule*, %struct._krb5_evp_schedule** %7, align 8
  %52 = getelementptr inbounds %struct._krb5_evp_schedule, %struct._krb5_evp_schedule* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct._krb5_key_data*, %struct._krb5_key_data** %6, align 8
  %56 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @EVP_CipherInit_ex(i32* %53, i32* %54, i32* null, i32 %60, i32* null, i32 0)
  ret void
}

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @krb5_abort(i32, i32, i8*) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
