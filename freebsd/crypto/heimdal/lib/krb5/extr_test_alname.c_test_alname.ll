; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_alname.c_test_alname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_alname.c_test_alname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"krb5_build_principal\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"krb5_aname_to_localname: %s -> %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"compared failed %s != %s (should have succeded)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"compared failed %s == %s (should have failed)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i8*, i32)* @test_alname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_alname(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @krb5_make_principal(i32 %17, i32* %13, i32 %18, i8* %19, i8* %20, i32* null)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %15, align 8
  %27 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %6
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @krb5_unparse_name(i32 %29, i32 %30, i8** %16)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %15, align 8
  %37 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %35, i32 1, i64 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %42 = call i64 @krb5_aname_to_localname(i32 %39, i32 %40, i32 1024, i8* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @krb5_free_principal(i32 %43, i32 %44)
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %81

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* %15, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %55, i32 1, i64 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %54, %38
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @strcmp(i8* %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %81

73:                                               ; preds = %60
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %53, %80, %72
  ret void
}

declare dso_local i64 @krb5_make_principal(i32, i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i64 @krb5_aname_to_localname(i32, i32, i32, i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
