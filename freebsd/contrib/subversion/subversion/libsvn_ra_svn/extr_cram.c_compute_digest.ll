; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_cram.c_compute_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_cram.c_compute_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @compute_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_digest(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 64)
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ule i64 %16, 64
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @memcpy(i8* %19, i8* %20, i32 %21)
  br label %28

23:                                               ; preds = %3
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @apr_md5(i8* %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 64
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, 54
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %29

44:                                               ; preds = %29
  %45 = call i32 @apr_md5_init(i32* %10)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %47 = call i32 (i32*, ...) @apr_md5_update(i32* %10, i8* %46, i64 64)
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 (i32*, ...) @apr_md5_update(i32* %10, i8* %48, i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @apr_md5_final(i8* %52, i32* %10)
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %66, %44
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 64
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %63, 106
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %54

69:                                               ; preds = %54
  %70 = call i32 @apr_md5_init(i32* %10)
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %72 = call i32 (i32*, ...) @apr_md5_update(i32* %10, i8* %71, i64 64)
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %75 = call i32 (i32*, ...) @apr_md5_update(i32* %10, i8* %73, i32 %74)
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @apr_md5_final(i8* %76, i32* %10)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @apr_md5(i8*, i8*, i32) #1

declare dso_local i32 @apr_md5_init(i32*) #1

declare dso_local i32 @apr_md5_update(i32*, ...) #1

declare dso_local i32 @apr_md5_final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
