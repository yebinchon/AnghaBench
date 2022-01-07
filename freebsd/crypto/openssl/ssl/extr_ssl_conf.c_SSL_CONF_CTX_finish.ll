; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_conf.c_SSL_CONF_CTX_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_conf.c_SSL_CONF_CTX_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8**, i32*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@SSL_CONF_FLAG_REQUIRE_PRIVATE = common dso_local global i32 0, align 4
@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@X509_NAME_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CONF_CTX_finish(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %5, align 8
  br label %28

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %28, %11
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %74

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SSL_CONF_FLAG_REQUIRE_PRIVATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %32
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %70, %39
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @SSL_PKEY_NUM, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %44
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @cmd_PrivateKey(%struct.TYPE_9__* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %116

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %53, %44
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %4, align 8
  br label %40

73:                                               ; preds = %40
  br label %74

74:                                               ; preds = %73, %32, %29
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %115

79:                                               ; preds = %74
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @SSL_set0_CA_list(%struct.TYPE_11__* %87, i32* %90)
  br label %112

92:                                               ; preds = %79
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = icmp ne %struct.TYPE_12__* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @SSL_CTX_set0_CA_list(%struct.TYPE_12__* %100, i32* %103)
  br label %111

105:                                              ; preds = %92
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @X509_NAME_free, align 4
  %110 = call i32 @sk_X509_NAME_pop_free(i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %97
  br label %112

112:                                              ; preds = %111, %84
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %112, %74
  store i32 1, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %67
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @cmd_PrivateKey(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @SSL_set0_CA_list(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SSL_CTX_set0_CA_list(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sk_X509_NAME_pop_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
