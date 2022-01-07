; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@masterpasswd = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@lockfd = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"the password db file is busy\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not lock the passwd file: \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"fstat() failed: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_lock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 8
  %3 = load i8*, i8** @masterpasswd, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %44

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %39, %8
  %10 = load i8*, i8** @masterpasswd, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_NONBLOCK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @flopen(i8* %10, i32 %15, i32 0)
  store i32 %16, i32* @lockfd, align 4
  %17 = load i32, i32* @lockfd, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %9
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EWOULDBLOCK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %9
  %29 = load i32, i32* @lockfd, align 4
  %30 = call i32 @fstat(i32 %29, %struct.stat* %2)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @lockfd, align 4
  %41 = call i32 @close(i32 %40)
  store i32 -1, i32* @lockfd, align 4
  br label %9

42:                                               ; preds = %38
  %43 = load i32, i32* @lockfd, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %7
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @flopen(i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
