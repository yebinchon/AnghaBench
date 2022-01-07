; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_server_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.digest_server_init_options = type { i8*, i32, i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"digest_alloc\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"krb5_digest_set_type\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"krb5_digest_set_server_cb\00", align 1
@id = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"krb5_digest_init_request\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"type=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"server-nonce=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"identifier=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"opaque=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digest_server_init(%struct.digest_server_init_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.digest_server_init_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.digest_server_init_options* %0, %struct.digest_server_init_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load i32, i32* @context, align 4
  %11 = call i64 @krb5_digest_alloc(i32 %10, i32* %8)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @context, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @krb5_err(i32 %15, i32 1, i64 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @context, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.digest_server_init_options*, %struct.digest_server_init_options** %4, align 8
  %22 = getelementptr inbounds %struct.digest_server_init_options, %struct.digest_server_init_options* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @krb5_digest_set_type(i32 %19, i32 %20, i8* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @context, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @krb5_err(i32 %28, i32 1, i64 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.digest_server_init_options*, %struct.digest_server_init_options** %4, align 8
  %33 = getelementptr inbounds %struct.digest_server_init_options, %struct.digest_server_init_options* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.digest_server_init_options*, %struct.digest_server_init_options** %4, align 8
  %38 = getelementptr inbounds %struct.digest_server_init_options, %struct.digest_server_init_options* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i32, i32* @context, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.digest_server_init_options*, %struct.digest_server_init_options** %4, align 8
  %45 = getelementptr inbounds %struct.digest_server_init_options, %struct.digest_server_init_options* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.digest_server_init_options*, %struct.digest_server_init_options** %4, align 8
  %48 = getelementptr inbounds %struct.digest_server_init_options, %struct.digest_server_init_options* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @krb5_digest_set_server_cb(i32 %42, i32 %43, i32 %46, i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32, i32* @context, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @krb5_err(i32 %54, i32 1, i64 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %41
  br label %58

58:                                               ; preds = %57, %36, %31
  %59 = load i32, i32* @context, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.digest_server_init_options*, %struct.digest_server_init_options** %4, align 8
  %62 = getelementptr inbounds %struct.digest_server_init_options, %struct.digest_server_init_options* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @id, align 4
  %65 = call i64 @krb5_digest_init_request(i32 %59, i32 %60, i32 %63, i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* @context, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @krb5_err(i32 %69, i32 1, i64 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %58
  %73 = load %struct.digest_server_init_options*, %struct.digest_server_init_options** %4, align 8
  %74 = getelementptr inbounds %struct.digest_server_init_options, %struct.digest_server_init_options* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @context, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @krb5_digest_get_server_nonce(i32 %77, i32 %78)
  %80 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @context, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @krb5_digest_get_identifier(i32 %81, i32 %82)
  store i8* %83, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %72
  %90 = load i32, i32* @context, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @krb5_digest_get_opaque(i32 %90, i32 %91)
  %93 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @krb5_digest_free(i32 %94)
  ret i32 0
}

declare dso_local i64 @krb5_digest_alloc(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_digest_set_type(i32, i32, i8*) #1

declare dso_local i64 @krb5_digest_set_server_cb(i32, i32, i32, i32) #1

declare dso_local i64 @krb5_digest_init_request(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @krb5_digest_get_server_nonce(i32, i32) #1

declare dso_local i8* @krb5_digest_get_identifier(i32, i32) #1

declare dso_local i8* @krb5_digest_get_opaque(i32, i32) #1

declare dso_local i32 @krb5_digest_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
