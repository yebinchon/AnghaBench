; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_tty_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_tty_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64 }

@session_tty_list.buf = internal global [1024 x i8] zeroinitializer, align 16
@sessions_nalloc = common dso_local global i32 0, align 4
@sessions = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"notty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @session_tty_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @session_tty_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @session_tty_list.buf, i64 0, i64 0), align 16
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %59, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @sessions_nalloc, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %62

8:                                                ; preds = %4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sessions, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 47)
  store i8* %32, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  br label %42

39:                                               ; preds = %28
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i8* [ %38, %35 ], [ %41, %39 ]
  store i8* %43, i8** %2, align 8
  br label %49

44:                                               ; preds = %22
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 5
  store i8* %48, i8** %2, align 8
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @session_tty_list.buf, i64 0, i64 0), align 16
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @session_tty_list.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1024)
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @strlcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @session_tty_list.buf, i64 0, i64 0), i8* %56, i32 1024)
  br label %58

58:                                               ; preds = %55, %17, %8
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %4

62:                                               ; preds = %4
  %63 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @session_tty_list.buf, i64 0, i64 0), align 16
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @strlcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @session_tty_list.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1024)
  br label %68

68:                                               ; preds = %66, %62
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @session_tty_list.buf, i64 0, i64 0)
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
