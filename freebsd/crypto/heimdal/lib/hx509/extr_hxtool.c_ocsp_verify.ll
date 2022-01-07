; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_ocsp_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_ocsp_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_verify_options = type { i32* }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no ocsp file given\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"map_file: %s: %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MEMORY:test-certs\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"hx509_certs_init: MEMORY\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"hx509_certs_append: %s\00", align 1
@verify_o = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocsp_verify(%struct.ocsp_verify_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.ocsp_verify_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ocsp_verify_options* %0, %struct.ocsp_verify_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = load i32, i32* @context, align 4
  %13 = call i32 @hx509_lock_init(i32 %12, i32* %7)
  %14 = load %struct.ocsp_verify_options*, %struct.ocsp_verify_options** %4, align 8
  %15 = getelementptr inbounds %struct.ocsp_verify_options, %struct.ocsp_verify_options* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.ocsp_verify_options*, %struct.ocsp_verify_options** %4, align 8
  %22 = getelementptr inbounds %struct.ocsp_verify_options, %struct.ocsp_verify_options* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @_hx509_map_file_os(i32* %23, i32* %11)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* @context, align 4
  %35 = call i32 @hx509_certs_init(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @context, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %39, i32 1, i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %33
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load i32, i32* @context, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @hx509_certs_append(i32 %48, i32 %49, i32 %50, i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load i32, i32* @context, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32, i32, i32, i8*, ...) @hx509_err(i32 %60, i32 1, i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %59, %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %43

72:                                               ; preds = %43
  %73 = load i32, i32* @context, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @verify_o, align 4
  %76 = call i32 @hx509_certs_iter_f(i32 %73, i32 %74, i32 %75, i32* %11)
  store i32 %76, i32* %9, align 4
  %77 = call i32 @hx509_certs_free(i32* %8)
  %78 = call i32 @_hx509_unmap_file_os(i32* %11)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @hx509_lock_free(i32 %79)
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @_hx509_map_file_os(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*, i32) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @hx509_certs_append(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32, i32, i32*) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

declare dso_local i32 @_hx509_unmap_file_os(i32*) #1

declare dso_local i32 @hx509_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
