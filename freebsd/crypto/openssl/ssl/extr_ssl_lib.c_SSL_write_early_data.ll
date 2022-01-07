; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_write_early_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_write_early_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@SSL_F_SSL_WRITE_EARLY_DATA = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECTING = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_WRITING = common dso_local global i32 0, align 4
@SSL_MODE_ENABLE_PARTIAL_WRITE = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_UNAUTH_WRITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_write_early_data(%struct.TYPE_11__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %128 [
    i32 131, label %17
    i32 133, label %49
    i32 128, label %61
    i32 129, label %94
    i32 132, label %104
    i32 130, label %104
  ]

17:                                               ; preds = %4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = call i32 @SSL_in_before(%struct.TYPE_11__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31, %26
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %22, %17
  %45 = load i32, i32* @SSL_F_SSL_WRITE_EARLY_DATA, align 4
  %46 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %47 = call i32 @SSLerr(i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %132

48:                                               ; preds = %39, %31
  br label %49

49:                                               ; preds = %4, %48
  %50 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = call i32 @SSL_connect(%struct.TYPE_11__* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 133, i32* %59, align 8
  store i32 0, i32* %5, align 4
  br label %132

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %4, %60
  %62 = load i32, i32* @SSL_EARLY_DATA_WRITING, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SSL_MODE_ENABLE_PARTIAL_WRITE, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @SSL_MODE_ENABLE_PARTIAL_WRITE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @SSL_write_ex(%struct.TYPE_11__* %76, i8* %77, i64 %78, i64* %12)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %61
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 128, i32* %89, align 8
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %132

91:                                               ; preds = %61
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 129, i32* %93, align 8
  br label %94

94:                                               ; preds = %4, %91
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = call i32 @statem_flush(%struct.TYPE_11__* %95)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %132

99:                                               ; preds = %94
  %100 = load i64, i64* %8, align 8
  %101 = load i64*, i64** %9, align 8
  store i64 %100, i64* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 128, i32* %103, align 8
  store i32 1, i32* %5, align 4
  br label %132

104:                                              ; preds = %4, %4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @SSL_EARLY_DATA_UNAUTH_WRITING, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = call i32 @SSL_write_ex(%struct.TYPE_11__* %111, i8* %112, i64 %113, i64* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %104
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @BIO_flush(i32 %121)
  br label %123

123:                                              ; preds = %118, %104
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %132

128:                                              ; preds = %4
  %129 = load i32, i32* @SSL_F_SSL_WRITE_EARLY_DATA, align 4
  %130 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %131 = call i32 @SSLerr(i32 %129, i32 %130)
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %123, %99, %98, %87, %57, %44
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @SSL_in_before(%struct.TYPE_11__*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_connect(%struct.TYPE_11__*) #1

declare dso_local i32 @SSL_write_ex(%struct.TYPE_11__*, i8*, i64, i64*) #1

declare dso_local i32 @statem_flush(%struct.TYPE_11__*) #1

declare dso_local i32 @BIO_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
