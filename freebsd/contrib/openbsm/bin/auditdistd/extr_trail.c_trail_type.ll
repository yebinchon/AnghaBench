; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unable to stat \22%s\22\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @trail_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trail_type(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @PJDLOG_ASSERT(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @dirfd(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %21 = call i32 @fstatat(i32 %18, i8* %19, %struct.stat* %6, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @pjdlog_errno(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IFTODT(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @dirfd(i32*) #1

declare dso_local i32 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i8*) #1

declare dso_local i32 @IFTODT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
