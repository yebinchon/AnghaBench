; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_keyprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_keyprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.sshkey = type { i32 }

@get_cert = common dso_local global i64 0, align 8
@hash_hosts = common dso_local global i32 0, align 4
@ssh_port = common dso_local global i64 0, align 8
@SSH_DEFAULT_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.sshkey*)* @keyprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyprint(%struct.TYPE_3__* %0, %struct.sshkey* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.sshkey* %1, %struct.sshkey** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i8* [ %15, %12 ], [ %19, %16 ]
  store i8* %21, i8** %5, align 8
  %22 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %23 = icmp eq %struct.sshkey* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %52

25:                                               ; preds = %20
  %26 = load i64, i64* @get_cert, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @hash_hosts, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @ssh_port, align 8
  %33 = load i64, i64* @SSH_DEFAULT_PORT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %25
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %38 = call i32 @keyprint_one(i8* %36, %struct.sshkey* %37)
  br label %52

39:                                               ; preds = %31, %28
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @xstrdup(i8* %40)
  store i8* %41, i8** %5, align 8
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %45, %39
  %43 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %48 = call i32 @keyprint_one(i8* %46, %struct.sshkey* %47)
  br label %42

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %49, %35, %24
  ret void
}

declare dso_local i32 @keyprint_one(i8*, %struct.sshkey*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
