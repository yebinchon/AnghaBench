; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_have_ntlm_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_have_ntlm_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_ntlm_cred = type { i32 }

@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_have_ntlm_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_have_ntlm_cred(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.kcm_ntlm_cred*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @krb5_ret_stringz(i32* %15, i8** %12)
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %14, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %45

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @krb5_ret_stringz(i32* %21, i8** %13)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %45

26:                                               ; preds = %20
  %27 = load i8*, i8** %13, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @free(i8* %33)
  store i8* null, i8** %13, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call %struct.kcm_ntlm_cred* @find_ntlm_cred(i8* %36, i8* %37, i32* %38)
  store %struct.kcm_ntlm_cred* %39, %struct.kcm_ntlm_cred** %11, align 8
  %40 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %11, align 8
  %41 = icmp eq %struct.kcm_ntlm_cred* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i64, i64* @ENOENT, align 8
  store i64 %43, i64* %14, align 8
  br label %44

44:                                               ; preds = %42, %35
  br label %45

45:                                               ; preds = %44, %25, %19
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i64, i64* %14, align 8
  ret i64 %54
}

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.kcm_ntlm_cred* @find_ntlm_cred(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
