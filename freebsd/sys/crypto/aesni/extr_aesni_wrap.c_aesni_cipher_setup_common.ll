; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_cipher_setup_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_cipher_setup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesni_session = type { i32, i8*, i32, i32, i32 }

@AES128_ROUNDS = common dso_local global i8* null, align 8
@AES192_ROUNDS = common dso_local global i8* null, align 8
@AES256_ROUNDS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"invalid CBC/ICM/GCM key length\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid XTS key length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aesni_cipher_setup_common(%struct.aesni_session* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aesni_session*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aesni_session* %0, %struct.aesni_session** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %10 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %45 [
    i32 130, label %12
    i32 129, label %12
    i32 131, label %12
    i32 132, label %13
    i32 128, label %31
  ]

12:                                               ; preds = %3, %3, %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %3, %12
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %27 [
    i32 128, label %15
    i32 192, label %19
    i32 256, label %23
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @AES128_ROUNDS, align 8
  %17 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %18 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  br label %30

19:                                               ; preds = %13
  %20 = load i8*, i8** @AES192_ROUNDS, align 8
  %21 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %22 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %30

23:                                               ; preds = %13
  %24 = load i8*, i8** @AES256_ROUNDS, align 8
  %25 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %26 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %30

27:                                               ; preds = %13
  %28 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %88

30:                                               ; preds = %23, %19, %15
  br label %47

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %41 [
    i32 256, label %33
    i32 512, label %37
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** @AES128_ROUNDS, align 8
  %35 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %36 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** @AES256_ROUNDS, align 8
  %39 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %40 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %44

41:                                               ; preds = %31
  %42 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %88

44:                                               ; preds = %37, %33
  br label %47

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %88

47:                                               ; preds = %44, %30
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %50 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %53 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @aesni_set_enckey(i32* %48, i32 %51, i8* %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %47
  %59 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %60 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %63 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %66 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @aesni_set_deckey(i32 %61, i32 %64, i8* %67)
  br label %69

69:                                               ; preds = %58, %47
  %70 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %71 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sdiv i32 %76, 16
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %81 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %84 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @aesni_set_enckey(i32* %79, i32 %82, i8* %85)
  br label %87

87:                                               ; preds = %74, %69
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %45, %41, %27
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @CRYPTDEB(i8*) #1

declare dso_local i32 @aesni_set_enckey(i32*, i32, i8*) #1

declare dso_local i32 @aesni_set_deckey(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
