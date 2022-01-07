; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswd.c_change_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswd.c_change_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"New password: \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"New password for %s: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"krb5_set_password_using_ccache\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s%s%.*s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @change_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_password(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = call i32 @krb5_data_zero(%struct.TYPE_6__* %8)
  %22 = call i32 @krb5_data_zero(%struct.TYPE_6__* %9)
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (i8**, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %40

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @krb5_unparse_name(i32 %28, i32* %29, i8** %15)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @krb5_err(i32 %34, i32 1, i64 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 (i8**, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %25
  %41 = load i8*, i8** %14, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @krb5_errx(i32 %44, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = trunc i64 %18 to i32
  %48 = load i8*, i8** %14, align 8
  %49 = call i64 @UI_UTIL_read_pw_string(i8* %20, i32 %47, i8* %48, i32 1)
  store i64 %49, i64* %11, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @krb5_set_password_using_ccache(i32 %62, i32 %63, i8* %20, i32* %64, i32* %10, %struct.TYPE_6__* %8, %struct.TYPE_6__* %9)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @krb5_warn(i32 %69, i64 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @krb5_passwd_result_to_string(i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  br label %92

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i8* [ %90, %87 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %91 ]
  %94 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %75, i8* %80, i32 %83, i8* %93)
  %95 = call i32 @krb5_data_free(%struct.TYPE_6__* %8)
  %96 = call i32 @krb5_data_free(%struct.TYPE_6__* %9)
  %97 = load i64, i64* %11, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %92, %68, %60
  %101 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_6__*) #2

declare dso_local i32 @asprintf(i8**, i8*, ...) #2

declare dso_local i64 @krb5_unparse_name(i32, i32*, i8**) #2

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #2

declare dso_local i32 @krb5_errx(i32, i32, i8*) #2

declare dso_local i64 @UI_UTIL_read_pw_string(i8*, i32, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @krb5_set_password_using_ccache(i32, i32, i8*, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i32 @krb5_warn(i32, i64, i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i8*) #2

declare dso_local i8* @krb5_passwd_result_to_string(i32, i32) #2

declare dso_local i32 @krb5_data_free(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
