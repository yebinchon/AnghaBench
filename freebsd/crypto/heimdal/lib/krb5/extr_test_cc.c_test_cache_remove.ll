; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"krb5_cc_gen_new: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"krbtgt/SU.SE@SU.SE\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"krb5_cc_store_cred\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"krb5_cc_remove_cred\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"krb5_cc_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_cache_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cache_remove(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @krb5_parse_name(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %14, i32 1, i64 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %3, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @krb5_cc_new_unique(i32 %18, i8* %19, i32* null, i32* %6)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %24, i32 1, i64 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @krb5_cc_initialize(i32 %29, i32 %30, i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %36, i32 1, i64 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %28
  %40 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 8)
  %41 = load i32, i32* %3, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %43 = call i64 @krb5_parse_name(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %47, i32 1, i64 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %3, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %53 = call i64 @krb5_parse_name(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %52)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %57, i32 1, i64 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @krb5_cc_store_cred(i32 %61, i32 %62, %struct.TYPE_5__* %8)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %67, i32 1, i64 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @krb5_cc_remove_cred(i32 %71, i32 %72, i32 0, %struct.TYPE_5__* %8)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %77, i32 1, i64 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @krb5_cc_destroy(i32 %81, i32 %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %3, align 4
  %88 = load i64, i64* %5, align 8
  %89 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %87, i32 1, i64 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @krb5_free_principal(i32 %91, i32 %92)
  %94 = load i32, i32* %3, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @krb5_free_principal(i32 %94, i32 %96)
  %98 = load i32, i32* %3, align 4
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @krb5_free_principal(i32 %98, i32 %100)
  ret void
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i8*, i32*, i32*) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @krb5_cc_store_cred(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @krb5_cc_remove_cred(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @krb5_cc_destroy(i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
