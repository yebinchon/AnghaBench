; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_verify_signer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_verify_signer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"cannot read certificates\0A\00", align 1
@forbidden_anchors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Certificate is on forbidden list\0A\00", align 1
@trust_anchors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Certificate hash is on forbidden list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i64)* @verify_signer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_signer(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %9, align 8
  %11 = call i32 (...) @ve_trust_init()
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @read_certificates(i8* %12, i64* %10)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @ve_error_set(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %59

18:                                               ; preds = %3
  %19 = load i32, i32* @forbidden_anchors, align 4
  %20 = call i64 @VEC_LEN(i32 %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32* @verify_signer_xcs(i32* %23, i64 %24, i32* %25, i64 %26, i32* @forbidden_anchors)
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i32 @ve_error_set(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @xfreepkey(i32* %33)
  store i32* null, i32** %9, align 8
  br label %54

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32* @verify_signer_xcs(i32* %36, i64 %37, i32* %38, i64 %39, i32* @trust_anchors)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %54

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @check_forbidden_digests(i32* %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 @ve_error_set(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @xfreepkey(i32* %51)
  store i32* null, i32** %9, align 8
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %43, %31
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @free_certificates(i32* %55, i64 %56)
  %58 = load i32*, i32** %9, align 8
  store i32* %58, i32** %4, align 8
  br label %59

59:                                               ; preds = %54, %16
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local i32 @ve_trust_init(...) #1

declare dso_local i32* @read_certificates(i8*, i64*) #1

declare dso_local i32 @ve_error_set(i8*) #1

declare dso_local i64 @VEC_LEN(i32) #1

declare dso_local i32* @verify_signer_xcs(i32*, i64, i32*, i64, i32*) #1

declare dso_local i32 @xfreepkey(i32*) #1

declare dso_local i64 @check_forbidden_digests(i32*, i64) #1

declare dso_local i32 @free_certificates(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
