; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_certificate_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_certificate_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.certificate_copy_options = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"hx509_lock_command_string: %s: %d\00", align 1
@HX509_CERTS_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hx509_certs_init\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"hx509_certs_append\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hx509_certs_store\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @certificate_copy(%struct.certificate_copy_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.certificate_copy_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.certificate_copy_options* %0, %struct.certificate_copy_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* @context, align 4
  %13 = call i32 @hx509_lock_init(i32 %12, i32** %8)
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.certificate_copy_options*, %struct.certificate_copy_options** %4, align 8
  %16 = getelementptr inbounds %struct.certificate_copy_options, %struct.certificate_copy_options* %15, i32 0, i32 1
  %17 = call i32 @lock_strings(i32* %14, i32* %16)
  %18 = load %struct.certificate_copy_options*, %struct.certificate_copy_options** %4, align 8
  %19 = getelementptr inbounds %struct.certificate_copy_options, %struct.certificate_copy_options* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i32, i32* @context, align 4
  %24 = call i32 @hx509_lock_init(i32 %23, i32** %9)
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.certificate_copy_options*, %struct.certificate_copy_options** %4, align 8
  %27 = getelementptr inbounds %struct.certificate_copy_options, %struct.certificate_copy_options* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hx509_lock_command_string(i32* %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.certificate_copy_options*, %struct.certificate_copy_options** %4, align 8
  %34 = getelementptr inbounds %struct.certificate_copy_options, %struct.certificate_copy_options* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %22
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* @context, align 4
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @HX509_CERTS_CREATE, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @hx509_certs_init(i32 %40, i8* %46, i32 %47, i32* %48, i32* %7)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i32, i32* @context, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @hx509_err(i32 %53, i32 1, i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %39
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = icmp sgt i32 %58, 1
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i32, i32* @context, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @hx509_certs_append(i32 %62, i32 %63, i32* %64, i8* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load i32, i32* @context, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @hx509_err(i32 %72, i32 1, i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %61
  %76 = load i8**, i8*** %6, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %6, align 8
  br label %57

78:                                               ; preds = %57
  %79 = load i32, i32* @context, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @hx509_certs_store(i32 %79, i32 %80, i32 0, i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @context, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @hx509_err(i32 %86, i32 1, i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %78
  %90 = call i32 @hx509_certs_free(i32* %7)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @hx509_lock_free(i32* %91)
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @hx509_lock_free(i32* %93)
  ret i32 0
}

declare dso_local i32 @hx509_lock_init(i32, i32**) #1

declare dso_local i32 @lock_strings(i32*, i32*) #1

declare dso_local i32 @hx509_lock_command_string(i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_certs_append(i32, i32, i32*, i8*) #1

declare dso_local i32 @hx509_certs_store(i32, i32, i32, i32*) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

declare dso_local i32 @hx509_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
