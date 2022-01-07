; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_t-log.c_testWriteInCustomLogfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_t-log.c_testWriteInCustomLogfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.testWriteInCustomLogfile.testString = private unnamed_addr constant [256 x i8] c"12345 ABC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.testWriteInCustomLogfile.testName = private unnamed_addr constant [256 x i8] c"TEST_PROGNAME3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [17 x i8] c"testLogfile2.log\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testWriteInCustomLogfile() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = bitcast [256 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([256 x i8], [256 x i8]* @__const.testWriteInCustomLogfile.testString, i32 0, i32 0), i64 256, i1 false)
  %7 = bitcast [256 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([256 x i8], [256 x i8]* @__const.testWriteInCustomLogfile.testName, i32 0, i32 0), i64 256, i1 false)
  %8 = call i32 @remove(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %10 = call i32 @sntp_init_logging(i8* %9)
  %11 = call i32 @open_logfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %14 = call i32 @msyslog(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @TEST_ASSERT_TRUE(i32 %18)
  br label %20

20:                                               ; preds = %25, %0
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @fgets(i8* %21, i32 256, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %27 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %20

28:                                               ; preds = %20
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = call i8* @strstr(i8* %29, i8* %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @TEST_ASSERT_TRUE(i32 %34)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %38 = call i8* @strstr(i8* %36, i8* %37)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @TEST_ASSERT_TRUE(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @fclose(i32* %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @sntp_init_logging(i8*) #2

declare dso_local i32 @open_logfile(i8*) #2

declare dso_local i32 @msyslog(i32, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
