; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_char_class_passwd_quality.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_char_class_passwd_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"1234567890\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"!@#$%^&*()/?<>,.{[]}\\|'~`\22 \00", align 1
@__const.char_class_passwd_quality.classes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"password_quality\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"min_classes\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.7 = private unnamed_addr constant [268 x i8] c"Password doesn't meet complexity requirement.\0AAdd more characters from the following classes:\0A1. English uppercase characters (A through Z)\0A2. English lowercase characters (a through z)\0A3. Base 10 digits (0 through 9)\0A4. Nonalphanumeric characters (e.g., !, $, #, %%)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_3__*, i8*, i8*, i64)* @char_class_passwd_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @char_class_passwd_quality(i32 %0, i32 %1, %struct.TYPE_3__* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = bitcast [4 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([4 x i8*]* @__const.char_class_passwd_quality.classes to i8*), i64 32, i1 false)
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @krb5_config_get_int_default(i32 %21, i32* null, i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* %18, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %19, align 8
  %30 = load i8*, i8** %19, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @strlcpy(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %34)
  store i32 1, i32* %7, align 4
  br label %80

36:                                               ; preds = %6
  %37 = load i8*, i8** %19, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %18, align 8
  %42 = call i32 @strlcpy(i8* %37, i8* %40, i64 %41)
  %43 = load i8*, i8** %19, align 8
  %44 = call i64 @strlen(i8* %43)
  store i64 %44, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %45

45:                                               ; preds = %60, %36
  %46 = load i64, i64* %17, align 8
  %47 = icmp ult i64 %46, 4
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i8*, i8** %19, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcspn(i8* %49, i8* %52)
  %54 = load i64, i64* %18, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %17, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %17, align 8
  br label %45

63:                                               ; preds = %45
  %64 = load i8*, i8** %19, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  %69 = call i32 @memset(i8* %64, i32 0, i32 %68)
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @snprintf(i8* %76, i64 %77, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %80

79:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %75, %32
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @krb5_config_get_int_default(i32, i32*, i32, i8*, i8*, i32*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
