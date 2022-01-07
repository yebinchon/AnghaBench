; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_alg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_alg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshcipher = type { i32, i64, i32* }

@ciphers = common dso_local global %struct.sshcipher* null, align 8
@CFLAG_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cipher_alg_list(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sshcipher*, align 8
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.sshcipher*, %struct.sshcipher** @ciphers, align 8
  store %struct.sshcipher* %11, %struct.sshcipher** %10, align 8
  br label %12

12:                                               ; preds = %72, %2
  %13 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %14 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %12
  %18 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %19 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CFLAG_INTERNAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %72

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %30 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %72

34:                                               ; preds = %28, %25
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8, i8* %4, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %42, align 1
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %45 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @strlen(i32* %46)
  store i64 %47, i64* %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %49, %50
  %52 = add i64 %51, 2
  %53 = call i8* @realloc(i8* %48, i64 %52)
  store i8* %53, i8** %6, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @free(i8* %56)
  store i8* null, i8** %3, align 8
  br label %77

58:                                               ; preds = %43
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %64 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @memcpy(i8* %62, i32* %65, i64 %67)
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %58, %33, %24
  %73 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %74 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %73, i32 1
  store %struct.sshcipher* %74, %struct.sshcipher** %10, align 8
  br label %12

75:                                               ; preds = %12
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %75, %55
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
