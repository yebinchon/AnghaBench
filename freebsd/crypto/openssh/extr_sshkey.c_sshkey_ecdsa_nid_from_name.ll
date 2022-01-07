; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ecdsa_nid_from_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ecdsa_nid_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keytype = type { i32, i32, i32* }

@keytypes = common dso_local global %struct.keytype* null, align 8
@KEY_ECDSA = common dso_local global i32 0, align 4
@KEY_ECDSA_CERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_ecdsa_nid_from_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.keytype*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.keytype*, %struct.keytype** @keytypes, align 8
  store %struct.keytype* %5, %struct.keytype** %4, align 8
  br label %6

6:                                                ; preds = %41, %1
  %7 = load %struct.keytype*, %struct.keytype** %4, align 8
  %8 = getelementptr inbounds %struct.keytype, %struct.keytype* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %44

11:                                               ; preds = %6
  %12 = load %struct.keytype*, %struct.keytype** %4, align 8
  %13 = getelementptr inbounds %struct.keytype, %struct.keytype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @KEY_ECDSA, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.keytype*, %struct.keytype** %4, align 8
  %19 = getelementptr inbounds %struct.keytype, %struct.keytype* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @KEY_ECDSA_CERT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %41

24:                                               ; preds = %17, %11
  %25 = load %struct.keytype*, %struct.keytype** %4, align 8
  %26 = getelementptr inbounds %struct.keytype, %struct.keytype* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.keytype*, %struct.keytype** %4, align 8
  %32 = getelementptr inbounds %struct.keytype, %struct.keytype* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @strcmp(i8* %30, i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.keytype*, %struct.keytype** %4, align 8
  %38 = getelementptr inbounds %struct.keytype, %struct.keytype* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %29, %24
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.keytype*, %struct.keytype** %4, align 8
  %43 = getelementptr inbounds %struct.keytype, %struct.keytype* %42, i32 1
  store %struct.keytype* %43, %struct.keytype** %4, align 8
  br label %6

44:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
