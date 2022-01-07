; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_put_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_put_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i8*)* @put_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @put_string(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ntlm_buf, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @ascii2ucs2le(i8* %13, i32 0, %struct.ntlm_buf* %9)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %4, align 8
  br label %44

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @rk_UNCONST(i8* %21)
  %23 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %9, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @krb5_storage_write(i32* %28, i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CHECK(i32 %33, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %9)
  br label %41

41:                                               ; preds = %39, %27
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %17
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @ascii2ucs2le(i8*, i32, %struct.ntlm_buf*) #1

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CHECK(i32, i32) #1

declare dso_local i32 @krb5_storage_write(i32*, i32, i32) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
