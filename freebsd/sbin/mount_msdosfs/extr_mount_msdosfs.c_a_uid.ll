; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_msdosfs/extr_mount_msdosfs.c_a_uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_msdosfs/extr_mount_msdosfs.c_a_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@EX_NOUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown user id: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a_uid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.passwd* @getpwnam(i8* %6)
  store %struct.passwd* %7, %struct.passwd** %3, align 8
  %8 = icmp ne %struct.passwd* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.passwd*, %struct.passwd** %3, align 8
  %11 = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %28, %13
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isdigit(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %2, align 8
  br label %15

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @EX_NOUSER, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @errx(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42, %9
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
