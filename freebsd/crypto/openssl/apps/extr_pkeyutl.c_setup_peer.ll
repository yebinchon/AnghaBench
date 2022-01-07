; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkeyutl.c_setup_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkeyutl.c_setup_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_ENGINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Peer Key\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error reading peer key %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*)* @setup_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_peer(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @FORMAT_ENGINE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  store i32* %17, i32** %11, align 8
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @load_pubkey(i8* %19, i32 %20, i32 0, i32* null, i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* @bio_err, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @BIO_printf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @bio_err, align 4
  %30 = call i32 @ERR_print_errors(i32 %29)
  store i32 0, i32* %5, align 4
  br label %44

31:                                               ; preds = %18
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @EVP_PKEY_derive_set_peer(i32* %32, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @EVP_PKEY_free(i32* %35)
  %37 = load i32, i32* %12, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @bio_err, align 4
  %41 = call i32 @ERR_print_errors(i32 %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %25
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32* @load_pubkey(i8*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @EVP_PKEY_derive_set_peer(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
