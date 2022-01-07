; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_msdosfs/extr_mount_msdosfs.c_set_charset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_msdosfs/extr_mount_msdosfs.c_set_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"msdosfs_iconv\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot find or load \22msdosfs_iconv\22 kernel module\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cs_win\00", align 1
@ENCODING_UNICODE = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"cs_dos\00", align 1
@KICONV_FROM_UPPER = common dso_local global i32 0, align 4
@KICONV_LOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_charset(%struct.iovec** %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iovec**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.iovec** %0, %struct.iovec*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i64 @modfind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = call i64 @kldload(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i64 @modfind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13
  %20 = call i32 @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %72

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %4
  %23 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** @ENCODING_UNICODE, align 8
  %26 = call i32 @build_iovec_argf(%struct.iovec** %23, i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** @ENCODING_UNICODE, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kiconv_add_xlat16_cspairs(i8* %27, i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EEXIST, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %72

37:                                               ; preds = %32, %22
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @kiconv_add_xlat16_cspairs(i8* %41, i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EEXIST, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %72

51:                                               ; preds = %46, %40
  br label %71

52:                                               ; preds = %37
  %53 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @build_iovec_argf(%struct.iovec** %53, i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* @KICONV_FROM_UPPER, align 4
  %60 = load i32, i32* @KICONV_LOWER, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @kiconv_add_xlat16_cspair(i8* %57, i8* %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EEXIST, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -1, i32* %5, align 4
  br label %72

70:                                               ; preds = %65, %52
  br label %71

71:                                               ; preds = %70, %51
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %69, %50, %36, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @modfind(i8*) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @build_iovec_argf(%struct.iovec**, i32*, i8*, i8*) #1

declare dso_local i32 @kiconv_add_xlat16_cspairs(i8*, i8*) #1

declare dso_local i32 @kiconv_add_xlat16_cspair(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
