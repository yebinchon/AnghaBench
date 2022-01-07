; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_peek_type_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_peek_type_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keytype = type { i32, i32, i32* }

@keytypes = common dso_local global %struct.keytype* null, align 8
@KEY_ECDSA = common dso_local global i32 0, align 4
@KEY_ECDSA_CERT = common dso_local global i32 0, align 4
@KEY_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @peek_type_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peek_type_nid(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.keytype*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.keytype*, %struct.keytype** @keytypes, align 8
  store %struct.keytype* %9, %struct.keytype** %8, align 8
  br label %10

10:                                               ; preds = %59, %3
  %11 = load %struct.keytype*, %struct.keytype** %8, align 8
  %12 = getelementptr inbounds %struct.keytype, %struct.keytype* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %62

15:                                               ; preds = %10
  %16 = load %struct.keytype*, %struct.keytype** %8, align 8
  %17 = getelementptr inbounds %struct.keytype, %struct.keytype* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.keytype*, %struct.keytype** %8, align 8
  %22 = getelementptr inbounds %struct.keytype, %struct.keytype* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @strlen(i32* %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %15
  br label %59

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.keytype*, %struct.keytype** %8, align 8
  %31 = getelementptr inbounds %struct.keytype, %struct.keytype* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @memcmp(i8* %29, i32* %32, i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  store i32 -1, i32* %37, align 4
  %38 = load %struct.keytype*, %struct.keytype** %8, align 8
  %39 = getelementptr inbounds %struct.keytype, %struct.keytype* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @KEY_ECDSA, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.keytype*, %struct.keytype** %8, align 8
  %45 = getelementptr inbounds %struct.keytype, %struct.keytype* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @KEY_ECDSA_CERT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43, %36
  %50 = load %struct.keytype*, %struct.keytype** %8, align 8
  %51 = getelementptr inbounds %struct.keytype, %struct.keytype* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.keytype*, %struct.keytype** %8, align 8
  %56 = getelementptr inbounds %struct.keytype, %struct.keytype* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.keytype*, %struct.keytype** %8, align 8
  %61 = getelementptr inbounds %struct.keytype, %struct.keytype* %60, i32 1
  store %struct.keytype* %61, %struct.keytype** %8, align 8
  br label %10

62:                                               ; preds = %10
  %63 = load i32, i32* @KEY_UNSPEC, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %54
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @memcmp(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
