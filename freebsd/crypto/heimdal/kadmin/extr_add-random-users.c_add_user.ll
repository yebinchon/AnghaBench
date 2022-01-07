; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_add-random-users.c_add_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_add-random-users.c_add_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"kadm5_create_principal\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8**)* @add_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_user(i32 %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = call i32 (...) @rand()
  store i32 %15, i32* %11, align 4
  %16 = call i32 (...) @rand()
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %18 = load i8**, i8*** %8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = urem i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %18, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = srem i32 %25, 1000
  %27 = call i32 @snprintf(i8* %17, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26)
  %28 = load i32, i32* @KADM5_PRINCIPAL, align 4
  store i32 %28, i32* %14, align 4
  %29 = call i32 @memset(%struct.TYPE_5__* %9, i32 0, i32 4)
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %33 = call i64 @krb5_parse_name(i32 %30, i8* %31, i32* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %44 = call i64 @kadm5_create_principal(i8* %41, %struct.TYPE_5__* %9, i32 %42, i8* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @krb5_err(i32 %48, i32 1, i64 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @kadm5_free_principal_ent(i8* %52, %struct.TYPE_5__* %9)
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %55 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @kadm5_create_principal(i8*, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @kadm5_free_principal_ent(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
