; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bf_lbuf.c_linebuffer_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bf_lbuf.c_linebuffer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i64 }
%struct.TYPE_5__ = type { i32, i64, i32* }

@BIO_F_LINEBUFFER_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@DEFAULT_LINEBUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @linebuffer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linebuffer_new(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call i8* @OPENSSL_malloc(i32 24)
  %6 = bitcast i8* %5 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @BIO_F_LINEBUFFER_NEW, align 4
  %10 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %11 = call i32 @BIOerr(i32 %9, i32 %10)
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load i32, i32* @DEFAULT_LINEBUFFER_SIZE, align 4
  %14 = call i8* @OPENSSL_malloc(i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i32, i32* @BIO_F_LINEBUFFER_NEW, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @BIOerr(i32 %23, i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = call i32 @OPENSSL_free(%struct.TYPE_5__* %26)
  store i32 0, i32* %2, align 4
  br label %42

28:                                               ; preds = %12
  %29 = load i32, i32* @DEFAULT_LINEBUFFER_SIZE, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = bitcast %struct.TYPE_5__* %36 to i8*
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %28, %22, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
