; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bf_nbio.c_nbiof_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bf_nbio.c_nbiof_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @nbiof_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbiof_read(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %56

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = call i32 @BIO_clear_retry_flags(%struct.TYPE_6__* %21)
  %23 = call i64 @RAND_priv_bytes(i8* %10, i32 1)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %56

26:                                               ; preds = %20
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 7
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  store i32 -1, i32* %8, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = call i32 @BIO_set_retry_read(%struct.TYPE_6__* %39)
  br label %54

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @BIO_read(i32* %44, i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = call i32 @BIO_copy_next_retry(%struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %50, %41
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %25, %19, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_6__*) #1

declare dso_local i64 @RAND_priv_bytes(i8*, i32) #1

declare dso_local i32 @BIO_set_retry_read(%struct.TYPE_6__*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @BIO_copy_next_retry(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
