; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_authcompute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_authcompute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padlock_session = type { i32, i32, i32, %struct.auth_hash* }
%struct.auth_hash = type { i32, i32 (i32*, %union.authctx*)*, i32 (%union.authctx*, i32*, i32)* }
%union.authctx = type { i32 }
%struct.cryptodesc = type { i32, i32, i32 }

@HASH_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padlock_session*, %struct.cryptodesc*, i32, i32)* @padlock_authcompute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padlock_authcompute(%struct.padlock_session* %0, %struct.cryptodesc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.padlock_session*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.auth_hash*, align 8
  %13 = alloca %union.authctx, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.padlock_session* %0, %struct.padlock_session** %6, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @HASH_MAX_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.padlock_session*, %struct.padlock_session** %6, align 8
  %21 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %20, i32 0, i32 3
  %22 = load %struct.auth_hash*, %struct.auth_hash** %21, align 8
  store %struct.auth_hash* %22, %struct.auth_hash** %12, align 8
  %23 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %24 = load %struct.padlock_session*, %struct.padlock_session** %6, align 8
  %25 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @padlock_copy_ctx(%struct.auth_hash* %23, i32 %26, %union.authctx* %13)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %31 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %34 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %37 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %36, i32 0, i32 2
  %38 = load i32 (%union.authctx*, i32*, i32)*, i32 (%union.authctx*, i32*, i32)** %37, align 8
  %39 = bitcast i32 (%union.authctx*, i32*, i32)* %38 to i32 (i8*, i8*, i32)*
  %40 = ptrtoint %union.authctx* %13 to i32
  %41 = call i32 @crypto_apply(i32 %28, i32 %29, i32 %32, i32 %35, i32 (i8*, i8*, i32)* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %4
  %45 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %46 = call i32 @padlock_free_ctx(%struct.auth_hash* %45, %union.authctx* %13)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %89

48:                                               ; preds = %4
  %49 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %50 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %49, i32 0, i32 1
  %51 = load i32 (i32*, %union.authctx*)*, i32 (i32*, %union.authctx*)** %50, align 8
  %52 = call i32 %51(i32* %19, %union.authctx* %13)
  %53 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %54 = load %struct.padlock_session*, %struct.padlock_session** %6, align 8
  %55 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @padlock_copy_ctx(%struct.auth_hash* %53, i32 %56, %union.authctx* %13)
  %58 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %59 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %58, i32 0, i32 2
  %60 = load i32 (%union.authctx*, i32*, i32)*, i32 (%union.authctx*, i32*, i32)** %59, align 8
  %61 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %62 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %60(%union.authctx* %13, i32* %19, i32 %63)
  %65 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %66 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %65, i32 0, i32 1
  %67 = load i32 (i32*, %union.authctx*)*, i32 (i32*, %union.authctx*)** %66, align 8
  %68 = call i32 %67(i32* %19, %union.authctx* %13)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %72 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.padlock_session*, %struct.padlock_session** %6, align 8
  %75 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %48
  %79 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %80 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %86

82:                                               ; preds = %48
  %83 = load %struct.padlock_session*, %struct.padlock_session** %6, align 8
  %84 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %81, %78 ], [ %85, %82 ]
  %88 = call i32 @crypto_copyback(i32 %69, i32 %70, i32 %73, i32 %87, i32* %19)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %89

89:                                               ; preds = %86, %44
  %90 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @padlock_copy_ctx(%struct.auth_hash*, i32, %union.authctx*) #2

declare dso_local i32 @crypto_apply(i32, i32, i32, i32, i32 (i8*, i8*, i32)*, i32) #2

declare dso_local i32 @padlock_free_ctx(%struct.auth_hash*, %union.authctx*) #2

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
