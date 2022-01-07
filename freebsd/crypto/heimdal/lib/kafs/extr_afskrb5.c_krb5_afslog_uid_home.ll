; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_krb5_afslog_uid_home.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_krb5_afslog_uid_home.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { i8*, %struct.krb5_kafs_data*, i32, i32, i32, i32, i64 (%struct.kafs_data*, i8*, i32, i32, i8*)* }
%struct.krb5_kafs_data = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"krb5\00", align 1
@get_cred = common dso_local global i32 0, align 4
@get_realm = common dso_local global i32 0, align 4
@get_error = common dso_local global i32 0, align 4
@free_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @krb5_afslog_uid_home(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.kafs_data, align 8
  %15 = alloca %struct.krb5_kafs_data, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %14, i32 0, i32 6
  store i64 (%struct.kafs_data*, i8*, i32, i32, i8*)* @afslog_uid_int, i64 (%struct.kafs_data*, i8*, i32, i32, i8*)** %18, align 8
  %19 = load i32, i32* @get_cred, align 4
  %20 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %14, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @get_realm, align 4
  %22 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %14, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @get_error, align 4
  %24 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %14, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @free_error, align 4
  %26 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %14, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %14, i32 0, i32 1
  store %struct.krb5_kafs_data* %15, %struct.krb5_kafs_data** %27, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 0
  %32 = call i64 @krb5_init_context(i32** %31)
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* %16, align 8
  store i64 %36, i64* %7, align 8
  br label %80

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %6
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 1
  %48 = call i64 @krb5_cc_default(i32* %46, i32** %47)
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %71

52:                                               ; preds = %44
  br label %56

53:                                               ; preds = %41
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 1
  store i32* %54, i32** %55, align 8
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %11, align 4
  %58 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %13, align 8
  %62 = call i64 @afslog_uid_int(%struct.kafs_data* %14, i8* %59, i32 0, i32 %60, i8* %61)
  store i64 %62, i64* %16, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @krb5_cc_close(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %56
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i32*, i32** %8, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %15, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @krb5_free_context(i32* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i64, i64* %16, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %78, %35
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i64 @afslog_uid_int(%struct.kafs_data*, i8*, i32, i32, i8*) #1

declare dso_local i64 @krb5_init_context(i32**) #1

declare dso_local i64 @krb5_cc_default(i32*, i32**) #1

declare dso_local i32 @krb5_cc_close(i32*, i32*) #1

declare dso_local i32 @krb5_free_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
