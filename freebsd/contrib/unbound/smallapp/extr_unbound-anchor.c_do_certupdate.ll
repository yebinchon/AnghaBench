; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_do_certupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_do_certupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { i32 }

@X509 = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"success: the anchor has been updated using the cert\0A\00", align 1
@X509_free = common dso_local global i32 0, align 4
@do_wsa_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32)* @do_certupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_certupdate(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.ip_list*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %28 = load i32, i32* @X509, align 4
  %29 = call i32 @STACK_OF(i32 %28)
  %30 = load i32, i32* @cert, align 4
  %31 = mul nsw i32 %29, %30
  store %struct.ip_list* null, %struct.ip_list** %27, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 @read_cert_or_builtin(i8* %32)
  store i32 %33, i32* @cert, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = load i32, i32* %24, align 4
  %36 = load i8*, i8** %19, align 8
  %37 = load i8*, i8** %20, align 8
  %38 = load i8*, i8** %21, align 8
  %39 = load i32, i32* %22, align 4
  %40 = load i32, i32* %23, align 4
  %41 = call %struct.ip_list* @resolve_name(i8* %34, i32 %35, i8* %36, i8* %37, i8* %38, i32 %39, i32 %40)
  store %struct.ip_list* %41, %struct.ip_list** %27, align 8
  %42 = load %struct.ip_list*, %struct.ip_list** %27, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = call i32* @https(%struct.ip_list* %42, i8* %43, i8* %44)
  store i32* %45, i32** %25, align 8
  %46 = load %struct.ip_list*, %struct.ip_list** %27, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i32* @https(%struct.ip_list* %46, i8* %47, i8* %48)
  store i32* %49, i32** %26, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32*, i32** %25, align 8
  %52 = load i32*, i32** %26, align 8
  %53 = load i32, i32* @cert, align 4
  %54 = load i8*, i8** %18, align 8
  %55 = call i32 @verify_and_update_anchor(i8* %50, i32* %51, i32* %52, i32 %53, i8* %54)
  %56 = load i64, i64* @verb, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %12
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %12
  %61 = load i32*, i32** %25, align 8
  %62 = call i32 @BIO_free(i32* %61)
  %63 = load i32*, i32** %26, align 8
  %64 = call i32 @BIO_free(i32* %63)
  %65 = load i32, i32* @cert, align 4
  %66 = load i32, i32* @X509_free, align 4
  %67 = call i32 @sk_X509_pop_free(i32 %65, i32 %66)
  %68 = load %struct.ip_list*, %struct.ip_list** %27, align 8
  %69 = call i32 @ip_list_free(%struct.ip_list* %68)
  ret i32 1
}

declare dso_local i32 @STACK_OF(i32) #1

declare dso_local i32 @read_cert_or_builtin(i8*) #1

declare dso_local %struct.ip_list* @resolve_name(i8*, i32, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32* @https(%struct.ip_list*, i8*, i8*) #1

declare dso_local i32 @verify_and_update_anchor(i8*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @sk_X509_pop_free(i32, i32) #1

declare dso_local i32 @ip_list_free(%struct.ip_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
