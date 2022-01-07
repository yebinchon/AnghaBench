; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keytype = type { i32, i8* }
%struct.sshkey = type { i32 }

@keytypes = common dso_local global %struct.keytype* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sshkey_type(%struct.sshkey* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.keytype*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  %5 = load %struct.keytype*, %struct.keytype** @keytypes, align 8
  store %struct.keytype* %5, %struct.keytype** %4, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.keytype*, %struct.keytype** %4, align 8
  %8 = getelementptr inbounds %struct.keytype, %struct.keytype* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.keytype*, %struct.keytype** %4, align 8
  %13 = getelementptr inbounds %struct.keytype, %struct.keytype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %16 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.keytype*, %struct.keytype** %4, align 8
  %21 = getelementptr inbounds %struct.keytype, %struct.keytype* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %28

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.keytype*, %struct.keytype** %4, align 8
  %26 = getelementptr inbounds %struct.keytype, %struct.keytype* %25, i32 1
  store %struct.keytype* %26, %struct.keytype** %4, align 8
  br label %6

27:                                               ; preds = %6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
