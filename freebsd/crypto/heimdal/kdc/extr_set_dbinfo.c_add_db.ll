; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_set_dbinfo.c_add_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_set_dbinfo.c_add_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_kdc_configuration = type { i32, i32* }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.krb5_kdc_configuration*, i8*, i8*)* @add_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_db(i32 %0, %struct.krb5_kdc_configuration* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.krb5_kdc_configuration*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.krb5_kdc_configuration* %1, %struct.krb5_kdc_configuration** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %13 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %16 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i8* @realloc(i32* %14, i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = call i32 @krb5_set_error_message(i32 %26, i64 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @ENOMEM, align 8
  store i64 %29, i64* %5, align 8
  br label %77

30:                                               ; preds = %4
  %31 = load i8*, i8** %11, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %34 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %37 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %40 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @hdb_create(i32 %35, i32* %43, i8* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %5, align 8
  br label %77

50:                                               ; preds = %30
  %51 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %52 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %60 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.krb5_kdc_configuration*, %struct.krb5_kdc_configuration** %7, align 8
  %63 = getelementptr inbounds %struct.krb5_kdc_configuration, %struct.krb5_kdc_configuration* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @hdb_set_master_keyfile(i32 %58, i32 %68, i8* %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %5, align 8
  br label %77

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %50
  store i64 0, i64* %5, align 8
  br label %77

77:                                               ; preds = %76, %73, %48, %25
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i64 @hdb_create(i32, i32*, i8*) #1

declare dso_local i64 @hdb_set_master_keyfile(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
