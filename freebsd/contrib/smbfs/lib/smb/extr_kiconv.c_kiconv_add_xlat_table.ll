; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_kiconv.c_kiconv_add_xlat_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_kiconv.c_kiconv_add_xlat_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_add_in = type { i32, i32*, i32, i32, i32, i32 }
%struct.iconv_add_out = type { i32 }

@ICONV_CSNMAXLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ICONV_ADD_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xlat\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"kern.iconv.add\00", align 1
@errno = common dso_local global i32 0, align 4
@eff_uid = common dso_local global i32 0, align 4
@real_uid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kiconv_add_xlat_table(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iconv_add_in, align 8
  %9 = alloca %struct.iconv_add_out, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = load i64, i64* @ICONV_CSNMAXLEN, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = load i64, i64* @ICONV_CSNMAXLEN, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %15
  %23 = load i32, i32* @ICONV_ADD_VER, align 4
  %24 = getelementptr inbounds %struct.iconv_add_in, %struct.iconv_add_in* %8, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.iconv_add_in, %struct.iconv_add_in* %8, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.iconv_add_in, %struct.iconv_add_in* %8, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcpy(i32 %29, i8* %30)
  %32 = getelementptr inbounds %struct.iconv_add_in, %struct.iconv_add_in* %8, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcpy(i32 %33, i8* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds %struct.iconv_add_in, %struct.iconv_add_in* %8, i32 0, i32 1
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.iconv_add_in, %struct.iconv_add_in* %8, i32 0, i32 0
  store i32 256, i32* %38, align 8
  store i64 4, i64* %10, align 8
  %39 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.iconv_add_out* %9, i64* %10, %struct.iconv_add_in* %8, i32 32)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, %struct.iconv_add_out*, i64*, %struct.iconv_add_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
