; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_lock_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_lock_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Enter lock password: \00", align 1
@RP_ALLOW_STDIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Again: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Passwords do not match.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Agent %slocked.\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to %slock agent: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lock_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_agent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %12 = call i32 @strlcpy(i8* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 100)
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %14 = load i32, i32* @RP_ALLOW_STDIN, align 4
  %15 = call i8* @read_passphrase(i8* %13, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %20 = call i32 @strlcpy(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 100)
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %22 = load i32, i32* @RP_ALLOW_STDIN, align 4
  %23 = call i8* @read_passphrase(i8* %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %18
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i32 @explicit_bzero(i8* %32, i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @ssh_lock_agent(i32 %42, i32 %43, i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  store i32 0, i32* %10, align 4
  br label %63

54:                                               ; preds = %41
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @ssh_err(i32 %60)
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %59, i8* %61)
  br label %63

63:                                               ; preds = %54, %47
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @explicit_bzero(i8* %65, i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @read_passphrase(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ssh_lock_agent(i32, i32, i8*) #1

declare dso_local i8* @ssh_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
