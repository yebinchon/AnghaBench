; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_setuid-allowed.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_setuid-allowed.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statvfs = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"statvfs for \22%s\22 failed: %s\0A\00", align 1
@ST_NOSUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.statvfs, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @usage()
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @statvfs(i8* %21, %struct.statvfs* %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENOSYS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %43

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* @errno, align 8
  %33 = call i8* @strerror(i64 %32)
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ST_NOSUID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %28
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @statvfs(i8*, %struct.statvfs*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
