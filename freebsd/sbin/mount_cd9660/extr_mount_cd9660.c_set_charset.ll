; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_cd9660/extr_mount_cd9660.c_set_charset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_cd9660/extr_mount_cd9660.c_set_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"cd9660_iconv\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot find or load \22cd9660_iconv\22 kernel module\00", align 1
@ICONV_CSNMAXLEN = common dso_local global i32 0, align 4
@ENCODING_UNICODE = common dso_local global i32 0, align 4
@KICONV_VENDOR_MICSFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cs_disk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cs_local\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iovec**, i32*, i8*)* @set_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_charset(%struct.iovec** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iovec**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.iovec** %0, %struct.iovec*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = call i64 @modfind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = call i64 @kldload(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i64 @modfind(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13
  %20 = call i32 @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %60

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %60

27:                                               ; preds = %22
  %28 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @free(i8* %32)
  store i32 -1, i32* %4, align 4
  br label %60

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @ENCODING_UNICODE, align 4
  %37 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %38 = call i32 @strncpy(i8* %35, i32 %36, i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @KICONV_VENDOR_MICSFT, align 4
  %42 = call i32 @kiconv_quirkcs(i8* %40, i32 %41)
  %43 = load i32, i32* @ICONV_CSNMAXLEN, align 4
  %44 = call i32 @strncpy(i8* %39, i32 %42, i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @kiconv_add_xlat16_cspairs(i8* %45, i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %60

51:                                               ; preds = %34
  %52 = load %struct.iovec**, %struct.iovec*** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @build_iovec(%struct.iovec** %52, i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %54, i64 -1)
  %56 = load %struct.iovec**, %struct.iovec*** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @build_iovec(%struct.iovec** %56, i32* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %58, i64 -1)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %50, %31, %26, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @modfind(i8*) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @kiconv_quirkcs(i8*, i32) #1

declare dso_local i32 @kiconv_add_xlat16_cspairs(i8*, i8*) #1

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
