; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trail = type { i64, i32, i32 }

@TRAIL_MAGIC = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to remove \22%s/%s\22\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Trail file \22%s/%s\22 removed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trail_unlink(%struct.trail* %0, i8* %1) #0 {
  %3 = alloca %struct.trail*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.trail* %0, %struct.trail** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.trail*, %struct.trail** %3, align 8
  %7 = getelementptr inbounds %struct.trail, %struct.trail* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TRAIL_MAGIC, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @PJDLOG_ASSERT(i32 %22)
  %24 = load %struct.trail*, %struct.trail** %3, align 8
  %25 = getelementptr inbounds %struct.trail, %struct.trail* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dirfd(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @PJDLOG_ASSERT(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @unlinkat(i32 %32, i8* %33, i32 0)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load %struct.trail*, %struct.trail** %3, align 8
  %39 = getelementptr inbounds %struct.trail, %struct.trail* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @pjdlog_errno(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41)
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.trail*, %struct.trail** %3, align 8
  %45 = getelementptr inbounds %struct.trail, %struct.trail* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %43, %36
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @dirfd(i32) #1

declare dso_local i32 @unlinkat(i32, i8*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i32, i8*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
