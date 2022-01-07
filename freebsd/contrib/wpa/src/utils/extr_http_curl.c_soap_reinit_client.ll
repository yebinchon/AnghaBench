; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_soap_reinit_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_soap_reinit_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soap_reinit_client(%struct.http_ctx* %0) #0 {
  %2 = alloca %struct.http_ctx*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.http_ctx* %0, %struct.http_ctx** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %11 = call i32 @clear_curl(%struct.http_ctx* %10)
  %12 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clone_str(i8** %3, i32 %14)
  %16 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clone_str(i8** %4, i32 %18)
  %20 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clone_str(i8** %5, i32 %22)
  %24 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clone_str(i8** %6, i32 %26)
  %28 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clone_str(i8** %7, i32 %30)
  %32 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clone_str(i8** %8, i32 %34)
  %36 = load %struct.http_ctx*, %struct.http_ctx** %2, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @soap_init_client(%struct.http_ctx* %36, i8* %37, i8* %38, i8* %39, i8* %40, i8* %41, i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @os_free(i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @os_free(i8* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @str_clear_free(i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @str_clear_free(i8* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @os_free(i8* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @os_free(i8* %54)
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @clear_curl(%struct.http_ctx*) #1

declare dso_local i32 @clone_str(i8**, i32) #1

declare dso_local i32 @soap_init_client(%struct.http_ctx*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @str_clear_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
