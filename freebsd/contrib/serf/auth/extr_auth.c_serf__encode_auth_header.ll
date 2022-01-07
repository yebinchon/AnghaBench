; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth.c_serf__encode_auth_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth.c_serf__encode_auth_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serf__encode_auth_header(i8** %0, i8* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i64 @apr_base64_encode_len(i64 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %12, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = add nsw i64 %19, %20
  %22 = add nsw i64 %21, 1
  %23 = call i8* @apr_palloc(i32* %18, i64 %22)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i8**, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %12, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @apr_cpystrn(i8* %26, i8* %27, i64 %29)
  %31 = load i64, i64* %12, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %13, align 8
  store i8 32, i8* %34, align 1
  %36 = load i8*, i8** %13, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @apr_base64_encode(i8* %36, i8* %37, i64 %38)
  ret void
}

declare dso_local i64 @apr_base64_encode_len(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32 @apr_cpystrn(i8*, i8*, i64) #1

declare dso_local i32 @apr_base64_encode(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
