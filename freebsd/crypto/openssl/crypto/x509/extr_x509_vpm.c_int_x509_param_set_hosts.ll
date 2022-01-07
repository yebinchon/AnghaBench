; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vpm.c_int_x509_param_set_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vpm.c_int_x509_param_set_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@SET_HOST = common dso_local global i32 0, align 4
@str_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*, i64)* @int_x509_param_set_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_x509_param_set_hosts(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13, %4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strlen(i8* %20)
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i64 [ %21, %19 ], [ 0, %22 ]
  store i64 %24, i64* %9, align 8
  br label %43

25:                                               ; preds = %13
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %33, 1
  br label %37

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i64 [ %34, %32 ], [ %36, %35 ]
  %39 = call i64 @memchr(i8* %29, i8 signext 0, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %120

42:                                               ; preds = %37, %25
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i64, i64* %9, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %54, %46, %43
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SET_HOST, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @str_free, align 4
  %66 = call i32 @sk_OPENSSL_STRING_pop_free(i32* %64, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %69
  store i32 1, i32* %5, align 4
  br label %120

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i8* @OPENSSL_strndup(i8* %77, i64 %78)
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %120

83:                                               ; preds = %76
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = call i32* (...) @sk_OPENSSL_STRING_new_null()
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = icmp eq i32* %89, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @OPENSSL_free(i8* %94)
  store i32 0, i32* %5, align 4
  br label %120

96:                                               ; preds = %88, %83
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @sk_OPENSSL_STRING_push(i32* %99, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %96
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @OPENSSL_free(i8* %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @sk_OPENSSL_STRING_num(i32* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @sk_OPENSSL_STRING_free(i32* %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %111, %103
  store i32 0, i32* %5, align 4
  br label %120

119:                                              ; preds = %96
  store i32 1, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %118, %93, %82, %75, %41
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @sk_OPENSSL_STRING_pop_free(i32*, i32) #1

declare dso_local i8* @OPENSSL_strndup(i8*, i64) #1

declare dso_local i32* @sk_OPENSSL_STRING_new_null(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @sk_OPENSSL_STRING_push(i32*, i8*) #1

declare dso_local i64 @sk_OPENSSL_STRING_num(i32*) #1

declare dso_local i32 @sk_OPENSSL_STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
