; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_lfs.c_cleaner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_lfs.c_cleaner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lfstestargs = type { i8*, i8, i8*, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/r%s\00", align 1
@RUMP_ETFS_CHR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"megamaid\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@optind = common dso_local global i32 0, align 4
@opterr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cleaner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cleaner(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lfstestargs*, align 8
  %6 = alloca [7 x i8*], align 16
  %7 = alloca [64 x i8], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.lfstestargs*
  store %struct.lfstestargs* %13, %struct.lfstestargs** %5, align 8
  %14 = load %struct.lfstestargs*, %struct.lfstestargs** %5, align 8
  %15 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 5
  %18 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.lfstestargs*, %struct.lfstestargs** %5, align 8
  %20 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RUMP_ETFS_CHR, align 4
  %23 = call i32 @rump_pub_etfs_register(i8* %11, i32 %21, i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %25 = load %struct.lfstestargs*, %struct.lfstestargs** %5, align 8
  %26 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %25, i32 0, i32 1
  %27 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 16
  %29 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %30, align 16
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 3
  store i8* %31, i8** %32, align 8
  %33 = load %struct.lfstestargs*, %struct.lfstestargs** %5, align 8
  %34 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 4
  store i8* %35, i8** %36, align 16
  %37 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 5
  store i8* null, i8** %37, align 8
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @opterr, align 4
  %38 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %39 = call i32 @__UNCONST(i8** %38)
  %40 = call i32 @lfs_cleaner_main(i32 5, i32 %39)
  %41 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %41)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @rump_pub_etfs_register(i8*, i32, i32) #2

declare dso_local i32 @lfs_cleaner_main(i32, i32) #2

declare dso_local i32 @__UNCONST(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
