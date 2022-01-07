; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_SRP_VBASE_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/srp/extr_srp_vfy.c_SRP_VBASE_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @SRP_VBASE_new(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.TYPE_5__* @OPENSSL_malloc(i32 40)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %50

9:                                                ; preds = %1
  %10 = call i32* (...) @sk_SRP_user_pwd_new_null()
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = icmp eq i32* %10, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = call i32* (...) @sk_SRP_gN_cache_new_null()
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = icmp eq i32* %15, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %9
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i32 @OPENSSL_free(%struct.TYPE_5__* %20)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %50

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %22
  %32 = load i8*, i8** %3, align 8
  %33 = call i32* @OPENSSL_strdup(i8* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = icmp eq i32* %33, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sk_SRP_user_pwd_free(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sk_SRP_gN_cache_free(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = call i32 @OPENSSL_free(%struct.TYPE_5__* %46)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %50

48:                                               ; preds = %31, %22
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %2, align 8
  br label %50

50:                                               ; preds = %48, %37, %19, %8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %51
}

declare dso_local %struct.TYPE_5__* @OPENSSL_malloc(i32) #1

declare dso_local i32* @sk_SRP_user_pwd_new_null(...) #1

declare dso_local i32* @sk_SRP_gN_cache_new_null(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @sk_SRP_user_pwd_free(i32*) #1

declare dso_local i32 @sk_SRP_gN_cache_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
