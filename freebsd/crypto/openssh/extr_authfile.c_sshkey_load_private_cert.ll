; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_private_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@SSH_ERR_KEY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@SSH_ERR_KEY_CERT_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_load_private_cert(i32 %0, i8* %1, i8* %2, %struct.sshkey** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sshkey**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sshkey*, align 8
  %13 = alloca %struct.sshkey*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.sshkey** %3, %struct.sshkey*** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.sshkey* null, %struct.sshkey** %12, align 8
  store %struct.sshkey* null, %struct.sshkey** %13, align 8
  %15 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  %16 = icmp ne %struct.sshkey** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  store %struct.sshkey* null, %struct.sshkey** %18, align 8
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %22 [
    i32 131, label %21
    i32 128, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %19, %19, %19
  br label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @SSH_ERR_KEY_TYPE_UNKNOWN, align 4
  store i32 %23, i32* %6, align 4
  br label %66

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @sshkey_load_private_type(i32 %25, i8* %26, i8* %27, %struct.sshkey** %12, i32* null, i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @sshkey_load_cert(i8* %32, %struct.sshkey** %13)
  store i32 %33, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %24
  br label %60

36:                                               ; preds = %31
  %37 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %38 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %39 = call i64 @sshkey_equal_public(%struct.sshkey* %37, %struct.sshkey* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @SSH_ERR_KEY_CERT_MISMATCH, align 4
  store i32 %42, i32* %14, align 4
  br label %60

43:                                               ; preds = %36
  %44 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %45 = call i32 @sshkey_to_certified(%struct.sshkey* %44)
  store i32 %45, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %49 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %50 = call i32 @sshkey_cert_copy(%struct.sshkey* %48, %struct.sshkey* %49)
  store i32 %50, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %43
  br label %60

53:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  %54 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  %55 = icmp ne %struct.sshkey** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %58 = load %struct.sshkey**, %struct.sshkey*** %10, align 8
  store %struct.sshkey* %57, %struct.sshkey** %58, align 8
  store %struct.sshkey* null, %struct.sshkey** %12, align 8
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %52, %41, %35
  %61 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %62 = call i32 @sshkey_free(%struct.sshkey* %61)
  %63 = load %struct.sshkey*, %struct.sshkey** %13, align 8
  %64 = call i32 @sshkey_free(%struct.sshkey* %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %22
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @sshkey_load_private_type(i32, i8*, i8*, %struct.sshkey**, i32*, i32*) #1

declare dso_local i32 @sshkey_load_cert(i8*, %struct.sshkey**) #1

declare dso_local i64 @sshkey_equal_public(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @sshkey_to_certified(%struct.sshkey*) #1

declare dso_local i32 @sshkey_cert_copy(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
