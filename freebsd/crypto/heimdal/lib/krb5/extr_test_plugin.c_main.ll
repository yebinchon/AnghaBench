; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_plugin.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_plugin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"krb5_init_contex\00", align 1
@PLUGIN_TYPE_DATA = common dso_local global i32 0, align 4
@KRB5_PLUGIN_LOCATE = common dso_local global i32 0, align 4
@resolve = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"krb5_plugin_register\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"NOTHERE.H5L.SE\00", align 1
@KRB5_KRBHST_KDC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"krb5_krbhst_init_flags\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"127.0.0.2\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"wrong address: %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"failed to find host\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @setprogname(i8* %18)
  %20 = call i64 @krb5_init_context(i32* %7)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PLUGIN_TYPE_DATA, align 4
  %28 = load i32, i32* @KRB5_PLUGIN_LOCATE, align 4
  %29 = call i64 @krb5_plugin_register(i32 %26, i32 %27, i32 %28, i32* @resolve)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @krb5_err(i32 %33, i32 1, i64 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @KRB5_KRBHST_KDC, align 4
  %39 = call i64 @krb5_krbhst_init_flags(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 0, i32* %8)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @krb5_err(i32 %43, i32 1, i64 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = trunc i64 %13 to i32
  %51 = call i64 @krb5_krbhst_next_as_string(i32 %48, i32 %49, i8* %15, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %59, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %15)
  br label %61

61:                                               ; preds = %58, %53
  br label %47

62:                                               ; preds = %47
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %66, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @krb5_krbhst_free(i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @krb5_free_context(i32 %72)
  store i32 0, i32* %3, align 4
  %74 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setprogname(i8*) #2

declare dso_local i64 @krb5_init_context(i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @krb5_plugin_register(i32, i32, i32, i32*) #2

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #2

declare dso_local i64 @krb5_krbhst_init_flags(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @krb5_krbhst_next_as_string(i32, i32, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #2

declare dso_local i32 @krb5_krbhst_free(i32, i32) #2

declare dso_local i32 @krb5_free_context(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
