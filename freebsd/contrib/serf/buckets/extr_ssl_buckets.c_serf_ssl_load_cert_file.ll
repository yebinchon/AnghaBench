; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_serf_ssl_load_cert_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_serf_ssl_load_cert_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@APR_SUCCESS = common dso_local global i32 0, align 4
@SERF_ERROR_SSL_CERT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf_ssl_load_cert_file(%struct.TYPE_4__** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @PEM_read_X509(i32* %15, i32* null, i32* null, i32* null)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @fclose(i32* %17)
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_4__* @apr_palloc(i32* %22, i32 8)
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %24, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* @SERF_ERROR_SSL_CERT_FAILED, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @PEM_read_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.TYPE_4__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
