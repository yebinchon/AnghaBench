; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_alg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_alg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keytype = type { i32, i32*, i64, i64 }

@keytypes = common dso_local global %struct.keytype* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sshkey_alg_list(i32 %0, i32 %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.keytype*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i8* null, i8** %11, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.keytype*, %struct.keytype** @keytypes, align 8
  store %struct.keytype* %15, %struct.keytype** %14, align 8
  br label %16

16:                                               ; preds = %91, %4
  %17 = load %struct.keytype*, %struct.keytype** %14, align 8
  %18 = getelementptr inbounds %struct.keytype, %struct.keytype* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %94

21:                                               ; preds = %16
  %22 = load %struct.keytype*, %struct.keytype** %14, align 8
  %23 = getelementptr inbounds %struct.keytype, %struct.keytype* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %91

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.keytype*, %struct.keytype** %14, align 8
  %32 = getelementptr inbounds %struct.keytype, %struct.keytype* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %91

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.keytype*, %struct.keytype** %14, align 8
  %41 = getelementptr inbounds %struct.keytype, %struct.keytype* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.keytype*, %struct.keytype** %14, align 8
  %49 = getelementptr inbounds %struct.keytype, %struct.keytype* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %39
  br label %91

53:                                               ; preds = %47, %44
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8, i8* %9, align 1
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %13, align 8
  %61 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 %57, i8* %61, align 1
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.keytype*, %struct.keytype** %14, align 8
  %64 = getelementptr inbounds %struct.keytype, %struct.keytype* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @strlen(i32* %65)
  store i64 %66, i64* %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %68, %69
  %71 = add i64 %70, 2
  %72 = call i8* @realloc(i8* %67, i64 %71)
  store i8* %72, i8** %10, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @free(i8* %75)
  store i8* null, i8** %5, align 8
  br label %96

77:                                               ; preds = %62
  %78 = load i8*, i8** %10, align 8
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load %struct.keytype*, %struct.keytype** %14, align 8
  %83 = getelementptr inbounds %struct.keytype, %struct.keytype* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, 1
  %87 = call i32 @memcpy(i8* %81, i32* %84, i64 %86)
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %77, %52, %35, %26
  %92 = load %struct.keytype*, %struct.keytype** %14, align 8
  %93 = getelementptr inbounds %struct.keytype, %struct.keytype* %92, i32 1
  store %struct.keytype* %93, %struct.keytype** %14, align 8
  br label %16

94:                                               ; preds = %16
  %95 = load i8*, i8** %11, align 8
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %94, %74
  %97 = load i8*, i8** %5, align 8
  ret i8* %97
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
