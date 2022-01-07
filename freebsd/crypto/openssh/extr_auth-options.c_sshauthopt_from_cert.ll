; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_sshauthopt_from_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_sshauthopt_from_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshauthopt = type { i32 }
%struct.sshkey = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@SSH2_CERT_TYPE_USER = common dso_local global i64 0, align 8
@OPTIONS_CRITICAL = common dso_local global i32 0, align 4
@OPTIONS_EXTENSIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sshauthopt* @sshauthopt_from_cert(%struct.sshkey* %0) #0 {
  %2 = alloca %struct.sshauthopt*, align 8
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.sshauthopt*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  %5 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %6 = icmp eq %struct.sshkey* %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %9 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @sshkey_type_is_cert(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %15 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %20 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SSH2_CERT_TYPE_USER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %13, %7, %1
  store %struct.sshauthopt* null, %struct.sshauthopt** %2, align 8
  br label %59

27:                                               ; preds = %18
  %28 = call %struct.sshauthopt* (...) @sshauthopt_new()
  store %struct.sshauthopt* %28, %struct.sshauthopt** %4, align 8
  %29 = icmp eq %struct.sshauthopt* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store %struct.sshauthopt* null, %struct.sshauthopt** %2, align 8
  br label %59

31:                                               ; preds = %27
  %32 = load %struct.sshauthopt*, %struct.sshauthopt** %4, align 8
  %33 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %34 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OPTIONS_CRITICAL, align 4
  %39 = call i32 @cert_option_list(%struct.sshauthopt* %32, i32 %37, i32 %38, i32 1)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.sshauthopt*, %struct.sshauthopt** %4, align 8
  %43 = call i32 @sshauthopt_free(%struct.sshauthopt* %42)
  store %struct.sshauthopt* null, %struct.sshauthopt** %2, align 8
  br label %59

44:                                               ; preds = %31
  %45 = load %struct.sshauthopt*, %struct.sshauthopt** %4, align 8
  %46 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %47 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @OPTIONS_EXTENSIONS, align 4
  %52 = call i32 @cert_option_list(%struct.sshauthopt* %45, i32 %50, i32 %51, i32 0)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.sshauthopt*, %struct.sshauthopt** %4, align 8
  %56 = call i32 @sshauthopt_free(%struct.sshauthopt* %55)
  store %struct.sshauthopt* null, %struct.sshauthopt** %2, align 8
  br label %59

57:                                               ; preds = %44
  %58 = load %struct.sshauthopt*, %struct.sshauthopt** %4, align 8
  store %struct.sshauthopt* %58, %struct.sshauthopt** %2, align 8
  br label %59

59:                                               ; preds = %57, %54, %41, %30, %26
  %60 = load %struct.sshauthopt*, %struct.sshauthopt** %2, align 8
  ret %struct.sshauthopt* %60
}

declare dso_local i32 @sshkey_type_is_cert(i32) #1

declare dso_local %struct.sshauthopt* @sshauthopt_new(...) #1

declare dso_local i32 @cert_option_list(%struct.sshauthopt*, i32, i32, i32) #1

declare dso_local i32 @sshauthopt_free(%struct.sshauthopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
