; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_acquire_cred.c_acquire_cred_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_acquire_cred.c_acquire_cred_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"import_name failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"acquire_cred failed: %s\00", align 1
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @acquire_cred_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_cred_service(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* @GSS_C_NO_NAME, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @rk_UNCONST(i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @gss_import_name(i32* %10, %struct.TYPE_3__* %13, i32 %25, i64* %14)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @GSS_ERROR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i64, i64* %14, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @gss_acquire_cred(i32* %10, i64 %34, i32 0, i32 %35, i32 %36, i32* %11, i32* null, i32* %12)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @GSS_ERROR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @GSS_C_NO_OID, align 4
  %45 = call i32 @gssapi_err(i32 %42, i32 %43, i32 %44)
  %46 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %51

47:                                               ; preds = %33
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @print_time(i32 %48)
  %50 = call i32 @gss_release_cred(i32* %10, i32* %11)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @GSS_C_NO_NAME, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @gss_release_name(i32* %10, i64* %14)
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @GSS_ERROR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gss_import_name(i32*, %struct.TYPE_3__*, i32, i64*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @gss_acquire_cred(i32*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @gssapi_err(i32, i32, i32) #1

declare dso_local i32 @print_time(i32) #1

declare dso_local i32 @gss_release_cred(i32*, i32*) #1

declare dso_local i32 @gss_release_name(i32*, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
