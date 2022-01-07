; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_set_subject_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_set_subject_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_connection*, i8*, i8*, i8*, i8*, i8*)* @tls_connection_set_subject_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_set_subject_match(%struct.tls_connection* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tls_connection*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %15 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @os_free(i32* %16)
  %18 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %19 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %6
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @os_strdup(i8* %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %27 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %29 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %119

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %6
  %35 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %36 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @os_free(i32* %37)
  %39 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %40 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @os_strdup(i8* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %48 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %50 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 -1, i32* %7, align 4
  br label %119

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %57 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @os_free(i32* %58)
  %60 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %61 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %55
  %65 = load i8*, i8** %11, align 8
  %66 = call i8* @os_strdup(i8* %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %69 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %71 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 -1, i32* %7, align 4
  br label %119

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %55
  %77 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %78 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @os_free(i32* %79)
  %81 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %82 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load i8*, i8** %12, align 8
  %87 = call i8* @os_strdup(i8* %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %90 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %92 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 -1, i32* %7, align 4
  br label %119

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %99 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @os_free(i32* %100)
  %102 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %103 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %97
  %107 = load i8*, i8** %13, align 8
  %108 = call i8* @os_strdup(i8* %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %111 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %110, i32 0, i32 0
  store i32* %109, i32** %111, align 8
  %112 = load %struct.tls_connection*, %struct.tls_connection** %8, align 8
  %113 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %106
  store i32 -1, i32* %7, align 4
  br label %119

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %97
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %116, %95, %74, %53, %32
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
