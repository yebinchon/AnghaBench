; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s-cert.pub\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@KEY_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_load_cert(i8* %0, %struct.sshkey** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sshkey**, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sshkey** %1, %struct.sshkey*** %5, align 8
  store %struct.sshkey* null, %struct.sshkey** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  %11 = icmp ne %struct.sshkey** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  store %struct.sshkey* null, %struct.sshkey** %13, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %14
  %21 = load i32, i32* @KEY_UNSPEC, align 4
  %22 = call %struct.sshkey* @sshkey_new(i32 %21)
  store %struct.sshkey* %22, %struct.sshkey** %6, align 8
  %23 = icmp eq %struct.sshkey* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %38

25:                                               ; preds = %20
  %26 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @sshkey_try_load_public(%struct.sshkey* %26, i8* %27, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %25
  %32 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  %33 = icmp ne %struct.sshkey** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %36 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  store %struct.sshkey* %35, %struct.sshkey** %36, align 8
  store %struct.sshkey* null, %struct.sshkey** %6, align 8
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %30, %24
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %42 = call i32 @sshkey_free(%struct.sshkey* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i32 @sshkey_try_load_public(%struct.sshkey*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
