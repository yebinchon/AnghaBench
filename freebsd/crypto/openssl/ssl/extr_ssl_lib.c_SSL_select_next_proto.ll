; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_select_next_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_select_next_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_NPN_UNSUPPORTED = common dso_local global i32 0, align 4
@OPENSSL_NPN_NEGOTIATED = common dso_local global i32 0, align 4
@OPENSSL_NPN_NO_OVERLAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_select_next_proto(i8** %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @OPENSSL_NPN_UNSUPPORTED, align 4
  store i32 %17, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %76, %6
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %65, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %33, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %27
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @memcmp(i8* %46, i8* %51, i8 zeroext %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %41
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %15, align 8
  %64 = load i32, i32* @OPENSSL_NPN_NEGOTIATED, align 4
  store i32 %64, i32* %16, align 4
  br label %90

65:                                               ; preds = %41, %27
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* %14, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %23

76:                                               ; preds = %23
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %18

87:                                               ; preds = %18
  %88 = load i8*, i8** %11, align 8
  store i8* %88, i8** %15, align 8
  %89 = load i32, i32* @OPENSSL_NPN_NO_OVERLAP, align 4
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %87, %59
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8**, i8*** %7, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %8, align 8
  store i8 %96, i8* %97, align 1
  %98 = load i32, i32* %16, align 4
  ret i32 %98
}

declare dso_local i64 @memcmp(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
