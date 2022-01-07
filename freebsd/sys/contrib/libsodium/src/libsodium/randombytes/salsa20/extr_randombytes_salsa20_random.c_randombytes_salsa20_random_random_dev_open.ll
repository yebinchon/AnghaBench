; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/randombytes/salsa20/extr_randombytes_salsa20_random.c_randombytes_salsa20_random_random_dev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/randombytes/salsa20/extr_randombytes_salsa20_random.c_randombytes_salsa20_random_random_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@randombytes_salsa20_random_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @randombytes_salsa20_random_random_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randombytes_salsa20_random_random_dev_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_salsa20_random_random_dev_open.devices, i64 0, i64 0), i8*** %3, align 8
  %5 = call i64 (...) @randombytes_block_on_dev_random()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %50

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %44, %8
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @fstat(i32 %17, %struct.stat* %2)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISNAM(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @S_ISCHR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %1, align 4
  br label %50

32:                                               ; preds = %25, %16
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @close(i32 %33)
  br label %41

35:                                               ; preds = %9
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EINTR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i8**, i8*** %3, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %3, align 8
  br label %44

44:                                               ; preds = %41, %39
  %45 = load i8**, i8*** %3, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %9, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @EIO, align 8
  store i64 %49, i64* @errno, align 8
  store i32 -1, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %30, %7
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @randombytes_block_on_dev_random(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISNAM(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
