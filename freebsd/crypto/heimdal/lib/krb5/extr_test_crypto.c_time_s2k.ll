; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_crypto.c_time_s2k.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_crypto.c_time_s2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i32* }

@.str = private unnamed_addr constant [23 x i8] c"krb5_enctype_to_string\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"krb5_string_to_key_data_salt_opaque\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s string2key %d iterations time: %3ld.%06ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32, i32)* @time_s2k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @time_s2k(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @krb5_enctype_to_string(i32 %18, i32 %19, i8** %16)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @krb5_err(i32 %24, i32 1, i64 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %5
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = call i32 @gettimeofday(%struct.timeval* %11, i32* null)
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %55, %27
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = bitcast %struct.TYPE_3__* %15 to { i64, i32* }*
  %41 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %40, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @krb5_string_to_key_salt_opaque(i32 %36, i32 %37, i8* %38, i32 %39, i64 %42, i32* %44, i32* %14)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @krb5_err(i32 %49, i32 1, i64 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %35
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @krb5_free_keyblock_contents(i32 %53, i32* %14)
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %31

58:                                               ; preds = %31
  %59 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %60 = call i32 @timevalsub(%struct.timeval* %12, %struct.timeval* %11)
  %61 = load i8*, i8** %16, align 8
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 %62, i64 %64, i64 %66)
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @free(i8* %68)
  ret void
}

declare dso_local i64 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @krb5_string_to_key_salt_opaque(i32, i32, i8*, i32, i64, i32*, i32*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
