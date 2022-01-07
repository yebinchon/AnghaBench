; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_update_card.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-add.c_update_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Enter passphrase for PKCS#11: \00", align 1
@RP_ALLOW_STDIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lifetime = common dso_local global i32 0, align 4
@confirm = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Card %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not %s card \22%s\22: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @update_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_card(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @RP_ALLOW_STDIN, align 4
  %15 = call i8* @read_passphrase(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %56

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %25 ], [ %27, %26 ]
  %30 = load i32, i32* @lifetime, align 4
  %31 = load i32, i32* @confirm, align 4
  %32 = call i32 @ssh_update_card(i32 %20, i32 %21, i8* %22, i8* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40)
  store i32 0, i32* %10, align 4
  br label %52

42:                                               ; preds = %28
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @ssh_err(i32 %49)
  %51 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %47, i8* %48, i8* %50)
  store i32 -1, i32* %10, align 4
  br label %52

52:                                               ; preds = %42, %34
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @read_passphrase(i8*, i32) #1

declare dso_local i32 @ssh_update_card(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
