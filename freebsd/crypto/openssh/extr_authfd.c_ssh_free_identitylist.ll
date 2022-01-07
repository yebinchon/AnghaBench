; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_free_identitylist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_ssh_free_identitylist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_identitylist = type { i64, %struct.ssh_identitylist**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_free_identitylist(%struct.ssh_identitylist* %0) #0 {
  %2 = alloca %struct.ssh_identitylist*, align 8
  %3 = alloca i64, align 8
  store %struct.ssh_identitylist* %0, %struct.ssh_identitylist** %2, align 8
  %4 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %2, align 8
  %5 = icmp eq %struct.ssh_identitylist* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %41, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %2, align 8
  %11 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %2, align 8
  %16 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %2, align 8
  %21 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sshkey_free(i32 %25)
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %2, align 8
  %29 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %28, i32 0, i32 1
  %30 = load %struct.ssh_identitylist**, %struct.ssh_identitylist*** %29, align 8
  %31 = icmp ne %struct.ssh_identitylist** %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %2, align 8
  %34 = getelementptr inbounds %struct.ssh_identitylist, %struct.ssh_identitylist* %33, i32 0, i32 1
  %35 = load %struct.ssh_identitylist**, %struct.ssh_identitylist*** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.ssh_identitylist*, %struct.ssh_identitylist** %35, i64 %36
  %38 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %37, align 8
  %39 = call i32 @free(%struct.ssh_identitylist* %38)
  br label %40

40:                                               ; preds = %32, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %8

44:                                               ; preds = %8
  %45 = load %struct.ssh_identitylist*, %struct.ssh_identitylist** %2, align 8
  %46 = call i32 @free(%struct.ssh_identitylist* %45)
  br label %47

47:                                               ; preds = %44, %6
  ret void
}

declare dso_local i32 @sshkey_free(i32) #1

declare dso_local i32 @free(%struct.ssh_identitylist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
