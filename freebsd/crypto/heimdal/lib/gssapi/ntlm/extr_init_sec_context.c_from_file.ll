; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_init_sec_context.c_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_init_sec_context.c_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, %struct.ntlm_buf*)* @from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_file(i8* %0, i8* %1, i8** %2, %struct.ntlm_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.ntlm_buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.ntlm_buf* %3, %struct.ntlm_buf** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %5, align 4
  br label %76

22:                                               ; preds = %4
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @rk_cloexec_file(i32* %23)
  br label %25

25:                                               ; preds = %58, %49, %38, %22
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %27 = load i32*, i32** %12, align 8
  %28 = call i32* @fgets(i8* %26, i32 1024, i32* %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %70

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %32 = call i64 @strcspn(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %25

39:                                               ; preds = %30
  store i8* null, i8** %10, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %41 = call i8* @strtok_r(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @strcasecmp(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %25

50:                                               ; preds = %44, %39
  %51 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i8* %51, i8** %14, align 8
  %52 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %15, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %50
  br label %25

59:                                               ; preds = %55
  %60 = load i8*, i8** %14, align 8
  %61 = call i8* @strdup(i8* %60)
  %62 = load i8**, i8*** %8, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load %struct.ntlm_buf*, %struct.ntlm_buf** %9, align 8
  %65 = call i32 @heim_ntlm_nt_key(i8* %63, %struct.ntlm_buf* %64)
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %67 = call i32 @memset(i8* %66, i32 0, i32 1024)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @fclose(i32* %68)
  store i32 0, i32* %5, align 4
  br label %76

70:                                               ; preds = %25
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %72 = call i32 @memset(i8* %71, i32 0, i32 1024)
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i32, i32* @ENOENT, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %59, %20
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @rk_cloexec_file(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @heim_ntlm_nt_key(i8*, %struct.ntlm_buf*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
