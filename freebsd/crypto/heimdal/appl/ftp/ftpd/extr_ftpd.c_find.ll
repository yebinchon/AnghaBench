; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"/bin/locate -d %s -- %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/etc/locatedb\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/bin/locate\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Output from find.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %7 = call i8* @ftp_rooted(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @snprintf(i8* %6, i32 1024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8)
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %11 = call i32* @ftpd_popen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 1)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @perror_reply(i32 550, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = call i32 @lreply(i32 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %38, %16
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @fgets(i8* %19, i32 1024, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %25 = call i32 @strlen(i8* %24)
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %34 = call i32 @strlen(i8* %33)
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %32, %23
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %40 = call i32 @nreply(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %18

41:                                               ; preds = %18
  %42 = call i32 @reply(i32 200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @ftpd_pclose(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @ftp_rooted(i8*) #1

declare dso_local i32* @ftpd_popen(i8*, i8*, i32, i32) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @lreply(i32, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nreply(i8*, i8*) #1

declare dso_local i32 @reply(i32, i8*) #1

declare dso_local i32 @ftpd_pclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
