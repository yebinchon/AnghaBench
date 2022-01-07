; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_sigalg_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_sigalg_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keytype = type { i32, i8*, i8*, i32, i32 }

@keytypes = common dso_local global %struct.keytype* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sshkey_sigalg_by_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.keytype*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.keytype*, %struct.keytype** @keytypes, align 8
  store %struct.keytype* %5, %struct.keytype** %4, align 8
  br label %6

6:                                                ; preds = %46, %1
  %7 = load %struct.keytype*, %struct.keytype** %4, align 8
  %8 = getelementptr inbounds %struct.keytype, %struct.keytype* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %49

11:                                               ; preds = %6
  %12 = load %struct.keytype*, %struct.keytype** %4, align 8
  %13 = getelementptr inbounds %struct.keytype, %struct.keytype* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i8* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %46

19:                                               ; preds = %11
  %20 = load %struct.keytype*, %struct.keytype** %4, align 8
  %21 = getelementptr inbounds %struct.keytype, %struct.keytype* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.keytype*, %struct.keytype** %4, align 8
  %26 = getelementptr inbounds %struct.keytype, %struct.keytype* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %2, align 8
  br label %50

28:                                               ; preds = %19
  %29 = load %struct.keytype*, %struct.keytype** %4, align 8
  %30 = getelementptr inbounds %struct.keytype, %struct.keytype* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.keytype*, %struct.keytype** %4, align 8
  %35 = getelementptr inbounds %struct.keytype, %struct.keytype* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %50

37:                                               ; preds = %28
  %38 = load %struct.keytype*, %struct.keytype** %4, align 8
  %39 = getelementptr inbounds %struct.keytype, %struct.keytype* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sshkey_type_plain(i32 %40)
  %42 = load %struct.keytype*, %struct.keytype** %4, align 8
  %43 = getelementptr inbounds %struct.keytype, %struct.keytype* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @sshkey_ssh_name_from_type_nid(i32 %41, i32 %44)
  store i8* %45, i8** %2, align 8
  br label %50

46:                                               ; preds = %18
  %47 = load %struct.keytype*, %struct.keytype** %4, align 8
  %48 = getelementptr inbounds %struct.keytype, %struct.keytype* %47, i32 1
  store %struct.keytype* %48, %struct.keytype** %4, align 8
  br label %6

49:                                               ; preds = %6
  store i8* null, i8** %2, align 8
  br label %50

50:                                               ; preds = %49, %37, %33, %24
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sshkey_ssh_name_from_type_nid(i32, i32) #1

declare dso_local i32 @sshkey_type_plain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
