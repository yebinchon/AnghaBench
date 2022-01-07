; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_gethostlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_gethostlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@KRB5_KDC_UNREACH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"No KDC found for realm %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32, i8***)* @gethostlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gethostlist(i32 %0, i8* %1, i32 %2, i8*** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8*** %3, i8**** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @krb5_krbhst_init(i32 %21, i8* %22, i32 %23, i32* %12)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %99

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @krb5_krbhst_next(i32 %31, i32 %32, i32** %15)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %30

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* @KRB5_KDC_UNREACH, align 8
  %44 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @krb5_set_error_message(i32 %42, i64 %43, i32 %44, i8* %45)
  %47 = load i64, i64* @KRB5_KDC_UNREACH, align 8
  store i64 %47, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %99

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i8** @calloc(i32 %50, i32 8)
  %52 = load i8***, i8**** %9, align 8
  store i8** %51, i8*** %52, align 8
  %53 = load i8***, i8**** %9, align 8
  %54 = load i8**, i8*** %53, align 8
  %55 = icmp eq i8** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @krb5_krbhst_free(i32 %57, i32 %58)
  %60 = load i64, i64* @ENOMEM, align 8
  store i64 %60, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %99

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @krb5_krbhst_reset(i32 %62, i32 %63)
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %89, %61
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %12, align 4
  %68 = trunc i64 %18 to i32
  %69 = call i64 @krb5_krbhst_next_as_string(i32 %66, i32 %67, i8* %20, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = call i8* @strdup(i8* %20)
  %73 = load i8***, i8**** %9, align 8
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  store i8* %72, i8** %78, align 8
  %79 = icmp eq i8* %72, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = load i8***, i8**** %9, align 8
  %83 = load i8**, i8*** %82, align 8
  %84 = call i32 @krb5_free_krbhst(i32 %81, i8** %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @krb5_krbhst_free(i32 %85, i32 %86)
  %88 = load i64, i64* @ENOMEM, align 8
  store i64 %88, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %99

89:                                               ; preds = %71
  br label %65

90:                                               ; preds = %65
  %91 = load i8***, i8**** %9, align 8
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* null, i8** %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @krb5_krbhst_free(i32 %96, i32 %97)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %99

99:                                               ; preds = %90, %80, %56, %41, %27
  %100 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @krb5_krbhst_init(i32, i8*, i32, i32*) #2

declare dso_local i64 @krb5_krbhst_next(i32, i32, i32**) #2

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, i8*) #2

declare dso_local i32 @N_(i8*, i8*) #2

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i32 @krb5_krbhst_free(i32, i32) #2

declare dso_local i32 @krb5_krbhst_reset(i32, i32) #2

declare dso_local i64 @krb5_krbhst_next_as_string(i32, i32, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @krb5_free_krbhst(i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
