; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_reply_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_reply_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not even generate error reply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sockaddr*, i32, i32, i8*)* @reply_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reply_priv(i32 %0, i32 %1, %struct.sockaddr* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = load i32, i32* @context, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @krb5_mk_rep(i32 %17, i32 %18, i32* %15)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i32, i32* @context, align 4
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @krb5_warn(i32 %23, i64 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %50

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @make_result(i32* %16, i32 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %50

32:                                               ; preds = %26
  %33 = load i32, i32* @context, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @krb5_mk_priv(i32 %33, i32 %34, i32* %16, i32* %14, i32* null)
  store i64 %35, i64* %13, align 8
  %36 = call i32 @krb5_data_free(i32* %16)
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @krb5_warn(i32 %40, i64 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %50

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @send_reply(i32 %44, %struct.sockaddr* %45, i32 %46, i32* %15, i32* %14)
  %48 = call i32 @krb5_data_free(i32* %15)
  %49 = call i32 @krb5_data_free(i32* %14)
  br label %50

50:                                               ; preds = %43, %39, %31, %22
  ret void
}

declare dso_local i64 @krb5_mk_rep(i32, i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @make_result(i32*, i32, i8*) #1

declare dso_local i64 @krb5_mk_priv(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @send_reply(i32, %struct.sockaddr*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
