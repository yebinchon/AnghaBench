; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rename.c_rename_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rename.c_rename_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"krb5_parse_name(%s)\00", align 1
@kadm_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"rename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_entry(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* @context, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @krb5_parse_name(i32 %11, i8* %14, i32* %9)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @context, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %19, i64 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %3
  %29 = load i32, i32* @context, align 4
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @krb5_parse_name(i32 %29, i8* %32, i32* %10)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load i32, i32* @context, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @krb5_free_principal(i32 %37, i32 %38)
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %40, i64 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %70

49:                                               ; preds = %28
  %50 = load i32, i32* @kadm_handle, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @kadm5_rename_principal(i32 %50, i32 %51, i32 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @context, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %57, i64 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* @context, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @krb5_free_principal(i32 %61, i32 %62)
  %64 = load i32, i32* @context, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @krb5_free_principal(i32 %64, i32 %65)
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %60, %36, %18
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @kadm5_rename_principal(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
