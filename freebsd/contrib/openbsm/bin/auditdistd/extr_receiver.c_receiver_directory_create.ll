; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_directory_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_directory_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.passwd = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@ADIST_USER = common dso_local global i32 0, align 4
@EX_NOUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to find info about '%s' user\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"User '%s' doesn't exist.\00", align 1
@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@EX_OSFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to create directory \22%s\22\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to change owner of the directory \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @receiver_directory_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receiver_directory_create() #0 {
  %1 = alloca %struct.passwd*, align 8
  store i64 0, i64* @errno, align 8
  %2 = load i32, i32* @ADIST_USER, align 4
  %3 = call %struct.passwd* @getpwnam(i32 %2)
  store %struct.passwd* %3, %struct.passwd** %1, align 8
  %4 = load %struct.passwd*, %struct.passwd** %1, align 8
  %5 = icmp eq %struct.passwd* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = load i64, i64* @errno, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* @EX_NOUSER, align 4
  %11 = load i32, i32* @ADIST_USER, align 4
  %12 = call i32 @pjdlog_exit(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %17

13:                                               ; preds = %6
  %14 = load i32, i32* @EX_NOUSER, align 4
  %15 = load i32, i32* @ADIST_USER, align 4
  %16 = call i32 @pjdlog_exitx(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  br label %18

18:                                               ; preds = %17, %0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mkdir(i32 %21, i32 448)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @EX_OSFILE, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pjdlog_exit(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.passwd*, %struct.passwd** %1, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.passwd*, %struct.passwd** %1, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @chown(i32 %33, i32 %36, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pjdlog_errno(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rmdir(i32 %50)
  %52 = load i32, i32* @EX_OSFILE, align 4
  %53 = call i32 @exit(i32 %52) #3
  unreachable

54:                                               ; preds = %30
  ret void
}

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @pjdlog_exit(i32, i8*, i32) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i32) #1

declare dso_local i32 @mkdir(i32, i32) #1

declare dso_local i32 @chown(i32, i32, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i32) #1

declare dso_local i32 @rmdir(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
