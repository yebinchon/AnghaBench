; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_reply_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_reply_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kadmin\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"changepw\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not even generate error reply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sockaddr*, i32, i64, i32, i8*)* @reply_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reply_error(i32 %0, i32 %1, %struct.sockaddr* %2, i32 %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i8*, i8** %14, align 8
  %21 = call i64 @make_result(i32* %17, i32 %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %61

24:                                               ; preds = %7
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* @context, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @krb5_make_principal(i32 %28, i32** %18, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @krb5_data_free(i32* %17)
  br label %61

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* @context, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = call i64 @krb5_mk_error(i32 %37, i64 %38, i32* null, i32* %17, i32* null, i32* %39, i32* null, i32* null, i32* %16)
  store i64 %40, i64* %15, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @context, align 4
  %45 = load i32*, i32** %18, align 8
  %46 = call i32 @krb5_free_principal(i32 %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = call i32 @krb5_data_free(i32* %17)
  %49 = load i64, i64* %15, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @context, align 4
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @krb5_warn(i32 %52, i64 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %61

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @send_reply(i32 %56, %struct.sockaddr* %57, i32 %58, i32* null, i32* %16)
  %60 = call i32 @krb5_data_free(i32* %16)
  br label %61

61:                                               ; preds = %55, %51, %33, %23
  ret void
}

declare dso_local i64 @make_result(i32*, i32, i8*) #1

declare dso_local i64 @krb5_make_principal(i32, i32**, i32, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i64 @krb5_mk_error(i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @send_reply(i32, %struct.sockaddr*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
