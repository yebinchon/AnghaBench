; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_invalid_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_invalid_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@APR_EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Valid UTF-8 data\0A(hex:%s)\0Afollowed by invalid UTF-8 sequence\0A(hex:%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i32*)* @invalid_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @invalid_utf8(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i8* @svn_utf__last_valid(i8* %13, i64 %14)
  store i8* %15, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ugt i64 %21, 24
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 24, i64* %11, align 8
  br label %24

24:                                               ; preds = %23, %3
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = sub i64 %34, %35
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @apr_psprintf(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %38)
  %40 = load i32, i32* @SVN_VA_NULL, align 4
  %41 = call i8* @apr_pstrcat(i32* %30, i8* %31, i32 %39, i32 %40)
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %29
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %25

45:                                               ; preds = %25
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8*, i8** %7, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ugt i64 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i64 4, i64* %12, align 8
  br label %56

56:                                               ; preds = %55, %45
  store i64 0, i64* %10, align 8
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @apr_psprintf(i32* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %68)
  %70 = load i32, i32* @SVN_VA_NULL, align 4
  %71 = call i8* @apr_pstrcat(i32* %62, i8* %63, i32 %69, i32 %70)
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %57

75:                                               ; preds = %57
  %76 = load i32, i32* @APR_EINVAL, align 4
  %77 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i32* @svn_error_createf(i32 %76, i32* null, i32 %77, i8* %78, i8* %79)
  ret i32* %80
}

declare dso_local i8* @svn_utf__last_valid(i8*, i64) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i32, i32) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i8 zeroext) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
