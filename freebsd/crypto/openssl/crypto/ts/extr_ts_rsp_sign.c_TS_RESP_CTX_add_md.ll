; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_CTX_add_md.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_CTX_add_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@TS_F_TS_RESP_CTX_ADD_MD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_RESP_CTX_add_md(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = call i32* (...) @sk_EVP_MD_new_null()
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = icmp eq i32* %11, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %25

16:                                               ; preds = %10, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sk_EVP_MD_push(i32* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %25

24:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %29

25:                                               ; preds = %23, %15
  %26 = load i32, i32* @TS_F_TS_RESP_CTX_ADD_MD, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @TSerr(i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32* @sk_EVP_MD_new_null(...) #1

declare dso_local i32 @sk_EVP_MD_push(i32*, i32*) #1

declare dso_local i32 @TSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
