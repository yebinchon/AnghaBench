; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_verify_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_verify_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.verify = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"verify_path: %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"path ok\0A\00", align 1
@HX509_HN_HOSTNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"verify_hostname: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @verify_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_f(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.verify*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.verify*
  store %struct.verify* %11, %struct.verify** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.verify*, %struct.verify** %7, align 8
  %14 = getelementptr inbounds %struct.verify, %struct.verify* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.verify*, %struct.verify** %7, align 8
  %18 = getelementptr inbounds %struct.verify, %struct.verify* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hx509_verify_path(i32 %12, i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @hx509_get_error_string(i32 %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @hx509_free_error_string(i8* %30)
  %32 = load %struct.verify*, %struct.verify** %7, align 8
  %33 = getelementptr inbounds %struct.verify, %struct.verify* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %42

36:                                               ; preds = %3
  %37 = load %struct.verify*, %struct.verify** %7, align 8
  %38 = getelementptr inbounds %struct.verify, %struct.verify* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %23
  %43 = load %struct.verify*, %struct.verify** %7, align 8
  %44 = getelementptr inbounds %struct.verify, %struct.verify* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @HX509_HN_HOSTNAME, align 4
  %51 = load %struct.verify*, %struct.verify** %7, align 8
  %52 = getelementptr inbounds %struct.verify, %struct.verify* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @hx509_verify_hostname(i32 %48, i32 %49, i32 0, i32 %50, i64 %53, i32* null, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.verify*, %struct.verify** %7, align 8
  %61 = getelementptr inbounds %struct.verify, %struct.verify* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %47
  br label %65

65:                                               ; preds = %64, %42
  ret i32 0
}

declare dso_local i32 @hx509_verify_path(i32, i32, i32, i32) #1

declare dso_local i8* @hx509_get_error_string(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @hx509_free_error_string(i8*) #1

declare dso_local i32 @hx509_verify_hostname(i32, i32, i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
