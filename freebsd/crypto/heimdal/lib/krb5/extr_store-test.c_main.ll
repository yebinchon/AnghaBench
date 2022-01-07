; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_store-test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_store-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\01\02\03\04\00", align 1
@KRB5_STORAGE_BYTEORDER_LE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Integer (LE)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\04\03\02\01\00", align 1
@KRB5_STORAGE_BYTEORDER_BE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Integer (BE)\00", align 1
@KRB5_STORAGE_BYTEORDER_HOST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Integer (host)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Principal\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"\00\00\00\01\00\00\00\01\00\00\00\04TEST\00\00\00\06foobar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 @krb5_init_context(i32* %8)
  %13 = call i32* (...) @krb5_storage_emem()
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @krb5_store_int32(i32* %14, i32 16909060)
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @compare(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = call i32* (...) @krb5_storage_emem()
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @KRB5_STORAGE_BYTEORDER_LE, align 4
  %25 = call i32 @krb5_storage_set_byteorder(i32* %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @krb5_store_int32(i32* %26, i32 16909060)
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @compare(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = call i32* (...) @krb5_storage_emem()
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @KRB5_STORAGE_BYTEORDER_BE, align 4
  %37 = call i32 @krb5_storage_set_byteorder(i32* %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @krb5_store_int32(i32* %38, i32 16909060)
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @compare(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = call i32* (...) @krb5_storage_emem()
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @KRB5_STORAGE_BYTEORDER_HOST, align 4
  %49 = call i32 @krb5_storage_set_byteorder(i32* %47, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @krb5_store_int32(i32* %50, i32 16909060)
  store i32 1, i32* %10, align 4
  %52 = bitcast i32* %10 to i8*
  %53 = load i8, i8* %52, align 4
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %57

56:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @compare(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %58, i8* %59, i32 4)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = call i32* (...) @krb5_storage_emem()
  store i32* %65, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @krb5_make_principal(i32 %66, i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @krb5_store_principal(i32* %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @krb5_free_principal(i32 %71, i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @compare(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 26)
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @krb5_free_context(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  ret i32 %85
}

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32* @krb5_storage_emem(...) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i64 @compare(i8*, i32*, i8*, i32) #1

declare dso_local i32 @krb5_storage_set_byteorder(i32*, i32) #1

declare dso_local i32 @krb5_make_principal(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_store_principal(i32*, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
