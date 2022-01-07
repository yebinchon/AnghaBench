; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_udf/extr_mount_udf.c_set_charset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_udf/extr_mount_udf.c_set_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"udf_iconv\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot find or load \22udf_iconv\22 kernel module\00", align 1
@ICONV_CSNMAXLEN = common dso_local global i32 0, align 4
@ENCODING_UNICODE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_charset(i8** %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i64 @modfind(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = call i64 @kldload(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call i64 @modfind(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %11
  %18 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %52

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %22 = call i8* @malloc(i32 %21)
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  %24 = icmp eq i8* %22, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %52

26:                                               ; preds = %20
  %27 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %28 = call i8* @malloc(i32 %27)
  %29 = load i8**, i8*** %6, align 8
  store i8* %28, i8** %29, align 8
  %30 = icmp eq i8* %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %52

32:                                               ; preds = %26
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** @ENCODING_UNICODE, align 8
  %36 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %37 = call i32 @strncpy(i8* %34, i8* %35, i32 %36)
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %42 = call i32 @strncpy(i8* %39, i8* %40, i32 %41)
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @kiconv_add_xlat16_cspairs(i8* %44, i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %52

51:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %31, %25, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @modfind(i8*) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @kiconv_add_xlat16_cspairs(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
