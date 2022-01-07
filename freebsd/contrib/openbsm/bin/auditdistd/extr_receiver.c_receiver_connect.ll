; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32* }
%struct.stat = type { i8, i32 }

@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EX_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to stat \22%s/%s\22\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"File \22%s/%s\22 is not a regular file.\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unable to send size of the most recent trail file\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Unable to send name of the most recent trail file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @receiver_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receiver_connect() #0 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.stat, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @PJDLOG_ASSERT(i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @trail_last(i32* %11, i8* %14, i32 8)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  store i8 0, i8* %1, align 1
  br label %60

24:                                               ; preds = %0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %32 = call i32 @fstatat(i32 %27, i8* %30, %struct.stat* %2, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load i32, i32* @EX_CONFIG, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @pjdlog_exit(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %41)
  br label %43

43:                                               ; preds = %34, %24
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @S_ISREG(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EX_CONFIG, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @pjdlog_exitx(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52, i8* %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %59 = load i8, i8* %58, align 4
  store i8 %59, i8* %1, align 1
  br label %60

60:                                               ; preds = %57, %23
  %61 = load i8, i8* %1, align 1
  %62 = call signext i8 @htole64(i8 signext %61)
  store i8 %62, i8* %1, align 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @proto_send(i32 %65, i8* %1, i32 1)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EX_TEMPFAIL, align 4
  %70 = call i32 (i32, i8*, ...) @pjdlog_exit(i32 %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %60
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @proto_send(i32 %74, i8* %77, i32 8)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @EX_TEMPFAIL, align 4
  %82 = call i32 (i32, i8*, ...) @pjdlog_exit(i32 %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %71
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @trail_last(i32*, i8*, i32) #1

declare dso_local i32 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i32 @pjdlog_exit(i32, i8*, ...) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i32, i8*) #1

declare dso_local signext i8 @htole64(i8 signext) #1

declare dso_local i32 @proto_send(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
