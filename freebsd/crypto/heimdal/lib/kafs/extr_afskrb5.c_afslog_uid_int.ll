; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_afslog_uid_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_afslog_uid_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { %struct.krb5_kafs_data* }
%struct.krb5_kafs_data = type { i32, i32, i32 }
%struct.kafs_token = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kafs_data*, i8*, i8*, i32, i8*)* @afslog_uid_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @afslog_uid_int(%struct.kafs_data* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.kafs_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kafs_token, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.krb5_kafs_data*, align 8
  store %struct.kafs_data* %0, %struct.kafs_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %18 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %17, i32 0, i32 0
  %19 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %18, align 8
  store %struct.krb5_kafs_data* %19, %struct.krb5_kafs_data** %16, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %5
  %29 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @_kafs_afslog_all_local_cells(%struct.kafs_data* %29, i32 %30, i8* %31)
  store i64 %32, i64* %6, align 8
  br label %80

33:                                               ; preds = %22
  %34 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %16, align 8
  %35 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %16, align 8
  %38 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @krb5_cc_get_principal(i32 %36, i32 %39, i32* %14)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %6, align 8
  br label %80

45:                                               ; preds = %33
  %46 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %16, align 8
  %47 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i8* @krb5_principal_get_realm(i32 %48, i32 %49)
  store i8* %50, i8** %15, align 8
  %51 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %13, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %16, align 8
  %55 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @_kafs_get_cred(%struct.kafs_data* %52, i8* %53, i32 %56, i8* %57, i32 %58, %struct.kafs_token* %13)
  store i64 %59, i64* %12, align 8
  %60 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %16, align 8
  %61 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @krb5_free_principal(i32 %62, i32 %63)
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %45
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %13, i32 0, i32 2
  %70 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %13, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %13, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @kafs_settoken_rxkad(i8* %68, i32* %69, i32* %71, i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = getelementptr inbounds %struct.kafs_token, %struct.kafs_token* %13, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @free(i32* %76)
  br label %78

78:                                               ; preds = %67, %45
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %78, %43, %28
  %81 = load i64, i64* %6, align 8
  ret i64 %81
}

declare dso_local i64 @_kafs_afslog_all_local_cells(%struct.kafs_data*, i32, i8*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i8* @krb5_principal_get_realm(i32, i32) #1

declare dso_local i64 @_kafs_get_cred(%struct.kafs_data*, i8*, i32, i8*, i32, %struct.kafs_token*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @kafs_settoken_rxkad(i8*, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
