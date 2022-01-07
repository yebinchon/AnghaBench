; ModuleID = '/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_pname_to_uid.c__gsskrb5_pname_to_uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/kerberos5/lib/libgssapi_krb5/extr_pname_to_uid.c__gsskrb5_pname_to_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@MAXLOGNAME = common dso_local global i32 0, align 4
@_gsskrb5_pname_to_uid.buflen_hint = internal global i64 1024, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5_pname_to_uid(i64* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca %struct.passwd, align 4
  %18 = alloca %struct.passwd*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @MAXLOGNAME, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = call i32 @GSSAPI_KRB5_INIT(i32* %10)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = trunc i64 %26 to i32
  %33 = call i64 @krb5_aname_to_localname(i32 %30, i32 %31, i32 %32, i8* %28)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i64, i64* %12, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %39, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %99

40:                                               ; preds = %4
  %41 = load i64*, i64** %6, align 8
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* @_gsskrb5_pname_to_uid.buflen_hint, align 8
  store i64 %42, i64* %19, align 8
  br label %43

43:                                               ; preds = %76, %40
  store %struct.passwd* null, %struct.passwd** %18, align 8
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  store i8* %44, i8** %16, align 8
  %45 = load i64, i64* %19, align 8
  %46 = icmp ugt i64 %45, 1024
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %19, align 8
  %49 = call i8* @malloc(i64 %48)
  store i8* %49, i8** %16, align 8
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i8*, i8** %16, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %77

54:                                               ; preds = %50
  %55 = load i8*, i8** %16, align 8
  %56 = load i64, i64* %19, align 8
  %57 = call i32 @getpwnam_r(i8* %28, %struct.passwd* %17, i8* %55, i64 %56, %struct.passwd** %18)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @ERANGE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %77

62:                                               ; preds = %54
  %63 = load i64, i64* %19, align 8
  %64 = icmp ugt i64 %63, 1024
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i64, i64* %19, align 8
  %70 = add i64 %69, 1024
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @_gsskrb5_pname_to_uid.buflen_hint, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %19, align 8
  store i64 %75, i64* @_gsskrb5_pname_to_uid.buflen_hint, align 8
  br label %76

76:                                               ; preds = %74, %68
  br label %43

77:                                               ; preds = %61, %53
  %78 = load %struct.passwd*, %struct.passwd** %18, align 8
  %79 = icmp ne %struct.passwd* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.passwd*, %struct.passwd** %18, align 8
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %85, i64* %21, align 8
  br label %88

86:                                               ; preds = %77
  %87 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %87, i64* %21, align 8
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i8*, i8** %16, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i64, i64* %19, align 8
  %93 = icmp ugt i64 %92, 1024
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @free(i8* %95)
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = load i64, i64* %21, align 8
  store i64 %98, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %99

99:                                               ; preds = %97, %36
  %100 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GSSAPI_KRB5_INIT(i32*) #2

declare dso_local i64 @krb5_aname_to_localname(i32, i32, i32, i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @getpwnam_r(i8*, %struct.passwd*, i8*, i64, %struct.passwd**) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
